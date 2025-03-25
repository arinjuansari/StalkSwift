//
//  MainView.swift
//  SwiftTalk
//
//  Created by Arin Juan Sari on 25/03/25.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color.white
                    .ignoresSafeArea(edges: .all)
                VStack(spacing: 20) {
                    HStack {
                        Image("logo")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100.0)
                        VStack{
                            Text("StalkSwift")
                                .font(.title)
                                .bold()
                                .foregroundColor(.primary)
                            
                            Text("Wanna make friends faster?\nGet to know them before saying hi!")
                                .font(.subheadline)
                                .foregroundColor(.primary)
                                .multilineTextAlignment(.center)
                        }
                    }
                    .padding(.top, 50)
                    SearchLearnerView()
                    Spacer()
                    ScrollSIGCardView()
                    Spacer()
                    ScrollMentorCardView()
                    Spacer()
                    
                }
            }
        }
    }
}

#Preview {
    MainView()
}

struct SearchLearnerView: View {
    var body: some View {
        VStack (alignment: .leading) {
            NavigationLink (destination: AllLearnersView()
                .navigationBarBackButtonHidden(true)) {
                    HStack (spacing: 10) {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                        Text("Search by Learner's Name")
                            .foregroundColor(.gray)
                            .font(.system(size:18))
                        
                        
                    }
                    .padding(10)
                    .frame(width: 350, height: 50, alignment: .leading)
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(20)
                    .padding(.top, 20)
                }
        }
    }
}

struct ScrollMentorCardView: View {
    var body: some View {
        VStack (alignment: .leading) {
            Text("Find By Personal Mentor")
                .font(.system(size: 20, weight: .bold))
                .padding(.leading, 32)
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(spacing: 0) {
                    ForEach(Array(mentorData.enumerated()), id: \.element.id) { index, item in
                        NavigationLink(destination: MentorView(mentor: item)) {
                            MentorCardView(mentor: item)
                                .padding(.leading, index == 0 ? 0 : 8)
                                .padding(.trailing, index == mentorData.count - 1 ? 0 : 8)
                        }
                        .navigationBarBackButtonHidden(false)
                        .scrollTargetLayout()
                    }
                }
                .padding(.horizontal, 20)
            }
            .scrollTargetBehavior(.viewAligned)
            .contentMargins(.horizontal, 16, for: .scrollContent)

        }
    }
}

struct ScrollSIGCardView: View {
    var body: some View {
        VStack (alignment: .leading) {
            Text("Find by Student Interest Group")
                .font(.system(size: 20, weight: .bold))
                .padding(.leading, 32)
            ScrollView(.horizontal, showsIndicators:false) {
                LazyHStack(spacing: 0) {
                    ForEach(Array(sigData.enumerated()), id: \.element.id) {
                        index, item in
                        NavigationLink (destination: SIGView(sig: item)){
                            SIGCardView(sig: item)
                                .padding(.leading, index == 0 ? 0 : 8)
                                .padding(.trailing, index == sigData.count - 1 ? 0 : 8)
                        }
                        .navigationBarBackButtonHidden(false)
                        .scrollTargetLayout()
                    }
                }
                .padding(.horizontal, 20)
            }
            .scrollTargetBehavior(.viewAligned)
            .contentMargins(.horizontal, 16, for: .scrollContent)
        }
    }
}
