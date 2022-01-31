//
//  cellView.swift
//  osero_ios
//
//  Created by 坪田和樹 on 2022/01/13.
//

import SwiftUI

struct cellView: View {
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
    var body: some View {
        VStack(spacing: 0) {
            HStack(spacing: 0) {
                noStoneFunc()
                noStoneFunc()
                noStoneFunc()
                noStoneFunc()
                noStoneFunc()
                noStoneFunc()
                noStoneFunc()
                noStoneFunc()
            }
            HStack(spacing: 0) {
                noStoneFunc()
                noStoneFunc()
                noStoneFunc()
                noStoneFunc()
                noStoneFunc()
                noStoneFunc()
                noStoneFunc()
                noStoneFunc()
            }
            HStack(spacing: 0) {
                noStoneFunc()
                noStoneFunc()
                noStoneFunc()
                noStoneFunc()
                noStoneFunc()
                noStoneFunc()
                noStoneFunc()
                noStoneFunc()
            }
            HStack(spacing: 0) {
                noStoneFunc()
                noStoneFunc()
                noStoneFunc()
                whiteStoneFunc()
                blackStoneFunc()
                noStoneFunc()
                noStoneFunc()
                noStoneFunc()
            }
            HStack(spacing: 0) {
                noStoneFunc()
                noStoneFunc()
                noStoneFunc()
                blackStoneFunc()
                whiteStoneFunc()
                noStoneFunc()
                noStoneFunc()
                noStoneFunc()
            }
            HStack(spacing: 0) {
                noStoneFunc()
                noStoneFunc()
                noStoneFunc()
                noStoneFunc()
                noStoneFunc()
                noStoneFunc()
                noStoneFunc()
                noStoneFunc()
            }
            HStack(spacing: 0) {
                noStoneFunc()
                noStoneFunc()
                noStoneFunc()
                noStoneFunc()
                noStoneFunc()
                noStoneFunc()
                noStoneFunc()
                noStoneFunc()
            }
            HStack(spacing: 0) {
                noStoneFunc()
                noStoneFunc()
                noStoneFunc()
                noStoneFunc()
                noStoneFunc()
                noStoneFunc()
                noStoneFunc()
                noStoneFunc()
            }
        }
    }
}

struct cellView_Previews: PreviewProvider {
    static var previews: some View {
        cellView()
    }
}
