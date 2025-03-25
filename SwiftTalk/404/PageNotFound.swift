//
//  PageNotFound.swift
//  SwiftTalk
//
//  Created by Arin Juan Sari on 26/03/25.
//

import SwiftUI

struct PageNotFound: View {
    var body: some View {
        VStack {
            Image(systemName: "magnifyingglass")
                .font(.system(size: 40))
                .foregroundColor(.gray)
            Text("Profile Not Found")
                .font(.title)
                .fontWeight(.bold)
                .padding(.top)
            Text("Try searching for a different name.")
                .foregroundColor(.secondary)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    PageNotFound()
}
