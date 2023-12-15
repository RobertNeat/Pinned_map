//  ContentView.swift
//  laboratorium_10_zadanie_2
import SwiftUI
import MapKit
 
struct ContentView: View {
    @State private var coordinates = CLLocationCoordinate2D(latitude: 37.3352, longitude: -122.0096)
    @State private var annotationTitle = ""
    @State private var annotations: [CustomAnnotation] = []
 
    var body: some View {
        VStack {
            MapView(coordinates: coordinates, annotations: annotations)
                .edgesIgnoringSafeArea(.all)
 
            VStack {
                TextField("Latitude", text: Binding(
                    get: { String(coordinates.latitude) },
                    set: {
                        if let value = Double($0) {
                            coordinates.latitude = value
                            updateAnnotations()
                        }
                    }
                ))
                .keyboardType(.numbersAndPunctuation)
                .textFieldStyle(RoundedBorderTextFieldStyle())
 
                TextField("Longitude", text: Binding(
                    get: { String(coordinates.longitude) },
                    set: {
                        if let value = Double($0) {
                            coordinates.longitude = value
                            updateAnnotations()
                        }
                    }
                ))
                .keyboardType(.numbersAndPunctuation)
                .textFieldStyle(RoundedBorderTextFieldStyle())
 
                TextField("Annotation Title", text: $annotationTitle)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
 
                Button("Add Annotation") {
                    let annotation = CustomAnnotation(coordinate: coordinates, title: annotationTitle)
                    annotations.append(annotation)
                }
            }
            .padding()
        }
    }
 
    private func updateAnnotations() {
        annotations.removeAll()
        let annotation = CustomAnnotation(coordinate: coordinates, title: annotationTitle)
        annotations.append(annotation)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
