//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by Gaurav Bisht on 16/04/23.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ScrollView {
            VStack {
                MapView(coordinate: landmarks[0].locationCoordinate)
                    .ignoresSafeArea(edges: .top)
                    .frame(height: 300)
                
                CircleImageView(image: Image("doon"))
                    .offset(y: -130)
                    .padding(.bottom, -130)
                
                VStack(alignment: .leading, spacing: 5) {
                    Text("Dehradun")
                        .font(.title)
                        .fontWeight(.heavy)
                    HStack {
                        Text("Ghantaghar")
                        Spacer()
                        Text("Uttarakhand")
                    }
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    Spacer()
                    Divider()
                    Spacer()
                    VStack(alignment: .leading) {
                        Text("Abount Dehradun")
                            .font(.headline)
                        Spacer()
                        Text("Dehradun is the capital of the Indian state of Uttarakhand, near the Himalayan foothills. At its core is the 6-sided Ghanta Ghar clock tower. To the southwest is Paltan Bazaar, a busy shopping area. Just east is the Sikh temple Gurdwara Nanaksar, topped with ornate white and golden domes. In Clement Town to the city’s southwest, Mindrolling Monastery is a Tibetan Buddhist center with shrine rooms in its Great Stupa.")
                    }
                }
                .padding()
                Spacer()
            }
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
