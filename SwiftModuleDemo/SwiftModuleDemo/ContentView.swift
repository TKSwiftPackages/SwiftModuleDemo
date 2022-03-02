//
//  ContentView.swift
//  SwiftModuleDemo
//
//  Created by ZhengXianda on 2022/2/28.
//

import SwiftUI
import Speaker
import Dog
import Basket
import BasketFramework
import BasketLibrary

extension View {
    public func space(_ width: CGFloat? = nil, _ color: Color = Color.blue) -> some View {
        return self.frame(width: width, height: 50, alignment: .center)
            .cornerRadius(20)
            .overlay(
                RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .stroke(color, lineWidth: 1)
            )
    }
}

struct ContentView: View {
    @State private var msg: String = ""
    
    var body: some View {
        VStack {
            Text(msg).space(300, Color.gray)
            Button(action: {
                msg = Speaker.intro()
            }){
                Text("Say!").space(300)
            }
            Button(action: {
                msg = Dog.intro()
            }){
                Text("Woof!").space(300)
            }
            HStack {
                Button(action: {
                    msg = Basket.introFramework()
                }) {
                    Text("Bang!Bang!Fx!").space(150)
                }
                Button(action: {
                    msg = Basket.introLibrary()
                }){
                    Text("Bang!Bang!Lib!").space(150)
                }
            }
            HStack {
                Button(action: {
                    msg = BasketFrameworkIntro.intro()
                }) {
                    Text("Bang!Fx!").space(150)
                }
                Button(action: {
                    msg = BasketLibraryIntro.intro()
                }) {
                    Text("Bang!Fx!").space(150)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
