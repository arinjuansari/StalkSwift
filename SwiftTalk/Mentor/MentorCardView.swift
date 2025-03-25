//
//  MentorCardView.swift
//  SwiftTalk
//
//  Created by Arin Juan Sari on 25/03/25.
//

import SwiftUI

struct MentorCardView: View {
    var mentor: MentorModel
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .frame(width: 130, height: 160)
            .foregroundStyle(Color("Background"))
            .overlay(alignment: .center) {
                VStack {
                    Image(mentor.image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 90, height: 90)
                        .padding(.top,7)
                        .padding(.bottom,3)
                    Text(mentor.nickname)
                        .bold()
                        .font(.headline)
                        .padding(.horizontal,7)
                    Text(mentor.role)
                        .font(.subheadline)
                        .foregroundColor(.black.opacity(0.8))
                        
                }
                .foregroundStyle(.black)
                .padding(.bottom,10)
            }
    }
}

#Preview {
    MentorCardView(mentor: MentorModel(id: 0, name: "John Cuthbert Sean The Brave", nickname: "John", role: "Design Mentor", image: "basket"))
}
