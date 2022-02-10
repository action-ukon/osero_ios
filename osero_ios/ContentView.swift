//
//  ContentView.swift
//  osero_ios
//
//  Created by 坪田和樹 on 2022/01/12.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var turnView = ObservedTurn()
    @State var ArryBoard = arryBoard()
    @State var ArryBoard2 = arryBoard2()
    @State var ArryBoard3 = arryBoard3()
    
    var body: some View {
        
        VStack{
            ZStack {
                Color.black
                    .ignoresSafeArea()
                Rectangle()
                    .fill(Color.black)
                    .frame(width: 320, height: 320)
                    .border(Color.black, width: 1)
                ArryBoard3
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
