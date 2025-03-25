//
//  SIGCardView.swift
//  stalk swift
//
//  Created by Arin Juan Sari on 24/03/25.
//

import SwiftUI

struct SIGCardView: View {
    var sig: SIGModel
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .frame(width: 130, height: 160)
            .foregroundStyle(Color("Primary"))
            .overlay(alignment: .center) {
                VStack {
                    Image(sig.image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 90, height: 90)
                        .padding(.top, 7)
                        .padding(.bottom, 5)
                    Text(sig.name)
                        .bold()
                        .foregroundStyle(.black)
                        .font(.headline)
                }
                .padding(.bottom,5)
            }
    }
}

#Preview {
    SIGCardView(sig: SIGModel(id: 0, name: "Basket", image: "basket", icon: "🏀"))
}
