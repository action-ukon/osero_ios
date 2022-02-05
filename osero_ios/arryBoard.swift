//
//  arryBoard.swift
//  osero_ios
//
//  Created by 坪田和樹 on 2022/01/30.
//

import SwiftUI
import Foundation

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
        VStack(spacing: 0){
            ForEach(0..<8) { n in
                HStack(spacing: 0){
                    ForEach(0..<8) { i in
                        if(board[n][i] == 0){
                            Button(action: {
                                //TODO:ベクトル飛ばす
                                for m in 0..<8 {
                                    var allturnable:[[String:Int]] = [[:]]
                                    for temp in 1..<8{
                                        let boardX: Int = i + temp * directions[m][0]
                                        let boardY: Int = n + temp * directions[m][1]
                                        if(boardY < 0 || boardX < 0 || 7 < boardY || 7 < boardX || board[boardY][boardX] == 0){
                                            break
                                        }
                                        else if(board[boardY][boardX] != turn){
                                            let turnable = ["x": boardX, "y": boardY]
                                            allturnable.append(turnable)
                                        }
                                        else if(board[boardY][boardX] == turn){
                                            // let turnable = (x: boardX, y: boardY)
                                            for t in 1..<(allturnable.count){
                                                board[allturnable[t]["y"]!][allturnable[t]["x"]!] = turn
                                            }
                                            if(allturnable.count > 1){
                                                board[n][i] = turn
                                            }
                                            break
                                        }
                                    }
                                }
                                //
                                if(board[n][i] == turn){
                                    turn = 3 - turn
                                }
                               
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
