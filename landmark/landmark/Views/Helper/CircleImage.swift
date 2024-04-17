//
//  CircleImage.swift
//  landmark
//
//  Created by nina on 17/04/24.
//

import SwiftUI

struct CircleImage: View {
    let image: Image

    var body: some View {
        image
            .resizable()
            .frame(width: 250, height: 200)
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.yellow, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}
