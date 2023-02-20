//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Marko Poikkimäki on 2023-02-19.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    
    var body: some View {
        ZStack {
            Color.clear
                .ignoresSafeArea()
            VStack {
                MapView(coordinate: landmark.locationCoordinate)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
                CircleImage(image: landmark.image)
                    .offset(y: -130)
                    .padding(.bottom, -130)
                TitleView(landmark: landmark)
                Spacer()
            }
            .padding()
        }
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarks[0])
    }
}
