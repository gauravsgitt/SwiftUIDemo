//
//  LandmarkRow.swift
//  SwiftUIDemo
//
//  Created by Gaurav Bisht on 17/04/23.
//

import SwiftUI

struct LandmarkRow: View {
    
    @State var landmark: LandmarkModel
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .padding()
                    .foregroundColor(.yellow)
            }
        }
        .padding(.leading)
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkRow(landmark: landmarks[0])
    }
}
