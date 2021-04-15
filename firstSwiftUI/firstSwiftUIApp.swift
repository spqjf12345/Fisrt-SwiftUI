//
//  firstSwiftUIApp.swift
//  firstSwiftUI
//
//  Created by JoSoJeong on 2021/03/19.
//

import SwiftUI

@main
struct firstSwiftUIApp: App {
    @StateObject var locations = Locations()
    
    var body: some Scene {
        WindowGroup {
            TabView{
                
                NavigationView {
                    scrollingCollectionView()
                }
                .tabItem {
                    Image(systemName: "rocket")
                    Text("collection view")
                }
                
                NavigationView {
                    doTap()
                }
                .tabItem {
                    Image(systemName: "star")
                    Text("Toggle")
                }
                
                NavigationView{
                    ContentView(location: locations.primary)
                }
                .tabItem {
                    Image(systemName: "airplane.circle.fill")
                    Text("Discover")
                }
                
                NavigationView {
                    WorldView()
                }
                .tabItem {
                    Image(systemName: "star.fill")
                    Text("Locations")
                }
                NavigationView {
                    TipsView()
                }
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("Tips")
                }
            }
            .environmentObject(locations)
           
            
        }
    }
}
