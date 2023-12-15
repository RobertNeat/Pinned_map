//  MapView.swift
//  laboratorium_10_zadanie_2

import SwiftUI
import MapKit


struct MapView: View {
    var coordinates: CLLocationCoordinate2D
    var annotations: [CustomAnnotation]
 
    var body: some View {
        Map(coordinateRegion: .constant(MKCoordinateRegion(center: coordinates, span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))),
            annotationItems: annotations) { annotation in
            MapAnnotation(coordinate: annotation.coordinate) {
                AnnotationView(title: annotation.title)
            }
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(
            coordinates: CLLocationCoordinate2DMake(10, 10),
            annotations: [CustomAnnotation(coordinate: CLLocationCoordinate2DMake(10, 10), title: "Annotation title")])
    }
}
