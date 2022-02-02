//
//  arryBoard.swift
//  osero_ios
//
//  Created by 坪田和樹 on 2022/01/30.
//

import SwiftUI

struct arryBoard: View {
    @State var buttonCell = cellView()
    @State var turn: Int = 1
    @State var board: [[Int]] = [
        [0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0],
        [0,0,0,2,1,0,0,0],
        [0,0,0,1,2,0,0,0],
        [0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0]
    ]
    @State var directions: [[Int]] = [
        [0, 1],
        [1, 1],
        [1, 0],
        [1, -1],
        [0, -1],
        [-1, -1],
        [-1, 0],
        [-1, 1]
    ]
    
    var body: some View {

        // 今のボードの処理
        VStack{
            ForEach(0..<8) { n in
                HStack{
                    ForEach(0..<8) { i in
                        if(board[n][i] == 0){
                            Button(action: {
                                board[n][i] = turn
                                //TODO:ベクトル飛ばす
                                ForEach(0..<8) { m in
                                    var boardX: Int = i + directions[m][0]
                                    var boardY: Int = n + directions[m][1]
                                }
                                //
                                turn = 3 - turn
                            }){
                                buttonCell.noStoneFunc()
                            }
                        } else if(board[n][i] == 1){
                            buttonCell.blackStoneFunc()
                        } else if(board[n][i] == 2){
                            buttonCell.whiteStoneFunc()
                        }
                    }
                }
            }
        }
        
    }
}

struct arryBoard_Previews: PreviewProvider {
    static var previews: some View {
        arryBoard()
    }
}
