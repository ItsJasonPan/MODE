//
//  SphereView.swift
//  choice
//
//  Created by 潘英剑 on 6/18/20.
//  Copyright © 2020 潘英剑. All rights reserved.
//

import SwiftUI

let SCREENWIDTH = UIScreen.main.bounds.width
let SCREENHEIGHT = UIScreen.main.bounds.height


struct SphereView: UIViewRepresentable {
//    @objc func buttonAction() {
//
//
//    }
//
//    @objc func pressed(sender: UIButton!) {
//    }
//
    func makeUIView(context: Context) -> UIView {

        let frame = CGRect.init(x: 10, y: (SCREENHEIGHT - SCREENWIDTH) / 2.0, width: SCREENWIDTH, height: SCREENWIDTH)

//        let frame = CGRect.init(x: 10, y: (SCREENHEIGHT - SCREENWIDTH) / 2.0, width: SCREENWIDTH - 20, height: SCREENWIDTH)
        let sphereView = AASphereView.init(frame: frame)
        
        var tags = [UIView]()
        
        for i in 0..<50 {
            let brandname = "Brand\(i)"
//            let button = UIHostingController(
//                rootView: Text(brandname)
//                        .foregroundColor(Color.blue)
//                        .padding()
//                        .overlay(
//                            RoundedRectangle(cornerRadius: 30)
//                                .stroke(Color.randomColor(), lineWidth: 5)
//                        )
//            )
//            tags.append(button.view)
//            let brandname = "Brand\(i)"
//            let button = UIHostingController(
//                rootView: NavigationLink(destination: brandView(brandname: brandname)){
//                        Text("brandname")
//                        .font(.body)
//                        .foregroundColor(Color.blue)
//                        .padding()
//                        .overlay(
//                            RoundedRectangle(cornerRadius: 30)
//                                .stroke(Color.randomColor(), lineWidth: 5)
//                        )
//                }
//            )
//            tags.append(button.view)
//
            let button = UIButton.init()
            button.setTitle(brandname, for: .normal)
            button.setTitleColor(UIColor.randomColor(), for: .normal)
//            button.addTarget(self, action: #selector(pressed(sender:)), for: .touchUpInside)
            button.sizeToFit()
            tags.append(button)
        }
        sphereView.setTagViews(array: tags)
        return sphereView
    }

    func updateUIView(_ uiView: UIView, context: Context) {
        //uiView.frame = frame
        //sphereView.setTagViews(array: tags)
    }
}


struct SphereView_Previews: PreviewProvider {
    static var previews: some View {
        SphereView()
    }
}
