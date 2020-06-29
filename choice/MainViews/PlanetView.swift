//
//  PlanetView.swift
//  choice
//
//  Created by 潘英剑 on 6/18/20.
//  Copyright © 2020 潘英剑. All rights reserved.
//

import SwiftUI

struct PlanetView: View {
    @State var searchedItem = ""
    
    var body: some View {
        NavigationView{
            VStack{
                HStack{
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Image(systemName: "line.horizontal.3")
                    }
                    Spacer()
                    SearchBar(text: $searchedItem)
                }
                .padding()
                .offset(x:0, y:-100)
                
                Spacer()
                
                SphereView()
                    .frame(minWidth: 0, maxWidth: 300, minHeight: 0, maxHeight: 300)
                    .offset(x:0, y:-100)
                
                NavigationLink(destination: SizeView()){
                        Text("SIZE")
                        .font(.largeTitle)
                        .foregroundColor(Color.blue)
                        .padding()
                        .overlay(
                            RoundedRectangle(cornerRadius: 30)
                                .stroke(Color.blue, lineWidth: 5)
                        )
                }.offset(x:0, y:20)
                Spacer()
            }
        }
    }
}

struct PlanetView_Previews: PreviewProvider {
    static var previews: some View {
        PlanetView()
    }
}

