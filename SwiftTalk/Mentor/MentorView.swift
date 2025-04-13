//
//  MentorView.swift
//  SwiftTalk
//
//  Created by Arin Juan Sari on 25/03/25.
//

import SwiftUI

struct MentorView: View {
    @State private var selectedMentorIndex: Int = 0
    
    init(mentor: MentorModel) {
        _selectedMentorIndex = State(initialValue: mentor.id)
        
        UIPageControl.appearance().currentPageIndicatorTintColor = UIColor(.primary)
        UIPageControl.appearance().pageIndicatorTintColor = UIColor(.secondary)
    }
    
    var body: some View {
        ZStack {
            // Blurry Top Background
            VStack(spacing: 0) {
                Rectangle()
                    .fill(.ultraThinMaterial)
                    .frame(height: 225) // Match the height of your top card
                    .ignoresSafeArea(edges: .top)
                Spacer()
            }
            
            TabView(selection: $selectedMentorIndex) {
                ForEach(mentorData, id: \.id) { item in
                    VStack(spacing: 0) {
                        VStack {
                            Image(item.image)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 130, height: 130)
                                .clipped()
                                .padding(.top, 20)
                                
                            Text(item.name)
                                .font(.title2)
                                .bold()
                                .frame(maxWidth: .infinity, alignment: .center)
                                .padding(.top, 5)
                            
                            Text(item.role)
                                .font(.headline)
                                .foregroundColor(.gray)
                                .frame(maxWidth: .infinity, alignment: .center)
                                .padding(.bottom, 30)
                        }
                        .frame(width:400, height: 250)
                        // Keep the blur on the card for visual consistency when not scrolled
                        .background(.ultraThinMaterial)
                        .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 2)
                        
                        ScrollView(.vertical) {
                            LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())]) {
                                ForEach(studenData.filter({
                                    $0.mentor == selectedMentorIndex
                                }), id: \.id) { student in
                                    NavigationLink(destination: FullBiodataView(student: student)
                                        .navigationBarBackButtonHidden(false)) {
                                            VStack {
                                                Image(student.image)
                                                    .resizable()
                                                    .aspectRatio(contentMode: .fill)
                                                    .frame(width: 110, height: 110)
                                                    .background(Color(.red).opacity(0.1))
                                                    .clipShape(.rect(cornerRadius: 20))
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
                        .padding(.bottom, 50)
                    }
                    .tag(item.id)
                }
                .listStyle(.plain)
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
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
                    ForEach(mentorData.indices, id: \.self) { index in
                        Circle()
                            .fill(index == selectedMentorIndex ? Color.black.opacity(0.8) : Color.gray.opacity(0.3))
                            .frame(width: 10, height: 70)
                            .onTapGesture {
                                selectedMentorIndex = index
                            }
                    }
                }
                .padding(20)
            }
        }
        .toolbar {
            ToolbarItem(placement: .principal) {
                Text("By Mentor")
                    .font(.headline)
            }
        }
        .ignoresSafeArea(edges: .all)
    }
}

#Preview {
    MentorView(mentor: MentorModel(id: 1, name: "Kak Ica", nickname: "Ica", role: "Design Mentor", image: "Basket"))
}
