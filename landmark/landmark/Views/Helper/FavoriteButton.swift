//
//  FavoriteButton.swift
//  landmark
//
//  Created by nina on 17/04/24.
//

import SwiftUI

struct FavoriteButton: View {
    @State var isSet: Bool

    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Toggle favorite", systemImage: isSet ? "star.fill" : "star")
                .labelStyle(.iconOnly)
                .foregroundStyle(isSet ? .yellow : .gray)
        }
    }
}

#Preview {
    FavoriteButton(isSet: true)
}
