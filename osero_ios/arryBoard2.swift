//
//  arryBoard.swift
//  osero_ios
//
//  Created by 坪田和樹 on 2022/01/30.
//

import SwiftUI
import Foundation

struct arryBoard2: View {
    func noStoneFunc() -> some View {
        return Image("baseBoard")
            .resizable()
            .frame(width: 40, height: 40)
    }
    func blackStoneFunc() -> some View {
        return Image("blackStone")
            .resizable()
            .frame(width: 40, height: 40)
    }
    func whiteStoneFunc() -> some View {
        return Image("whiteStone")
            .resizable()
            .frame(width: 40, height: 40)
    }
    func ableStoneFunc() -> some View {
        return Image("ableBoard")
            .resizable()
            .frame(width: 40, height: 40)
    }
    
    @State var turn: Int = 1
    @State var board: [[Int]] = [
        [0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0],
        [0,0,0,3,0,0,0,0],
        [0,0,3,2,1,0,0,0],
        [0,0,0,1,2,3,0,0],
        [0,0,0,0,3,0,0,0],
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
                        // オセロロジック部
                        if(board[n][i] == 0){
                            noStoneFunc()
                        } else if(board[n][i] == 1){
                            blackStoneFunc()
                        } else if(board[n][i] == 2){
                            whiteStoneFunc()
                        } else if(board[n][i] == 3){
                            Button(action: {
                                //TODO:ベクトル飛ばす
                                for m in 0..<8 {
                                    var allturnable:[[String:Int]] = [[:]]
                                    for temp in 1..<8{
                                        let boardX: Int = i + temp * directions[m][0]
                                        let boardY: Int = n + temp * directions[m][1]
                                        if(boardY < 0 || boardX < 0 || 7 < boardY || 7 < boardX || board[boardY][boardX] == 0 || [boardY][boardX] == 3){
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
                                if(board[n][i] == turn){
                                    turn = 3 - turn
                                    // 3の位置入れ替え
                                    for yelY in 0..<8{
                                        for yelX in 0..<8{
                                            for h in 0..<8{
                                                for tmp in 1..<8{
                                                    let vecX: Int = yelX + tmp * directions[h][0]
                                                    let vecY: Int = yelY + tmp * directions[h][1]
                                                    if(vecY < 0 || vecX < 0 || 7 < vecY || 7 < vecX || board[vecY][vecX] == 0 || [vecY][vecX] == 3){
                                                        break
                                                    }
                                                    // TODO:
                                                }
                                            }
                                        }
                                    }
                                }
                            }){
                                ableStoneFunc()
                            }
                            
                        }
                    }
                }
            }
        }
        
    }
}

struct arryBoard2_Previews: PreviewProvider {
    static var previews: some View {
        arryBoard2()
    }
}
