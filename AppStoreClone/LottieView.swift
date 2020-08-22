//
//  LottieView.swift
//  AppStoreClone
//
//  Created by Johnny on 17.08.2020.
//  Copyright © 2020 Johnny. All rights reserved.
//

import SwiftUI

import Lottie

struct LottieView: UIViewRepresentable {
    typealias UIViewType = UIView
    var filename : String
    
    func makeUIView(context: Context) -> UIView {
        let view = UIView(frame: .zero)
        
        let animationView = AnimationView()
        let animation = Animation.named(filename)
        animationView.animation = animation
        animationView.contentMode = .scaleAspectFit
        animationView.play()
        
        animationView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(animationView)
        NSLayoutConstraint.activate([
            animationView.widthAnchor.constraint(equalTo: view.widthAnchor),
            animationView.heightAnchor.constraint(equalTo: view.heightAnchor)
        ])
        
        return view
        
        
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
        
    }
    
    
}
