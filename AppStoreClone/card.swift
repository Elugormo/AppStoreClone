//
//  card.swift
//  AppStoreClone
//
//  Created by Johnny on 17.08.2020.
//  Copyright © 2020 Johnny. All rights reserved.
//

import SwiftUI

struct card: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            CardSubview()
            Spacer()
            SpecialCardSubview(color: [Color(#colorLiteral(red: 0.7882352941, green: 0.09803921569, blue: 0.3882352941, alpha: 1)), Color(#colorLiteral(red: 0.3450980392, green: 0.07058823529, blue: 0.6509803922, alpha: 1))])
            SpecialCardSubview(color: [Color(#colorLiteral(red: 0.9176470588, green: 0.368627451, blue: 0.2588235294, alpha: 1)), Color(#colorLiteral(red: 0.831372549, green: 0.1568627451, blue: 0.3450980392, alpha: 1))])
            SpecialCardSubview(color: [Color(#colorLiteral(red: 0.231372549, green: 0.0862745098, blue: 0.7176470588, alpha: 1)), Color(#colorLiteral(red: 0.3450980392, green: 0.694652936, blue: 1, alpha: 1))])
            SpecialCardSubview(color: [Color(#colorLiteral(red: 0.3294117647, green: 0.2901960784, blue: 0.4901960784, alpha: 1)), Color(#colorLiteral(red: 1, green: 0.831372549, blue: 0.3215686275, alpha: 1))])

            Spacer()
            
        }
       
    }
}
    


struct card_Previews: PreviewProvider {
    static var previews: some View {
        card()
    }
}

struct CardSubview : View {
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false) {
        VStack {
            HStack(spacing: 13) {
                ZStack {
                    RoundedRectangle(cornerRadius: 20, style: .circular)
                        .fill(LinearGradient(gradient: Gradient(colors: [.blue, .red]), startPoint: .topLeading, endPoint: .bottomTrailing))
                        .frame(width: 65, height: 65, alignment: .leading)
                    
                }.padding(.trailing).padding(.top, 20)
                VStack(alignment: .leading) {
                    Text("SwiftUI Visual Editor")
                        .font(.title)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text("Build a multi-platform app for iOS, iPadOS")
                        .foregroundColor(.gray)
                        .font(.caption)
                        .fontWeight(.light)
                        .multilineTextAlignment(.leading)
                }
            }
            ZStack(alignment: .leading) {
                Rectangle().fill(Color.black.opacity(0.05)).clipShape(Capsule()).frame(width: 250, height: 8, alignment: .center)
                Rectangle().fill(Color.blue).clipShape(Capsule()).frame(width: 100, height: 8, alignment: .center)
                
                
            }.padding(.bottom, 20)
            .padding(.leading, 60)
            
        }
        .frame(width: UIScreen.main.bounds.width - 30, height: 100, alignment: .center)
       
        }
        
    }
}

struct SpecialCardSubview: View {
    
    var color : [Color]
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 30, style: .continuous).fill(LinearGradient(gradient: Gradient.init(colors: [color[0], color[1]]), startPoint: .topLeading, endPoint: .bottomTrailing)).frame(width: UIScreen.main.bounds.width - 30, height: 260)
            VStack {
                HStack {
                    VStack(alignment: .leading) {
                    Text("UI Deisgn for iOS 14")
                        .fontWeight(.bold).foregroundColor(.white)
                        .font(.system(size: 20, weight: .bold, design: .default))
                        Text("Certificate").font(.caption).foregroundColor(.white)
                    }.padding(.leading, 30)
                    Spacer()
                    ZStack {
                        Circle().fill(Color.white).frame(width: 35, height: 35).opacity(0.15)
                        Image(systemName: "info.circle").foregroundColor(.white)
                        
                    }.padding(.trailing, 30)
                }.padding(.top, 20)
                Spacer()
                HStack {
                    VStack(alignment: .leading) {
                        Capsule().fill(Color.white).opacity(0.5).frame(width: 30, height: 4, alignment: .leading)
                        Capsule().fill(Color.white).opacity(0.5).frame(width: 70, height: 5, alignment: .leading)
                        Capsule().fill(Color.white).opacity(0.5).frame(width: 28, height: 4, alignment: .leading)
                        Capsule().fill(Color.white).opacity(0.5).frame(width: 110, height: 9, alignment: .leading)

                    }.padding(.leading, 30)
                    Spacer()
                    
                    VStack(alignment: .leading) {
                        Capsule().fill(Color.white).opacity(0.5).frame(width: 50, height: 3, alignment: .leading)
                        Capsule().fill(Color.white).opacity(0.5).frame(width: 20, height: 5, alignment: .leading)
                        Capsule().fill(Color.white).opacity(0.5).frame(width: 70, height: 4, alignment: .leading)

                    }.padding(.trailing, 30).padding(.bottom, 15)
                    
                }.padding(.bottom, 25)
            }
            
        }.frame(width: UIScreen.main.bounds.width - 30, height: 260)
    }
}


