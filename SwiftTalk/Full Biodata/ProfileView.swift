//
//  ProfileView.swift
//  StalkSwift
//
//  Created by Louis Oktovianus on 24/03/25.
//

import SwiftUI

struct ProfileView: View {
    var student: StudentModel
    
    @State private var showHobby = false
    @State private var showStudentGroup = false
    
    var body: some View {
        
        ScrollView {
            // Informasi Profil
            VStack(alignment: .leading, spacing: 15) {
                Text("Details")
                    .font(.title2)
                    .bold()
                
                profileRow(
                    icon: "lanyardcard.fill",
                    title: "Path",
                    value: student.role
                )
                profileRow(
                    icon: "person.crop.circle.badge.checkmark",
                    title: "Mentor",
                    value: mentorData[student.mentor].name
                )

                profileRow(
                    icon: "house.fill",
                    title: "Domicile",
                    value: student.domicile
                )
                profileRow(
                    icon: "mappin.and.ellipse",
                    title: "Hometown",
                    value: student.residence
                )
                
                profileRow(
                    icon: "calendar",
                    title: "Birthday",
                    value: student.birthDay
                )
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 25)
            .padding(.bottom)
            .padding(.top)
            
            VStack(alignment: .leading) {
                Text("Hobbies")
                    .font(.title2)
                    .bold()
                    .padding(.leading,25)
                
                let columns = [
                    GridItem(.adaptive(minimum:150),spacing:0)
                ]
                
                
                LazyVGrid(columns: columns, alignment:.leading,spacing: 0){
                    ForEach(hobbyData.filter({ student.hobby.contains($0.id) }), id: \.id) { hobby in
                        MiroTag(icon: hobby.icon, name: hobby.name)
                            .padding(.vertical, 4)
                            .padding(.horizontal,10)
                            .fixedSize()
                    }
                }
                .padding(.horizontal,25)
                .padding(.trailing,25)
                
            }
            
            
            
            // Student Interest Group Dropdown
            VStack(alignment: .leading) {
                Text("Student Interest Group")
                    .font(.title2)
                    .bold()
                    .padding(.leading,25)
                    .padding(.top)
                
                let columns = [
                    GridItem(.adaptive(minimum: 150),spacing:0)
                ]
                
                LazyVGrid(columns: columns, alignment:.leading,spacing: 0){
                    ForEach(sigData.filter({ student.sig.contains($0.id) }), id: \.id) { sig in
                        MiroTag(icon: sig.icon, name: sig.name)
                            .padding(.vertical, 4)
                            .padding(.horizontal,10)
                    }
                }
                .padding(.horizontal,25)
                .padding(.trailing,25)
            }
            
        }
    }
}


// Fungsi untuk buat row profil
func profileRow(icon: String, title: String, value: String) -> some View {
    HStack {
        Image(systemName: icon)
            .resizable()
            .scaledToFit()
            .frame(width: 20, height: 20)
        
        Text(title)
            .frame(width: 100, height: 20, alignment: .leading)
            .font(.body)
            .foregroundColor(.secondary)
        
        Text(value)
            .frame(alignment: .leading)
            .font(.body)
    }
    .padding(.leading, 10)
}

struct MiroTag: View {
    let icon: String
    let name: String
    
    var body: some View {
        HStack(spacing: 6) {
            Image(systemName: icon)
            Text(name)
            
        }
        .font(.body)
        .padding(.horizontal, 15)
        .padding(.trailing, 5)
        .padding(.vertical, 6)
        .background(Color(.systemGray6))
        .clipShape(Capsule())
        .foregroundColor(.black)
        .fixedSize()
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(student: StudentModel(id: 0, name: "Aldrivo Rido", shortname: "Aldrivo", birthDay: "20 April", domicile: "Bandung", residence: "Bandung", role: "Design", image: "basket", mentor: 0, sig: [2,2,4,5,6,7,1,8], hobby: [3, 4, 5]))
    }
}

