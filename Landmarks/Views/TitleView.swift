//
//  TitleView.swift
//  Landmarks
//
//  Created by Marko Poikkimäki on 2023-02-16.
//

import SwiftUI

struct TitleView: View {
    var landmark: Landmark
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                      Text(landmark.name)
                           .font(.title)

                       HStack {
                           Text(landmark.park)
                               .font(.subheadline)
                           Spacer()
                           Text(landmark.state)
                               .font(.subheadline)
                       }
                       .font(.subheadline)
                       .foregroundColor(.secondary)
                       
                       Divider()
                
                       Text("About \(landmark.name)")
                        .font(.title2)
                       
                       Text(landmark.description)
                
                   }
                   .padding()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(landmark: landmarks[0])
    }
}
