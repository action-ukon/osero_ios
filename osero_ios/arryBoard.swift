//
//  arryBoard.swift
//  osero_ios
//
//  Created by 坪田和樹 on 2022/01/30.
//

import SwiftUI

struct arryBoard: View {
    @State var buttonCell = cellView()
    
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
    var body: some View {

        // 今のボードの処理
        VStack{
            ForEach(0..<8) { n in
                HStack{
                    ForEach(0..<8) { i in
                        if(board[n][i] == 0){
                            Button(action: {
                                board[n][i] = 1
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
