//
//  FullBiodata.swift
//  SwiftTalk
//
//  Created by Arin Juan Sari on 25/03/25.
//

import SwiftUI

struct FullBiodataView4: View {
    var student: StudentModel
    @State private var searchQuery = ""
        
    var body: some View {
        
        VStack(alignment: .leading, spacing: 0) {
            VStack {
                Image(student.image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 150, height: 150)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .clipped()
                    .padding(.trailing, 10)
                    .padding(.top, 10)
                
                VStack(alignment: .leading,spacing:7) {
                    Text(student.shortname)
                        .font(.title2)
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .center)
                        .padding(.top,5)
                    
                    Text(student.name)
                        .font(.headline)
                        .foregroundColor(.gray)
                        .frame(maxWidth: .infinity, alignment: .center)
                }
                .frame(minHeight: 50)
            }
            .padding(.bottom, 25)
            .padding(.horizontal, 25)
            .background(.ultraThinMaterial)
            .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 2)
            
            ProfileView4(student: student)
        }
        .toolbar {
            ToolbarItem(placement: .principal) {
                Text("Full Biodata")
                    .font(.headline)
            }
        }
    }
}



#Preview {
    FullBiodataView4(student: StudentModel(id: 0, name: "Aldrivo Rido", shortname: "Aldrivo", birthDay: "20 April", domicile: "Bandung", residence: "Bandung", role: "Design", image: "Andress Iniesta", mentor: 0, sig: [2, 2], hobby: [3, 4, 5]))
}
