//
//  brandView.swift
//  choice
//
//  Created by 潘英剑 on 6/18/20.
//  Copyright © 2020 潘英剑. All rights reserved.
//

import SwiftUI


struct brandView: View {
//    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    var brandname : String
    
//    var btnBack : some View { Button(action: {
//        self.presentationMode.wrappedValue.dismiss()
//        }) {
//            HStack {
//            Image("ic_back") // set image here
//                .aspectRatio(contentMode: .fit)
//                .foregroundColor(.white)
//                Text("Go back")
//            }
//        }
//    }

    var body: some View {
        Text(brandname)
        .navigationBarTitle(Text(brandname), displayMode: .inline)
    }
}

//struct brandView: View {
//    var body: some View {
//        VStack{
//            HStack{
//                Button()
//                NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
//                    Button.
//                }
//            }
//        }
//
//    }
//}

struct brandView_Previews: PreviewProvider {
    static var previews: some View {
        brandView(brandname: "Gucci")
    }
}
