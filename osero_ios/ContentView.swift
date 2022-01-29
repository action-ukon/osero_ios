//
//  ContentView.swift
//  osero_ios
//
//  Created by 坪田和樹 on 2022/01/12.
//

import SwiftUI

struct ContentView: View {
    
    @State var buttonCell = cellView()
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            Rectangle()
                .fill(Color.black)
                .frame(width: 320, height: 320)
                .border(Color.black, width: 1)
            
                buttonCell
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
