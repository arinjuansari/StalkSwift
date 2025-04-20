//
//  CameraView.swift
//  SwiftTalk
//
//  Created by Arin Juan Sari on 18/04/25.
//

import SwiftUI
import RealityKit
import ARKit
import AVFoundation

struct CameraView: View {
    var body: some View {
        ARViewContainer().edgesIgnoringSafeArea(.all)
    }
}


/* UIViewRepresentable is a protocol in SwiftUI that allows you to wrap a UIKit view (like UITextField, UIScrollView, MKMapView, ARView, etc.) so you can use it inside SwiftUI. SwiftUI doesn’t natively support all UIKit components yet. So, if you want to use a UIKit view that’s not available or easily customizable in SwiftUI, you can bridge it with UIViewRepresentable. */
struct ARViewContainer: UIViewRepresentable {
    
    // Create and return the UIKit view
    func makeUIView(context: Context) -> ARView {
        let arView = ARView(frame: .zero)
        
        // Set up the AR session
        let config = ARImageTrackingConfiguration()
        if let referenceImages = ARReferenceImage.referenceImages(inGroupNamed: "PhotoImages", bundle: nil) {
            config.trackingImages = referenceImages
            config.maximumNumberOfTrackedImages = 1
            arView.session.run(config, options: [.resetTracking, .removeExistingAnchors])
        }
        
        // Set the delegate
        arView.session.delegate = context.coordinator
        
        // Pass the ARView to the delegate
        context.coordinator.arView = arView
        
        return arView
    }
    
    // Update the view with new data from SwiftUI
    func updateUIView(_ uiView: ARView, context: Context) {}
    
    /* Used when you need to manage communication between your SwiftUI view and UIKit view, especially when the UIKit view uses delegates, target-action, or data sources. SwiftUI is declarative and reactive, while UIKit often uses delegates and callbacks. The Coordinator serves as a bridge to handle those imperative UIKit patterns. */
    func makeCoordinator() -> ARSessionCoordinator {
        return ARSessionCoordinator()
    }
}

// The ARSessionDelegate protocol is used to receive updates about the AR session.
class ARSessionCoordinator: NSObject, ARSessionDelegate {
    weak var arView: ARView?
    
    // Called when new AR anchors (like a plane or 3D object or Detected ARImageAnchor) are added to the session. Called on a background thread, not the main thread
    func session(_ session: ARSession, didAdd anchors: [ARAnchor]) {
        // An ARAnchor defines a point of interest in the real world that ARKit can track, and it is used to attach virtual content in a specific position relative to the real world.
        for anchor in anchors {
            guard let imageAnchor = anchor as? ARImageAnchor else { continue }
            
            print("🎯 Image Detected: \(imageAnchor.referenceImage.name ?? "Unknown")")
            
            let imageSize = imageAnchor.referenceImage.physicalSize
            print("📐 Image size: \(imageSize.width)m x \(imageSize.height)m")
            
            // Load the video
            guard let url = Bundle.main.url(forResource: imageAnchor.referenceImage.name, withExtension: "mp4") else {
                print("❌ Failed to find video file.")
                return
            }
            let player = AVPlayer(url: url)
            player.actionAtItemEnd = .none
            player.play()
            
            // 🔁 Looping logic
            NotificationCenter.default.addObserver(
                forName: .AVPlayerItemDidPlayToEndTime,
                object: player.currentItem,
                queue: .main
            ) { _ in
                player.seek(to: .zero)
                player.play()
            }
            
            // Create the video material
            let videoMaterial = VideoMaterial(avPlayer: player)
            
            // Create the plane with video material
            let mesh = MeshResource.generatePlane(width: Float(imageSize.width), depth: Float(imageSize.height))
            let videoEntity = ModelEntity(mesh: mesh, materials: [videoMaterial])
            
            // Anchor it to the detected image
            let anchorEntity = AnchorEntity(anchor: imageAnchor)
            anchorEntity.addChild(videoEntity)
            
            // Update the ui on the main thread
            // In iOS, all UI updates must happen on the main thread. If you try to update the UI (like changing a label’s text, showing a view, etc.) from a background thread, your app could crash or behave weirdly.
            DispatchQueue.main.async {
                self.arView?.scene.anchors.append(anchorEntity)
            }
        }
    }
}
