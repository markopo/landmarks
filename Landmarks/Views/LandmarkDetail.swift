//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Marko Poikkimäki on 2023-02-19.
//

import SwiftUI

struct LandmarkDetail: View {
    @EnvironmentObject var modelData: ModelData
    var landmark: Landmark
    
    var landMarkIndex: Int {
        modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
    }
    
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
                HStack {
                    Spacer()
                    FavoriteButton(isSet: $modelData.landmarks[landMarkIndex].isFavorite)

                }
                
                TitleView(landmark: landmark)
                
                Spacer()
            }
            .padding()
        }
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static let modelData = ModelData()
    
    static var previews: some View {
        LandmarkDetail(landmark: ModelData().landmarks[0])
            .environmentObject(modelData)
    }
}
