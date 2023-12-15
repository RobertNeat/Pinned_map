//  CustomAnnotation.swift
//  laboratorium_10_zadanie_2

import Foundation
import MapKit

struct CustomAnnotation: Identifiable {
    let id = UUID()
    let coordinate: CLLocationCoordinate2D
    let title: String
}
