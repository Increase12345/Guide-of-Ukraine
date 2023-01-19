//
//  Discover.swift
//  UkrAppOne
//
//  Created by Nick Pavlov on 1/16/23.
//

import SwiftUI

struct Discover: View {
    let location: Location
    
    var body: some View {
        ScrollView{
            
            Image(location.heroPicture)
                .resizable()
                .scaledToFit()
            
            Text(location.name)
                .font(.largeTitle)
                .bold()
                .multilineTextAlignment(.center)
            
            Text(location.country)
                .font(.title)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
            
            Text(location.description)
                .padding(.horizontal)
                .padding(.top, -10)
            
            Text("Did you know?")
                .font(.title3)
                .bold()
                .padding(.top)
            
            Text(location.more)
                .padding(.horizontal)
        }
        .navigationTitle("Discover")
    }
}

struct Discover_Previews: PreviewProvider {
    static var previews: some View {
        Discover(location: Locations().primary)
    }
}
