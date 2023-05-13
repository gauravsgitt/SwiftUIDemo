//
//  LandmarkDetail.swift
//  SwiftUIDemo
//
//  Created by Gaurav Bisht on 13/05/23.
//

import SwiftUI

struct LandmarkDetail: View {
    
    var landmark: LandmarkModel
    
    var body: some View {
        ScrollView {
            VStack {
                MapView(coordinate: landmark.locationCoordinate)
                    .ignoresSafeArea(edges: .top)
                    .frame(height: 300)
                
                CircleImageView(image: landmark.image)
                    .offset(y: -130)
                    .padding(.bottom, -130)
                
                VStack(alignment: .leading, spacing: 5) {
                    Text(landmark.name)
                        .font(.title)
                        .fontWeight(.heavy)
                    HStack {
                        Text(landmark.park)
                        Spacer()
                        Text(landmark.state)
                    }
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    Spacer()
                    Divider()
                    Spacer()
                    VStack(alignment: .leading) {
                        Text(landmark.description)
                    }
                }
                .padding()
                Spacer()
            }
        }
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarks[0])
    }
}
