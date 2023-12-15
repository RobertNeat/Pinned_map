//  AnnotationView.swift
//  laboratorium_10_zadanie_2

import SwiftUI


struct AnnotationView: View {
    var title: String
 
    var body: some View {
        VStack {
            Image(systemName: "mappin.circle.fill")
                .font(.system(size: 30))
                .foregroundColor(.red)
            Text(title)
                .font(.caption)
                .foregroundColor(.black)
                .padding(5)
                .background(Color.white)
                .cornerRadius(5)
                .shadow(radius: 2)
        }
    }
}

struct AnnotationView_Previews: PreviewProvider {
    static var previews: some View {
        AnnotationView(title: "Example title")
    }
}
