//
//  ContentView.swift
//  SwiftModuleDemo
//
//  Created by ZhengXianda on 2022/2/28.
//

import SwiftUI
import Speaker
import Dog

struct ContentView: View {
    @State private var msg: String = ""
    
    var body: some View {
        VStack {
            Text(msg)
                .frame(width: 200, height: 50, alignment: .center)
                .cornerRadius(20)
                .overlay(RoundedRectangle(cornerRadius: 20, style: .continuous).stroke(Color.gray, lineWidth: 1))
            Button("Say!"){
                msg = Dog.intro()
            }
            .frame(width: 200, height: 50, alignment: .center)
            .cornerRadius(20)
            .overlay(RoundedRectangle(cornerRadius: 20, style: .continuous).stroke(Color.blue, lineWidth: 1))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
