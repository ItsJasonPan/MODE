//
//  ContentView.swift
//  choice
//
//  Created by 潘英剑 on 6/7/20.
//  Copyright © 2020 潘英剑. All rights reserved.
//

import SwiftUI


struct ContentView: View {
    //var currentView = "planet"
    @State private var selection = 0
    
    init(){
        UITabBar.appearance().barTintColor = UIColor.mint
        UITabBar.appearance().layer.borderWidth = 0.0
        //UITabBar.appearance().
    }

    var body: some View {
        TabView(selection: $selection){
            PlanetView()
                .tabItem{
                    Image(systemName: "skew")
                    Text("Roam")
                }.tag(0)
            CommunityView()
                .tabItem{
                    Image(systemName: "flame.fill")
                    Text("Feed")
                }.tag(1)
            StoreView()
                .tabItem{
                    Image(systemName: "bag")
                    Text("Store")
                }.tag(2)
            ProfileView()
                .tabItem{
                    Image(systemName: "person.crop.circle")
                    Text("Profile")
                }.tag(3)
        }
        //.edgesIgnoringSafeArea(.top)
        .accentColor(.red)
        //.offset(x:0, y:-10)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
