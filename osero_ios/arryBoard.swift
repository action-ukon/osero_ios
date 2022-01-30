//
//  arryBoard.swift
//  osero_ios
//
//  Created by 坪田和樹 on 2022/01/30.
//

import SwiftUI

struct arryBoard: View {
    @State var buttonCell = cellView()
    var body: some View {
        let board: [[Int]] = [
            [0,0,0,1,0,0,0,0],
            [0,0,0,0,0,0,0,0],
            [0,0,0,0,0,0,0,0],
            [0,0,0,0,0,0,0,0],
            [0,0,0,0,0,0,0,0],
            [0,0,0,0,0,0,0,0],
            [0,0,0,0,0,0,0,0],
            [0,0,0,0,0,0,0,0]
        ]
        HStack{
            ForEach(0..<8) { i in
                if(board[0][i] == 0){
                    buttonCell.noStoneFunc()
                } else {
                    buttonCell.blackStoneFunc()
                }
            } }
        
    }
}

struct arryBoard_Previews: PreviewProvider {
    static var previews: some View {
        arryBoard()
    }
}
