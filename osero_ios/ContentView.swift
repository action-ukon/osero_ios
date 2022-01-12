//
//  ContentView.swift
//  osero_ios
//
//  Created by 坪田和樹 on 2022/01/12.
//

import SwiftUI

struct ContentView: View {
    
//    @State var baseBoard = "baseBoard"
    
    var body: some View {
//        Image("baseBoard")
        ZStack {
            Color.green
                .ignoresSafeArea()
            Rectangle()
                .fill(Color(red: 0.4, green: 0.5, blue: 0.1, opacity: 100))
                .frame(width: 300, height: 300)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
