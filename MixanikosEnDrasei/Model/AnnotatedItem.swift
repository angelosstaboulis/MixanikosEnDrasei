//
//  AnnotatedItem.swift
//  MixanikosEnDrasei
//
//  Created by Angelos Staboulis on 24/5/23.
//

import Foundation
import MapKit
struct AnnotatedItem:Identifiable{
    let id = UUID()
    var label : String
    var coordinate:CLLocationCoordinate2D
}
