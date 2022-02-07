//
//  ContentView.swift
//  osero_ios
//
//  Created by 坪田和樹 on 2022/01/12.
//

import SwiftUI

struct ContentView: View {
    @State var ArryBoard = arryBoard()
    @State var ArryBoard2 = arryBoard2()
    
    var body: some View {
        VStack{
            ZStack {
                Color.black
                    .ignoresSafeArea()
                Rectangle()
                    .fill(Color.black)
                    .frame(width: 320, height: 320)
                    .border(Color.black, width: 1)
                
                ArryBoard2
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
