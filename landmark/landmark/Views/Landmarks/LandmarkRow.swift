//
//  LandmarkRow.swift
//  landmark
//
//  Created by nina on 17/04/24.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark

    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
                .clipShape(Circle())

            Text(landmark.name)

            Spacer()

            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct Preview: PreviewProvider {
    static var previews: some View {
        LandmarkRow(landmark: ModelData().landmarks[0])
    }
}

struct Preview1: PreviewProvider {
    static var previews: some View {
        LandmarkRow(landmark: ModelData().landmarks[1])
    }
}
