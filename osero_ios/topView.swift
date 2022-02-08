//
//  topView.swift
//  osero_ios
//
//  Created by 坪田和樹 on 2022/02/08.
//

import SwiftUI

struct topView: View {
    var body: some View {
        NavigationView {
            ZStack{
                Color.black
                    .ignoresSafeArea()
                VStack(spacing: -80){
                    Text("さあ、オセロを始めよう！")
                        .font(.title)
                        .frame(width: 400, height: 40)
                        .foregroundColor(Color(.white))
                        .offset(x: 0, y: -100)
                        
                    NavigationLink(destination: ContentView()){
                        Text("GO!")
                            .frame(width: 160, height: 48)
                            .foregroundColor(Color(.white))
                            .background(Color(.blue))
                            .cornerRadius(24)
                            
                    }
                }
                
            }
        }
    }
}

struct topView_Previews: PreviewProvider {
    static var previews: some View {
        topView()
    }
}
