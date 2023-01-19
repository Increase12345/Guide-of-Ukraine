//
//  MainView.swift
//  tempDelTwo
//
//  Created by Nick Pavlov on 1/15/23.
//

import SwiftUI

struct MainView: View {
    @StateObject var locations = Locations()
    
    var body: some View {
        TabView {
            
            NavigationView {
                Discover(location: locations.primary)
            }
            .tabItem {
                Image(systemName: "star.fill")
                Text("Discover")
            }
            
            NavigationView {
                MapView()
            }
                .tabItem {
                    Image(systemName: "globe.europe.africa.fill")
                    Text("View on map")
                }
            
            NavigationView {
                Tips()
            }
            .tabItem {
                Image(systemName: "list.bullet")
                Text("Tips")
            }
            
            NavigationView {
                Settings()
            }
            .tabItem {
                Image(systemName: "gear")
                Text("Settings")
            }
        }
        .environmentObject(locations)
        .navigationBarBackButtonHidden(true)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
