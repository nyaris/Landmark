//
//  MapView.swift
//  landmark
//
//  Created by nina on 17/04/24.
//

import MapKit
import SwiftUI

struct MapView: View {
    let coordinate: CLLocationCoordinate2D

    var body: some View {
        Map(coordinateRegion: .constant(region))
            .edgesIgnoringSafeArea(.all)
    }

    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: coordinate,
            span: .init(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: .init(latitude: 34.011_286, longitude: -116.166_868))
    }
}
