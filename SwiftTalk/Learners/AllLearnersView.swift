//
//  LearnersView.swift
//  SwiftTalk
//
//  Created by Arin Juan Sari on 25/03/25.
//

import SwiftUI


struct AllLearnersView: View {
    @State private var searchQuery = ""
    @FocusState private var isSearchFocused: Bool
    @Environment(\.presentationMode) private var presentationMode // Handle navigation back
    
    var filteredStudents: [StudentModel] {
        studenData.filter { searchQuery.isEmpty || $0.name.lowercased().contains(searchQuery.lowercased()) }
    }
    
    var body: some View {
        
        VStack{
            
            HStack{
                HStack {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.gray)
                    TextField("Search By Learner's Name", text: $searchQuery)
                        .focused($isSearchFocused)
                        .font(.custom("Lato-Regular", size: 18))
                }
                .padding(10)
                .background(Color(.systemGray6))
                .cornerRadius(20)
                .padding(.leading,20)
                
                
                Button("Cancel"){ if presentationMode.wrappedValue.isPresented {
                    presentationMode.wrappedValue.dismiss()
                    // Go back to home if pushed
                } else {
                    searchQuery = ""
                    isSearchFocused = false
                }
                }
                .padding(.trailing,20)
                
            }
            .padding(.top,10)
            VStack{
                if filteredStudents.isEmpty && !searchQuery.isEmpty {
                    // Show "Not Found" message when there are no results and search query is not empty
                    PageNotFound()
                } else {
                    List {
                        ForEach(filteredStudents, id: \.id) { item in
                            NavigationLink(destination: FullBiodataView4(student: item).navigationBarBackButtonHidden(false)) {
                                HStack {
                                    Image(item.image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 80, height: 80)
                                        .cornerRadius(30)
                                    Text(item.name)
                                        .font(.headline)
                                }
                                
                            }
                        }
                    }
                    .listStyle(.plain) // Removes default list padding
                }
            }
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .keyboardType(.alphabet)
            .scrollContentBackground(.hidden)
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                    isSearchFocused = true
                }
            }
        }
    }
}

#Preview {
    AllLearnersView()
}
