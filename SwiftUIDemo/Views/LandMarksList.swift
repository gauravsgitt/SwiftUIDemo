//
//  LandMarksList.swift
//  SwiftUIDemo
//
//  Created by Gaurav Bisht on 13/05/23.
//

import SwiftUI

struct LandMarksList: View {
    
    @State private var showFavoritesOnly: Bool = false
    @State private var text: String = ""
    @State private var enableSearch: Bool = false
    
    var favoriteLandmarks: [LandmarkModel] {
        return landmarks.filter {
            ($0.isFavorite || !showFavoritesOnly) && ($0.name.contains(text) || !enableSearch)
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites Only")
                        .font(.title3)
                        .fontWeight(.semibold)
                }
                .padding()
                .listRowSeparator(.hidden)
                
                TextField("Search landmark", text: $text)
                    .padding()
                    .onChange(of: text) { newValue in
                        enableSearch = newValue != ""
                    }
                
                ForEach(favoriteLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                            .navigationTitle(Text(landmark.name))
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
                .listRowSeparator(.hidden)
            }
            .navigationTitle("Landmarks")
            .listStyle(GroupedListStyle())
        }
    }
}

struct LandMarksList_Previews: PreviewProvider {
    static var previews: some View {
        LandMarksList()
    }
}
