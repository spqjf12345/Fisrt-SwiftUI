//
//  ContentView.swift
//  firstSwiftUI
//
//  Created by JoSoJeong on 2021/03/19.
//

import SwiftUI

struct ContentView: View {
    
    let location: Location
    
    var body: some View {
        ScrollView{
            Image(location.heroPicture)
                .resizable().scaledToFit()
            Text(location.name)
                .font(.largeTitle)
                .bold()
                .multilineTextAlignment(.center)
            Text(location.country)
                .font(.title)
                .foregroundColor(.secondary)
            
            Text("Did you Know?")
                .font(.title3)
                .bold()
                .padding()
            
            Text(location.more)
                .padding(.horizontal)
            
        }
        .navigationTitle("Discover")
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ContentView(location: Location.example)
        }
    
    }
}
