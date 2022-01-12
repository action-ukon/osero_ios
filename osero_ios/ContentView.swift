//
//  ContentView.swift
//  osero_ios
//
//  Created by 坪田和樹 on 2022/01/12.
//

import SwiftUI

struct ContentView: View {
    
    @State var baseBoard = "baseBoard"
    
    var body: some View {
        Image("baseBoard")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
