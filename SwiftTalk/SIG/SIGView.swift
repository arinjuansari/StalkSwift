//
//  SIGView.swift
//  stalk swift
//
//  Created by Arin Juan Sari on 24/03/25.
//

import SwiftUI

struct SIGView: View {
    @State private var selectedSIGIndex: Int = 0
    @State private var searchQuery = ""
    
    init(sig: SIGModel) {
        _selectedSIGIndex = State(initialValue: sig.id)
        
        UIPageControl.appearance().currentPageIndicatorTintColor = UIColor(.primary)
        UIPageControl.appearance().pageIndicatorTintColor = UIColor(.secondary)
    }
    
    var body: some View {
        ZStack {
            TabView(selection: $selectedSIGIndex) {
                ForEach(sigData, id: \.id) { item in
                    VStack(spacing: 0) {
                        VStack {
                            Image(item.image)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 130, height: 130)
                                .clipped()
                            
                            Text(item.name)
                                .font(.title)
                                .bold()
                                .frame(maxWidth: .infinity, alignment: .center)
                                .padding(.top, 5)
                        }
                        .frame(width:400, height: 225)
                        .background(.ultraThinMaterial)
                        .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 2)
                        
                        HStack {
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(.gray)
                            TextField("Search SIG Members", text: $searchQuery)
                            
                        }
                        .padding(10)
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(10)
                        .padding(.horizontal)
                        .padding(.top, 8)
                        
                        ScrollView(.vertical) {
                            if filteredStudents().isEmpty && !searchQuery.isEmpty {
                                PageNotFound()
                                    .padding(.top, 10)
                                
                            } else {
                                LazyVGrid(columns: [
                                    GridItem(.flexible(), spacing: 0),
                                    GridItem(.flexible(), spacing: 0)
                                ], spacing: 0) {
                                    ForEach(filteredStudents(), id: \.id) { student in
                                        NavigationLink(destination: FullBiodataView(student: student)
                                            .navigationBarBackButtonHidden(false)) {
                                                VStack {
                                                    Image(student.image)
                                                        .resizable()
                                                        .aspectRatio(contentMode: .fill)
                                                        .frame(width: 110, height: 110)
                                                        .clipShape(.rect(cornerRadius: 30))
                                                        .cornerRadius(30)
                                                        .shadow(radius: 5)
                                                    Text(student.name)
                                                        .font(.headline)
                                                        .foregroundColor(.black)
                                                        .frame(height: 50)
                                                }
                                            }
                                            .padding()
                                    }
                                }
                            }
                        }
                        .padding(.bottom, 50)
                    }
                    .tag(item.id)
                }
                .listStyle(.plain)
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
            .navigationBarBackButtonHidden(false)
            .ignoresSafeArea(edges: .bottom)
            
            // Blurry Bottom Background
            VStack {
                Spacer()
                Rectangle()
                    .fill(.ultraThinMaterial)
                    .frame(height: 80)
                    .ignoresSafeArea(edges: .bottom)
            }
            .overlay(alignment: .bottom) {
                HStack(spacing: 10) {
                    ForEach(sigData.indices, id: \.self) { index in
                        Circle()
                            .fill(index == selectedSIGIndex ? Color.black.opacity(0.8) : Color.gray.opacity(0.3))
                            .frame(width: 10, height: 70)
                            .onTapGesture {
                                selectedSIGIndex = index
                            }
                    }
                }
                .padding(20)
            }
        }
        .background(.white)
        .ignoresSafeArea(edges: .all)
        .toolbar {
            ToolbarItem(placement: .principal) {
                Text("By SIG")
                    .font(.headline)
            }
        }
    }
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    func filteredStudents() -> [StudentModel] {
        return studenData.filter({
            if searchQuery != "" {
                $0.name.lowercased().contains(searchQuery.lowercased()) &&
                $0.sig.contains(selectedSIGIndex)
            } else {
                $0.sig.contains(selectedSIGIndex)
            }
        })
    }
}

#Preview {
    SIGView(sig: SIGModel(id: 1, name: "Test", image: "Basket", icon: "🏀"))
}
