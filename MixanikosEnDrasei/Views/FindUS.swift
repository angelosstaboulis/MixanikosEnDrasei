//
//  FindUS.swift
//  MixanikosEnDrasei
//
//  Created by Angelos Staboulis on 24/5/23.
//

import SwiftUI
import MapKit

struct FindUS: View {
    @State var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude:37.894249, longitude: 23.771530), span: MKCoordinateSpan(latitudeDelta:0.0005, longitudeDelta: 0.0005))
    @State var points = [AnnotatedItem(label: "Μηχανικός Εν Δράσει", coordinate: CLLocationCoordinate2D(latitude: 37.894249, longitude:  23.771530))]
    var body: some View {
        VStack{
            Map(coordinateRegion: $region, annotationItems: points) { item in
                MapAnnotation(coordinate: CLLocationCoordinate2D(latitude: 37.894249, longitude:23.771530)) {
                    Text("Μηχανικός Εν Δράσει")
                    Image(systemName: "pin.circle.fill").foregroundColor(.red)
                }
            }.edgesIgnoringSafeArea(.all).frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height - 200, alignment: .leading)
        }
    }
}

