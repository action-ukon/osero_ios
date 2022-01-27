//
//  cellView.swift
//  osero_ios
//
//  Created by 坪田和樹 on 2022/01/13.
//

import SwiftUI

struct cellView: View {
    fileprivate func extractedFunc() -> some View {
        return Image("baseBoard")
            .resizable()
            .frame(width: 40, height: 40)
    }
    fileprivate func blackStoneFunc() -> some View {
        return Image("blackStone")
            .resizable()
            .frame(width: 40, height: 40)
    }
    fileprivate func whiteStoneFunc() -> some View {
        return Image("whiteStone")
            .resizable()
            .frame(width: 40, height: 40)
    }
    var body: some View {
        VStack(spacing: 0) {
            HStack(spacing: 0) {
                extractedFunc()
                extractedFunc()
                extractedFunc()
                extractedFunc()
                extractedFunc()
                extractedFunc()
                extractedFunc()
                extractedFunc()
            }
            HStack(spacing: 0) {
                extractedFunc()
                extractedFunc()
                extractedFunc()
                extractedFunc()
                extractedFunc()
                extractedFunc()
                extractedFunc()
                extractedFunc()
            }
            HStack(spacing: 0) {
                extractedFunc()
                extractedFunc()
                extractedFunc()
                extractedFunc()
                extractedFunc()
                extractedFunc()
                extractedFunc()
                extractedFunc()
            }
            HStack(spacing: 0) {
                extractedFunc()
                extractedFunc()
                extractedFunc()
                whiteStoneFunc()
                blackStoneFunc()
                extractedFunc()
                extractedFunc()
                extractedFunc()
            }
            HStack(spacing: 0) {
                extractedFunc()
                extractedFunc()
                extractedFunc()
                blackStoneFunc()
                whiteStoneFunc()
                extractedFunc()
                extractedFunc()
                extractedFunc()
            }
            HStack(spacing: 0) {
                extractedFunc()
                extractedFunc()
                extractedFunc()
                extractedFunc()
                extractedFunc()
                extractedFunc()
                extractedFunc()
                extractedFunc()
            }
            HStack(spacing: 0) {
                extractedFunc()
                extractedFunc()
                extractedFunc()
                extractedFunc()
                extractedFunc()
                extractedFunc()
                extractedFunc()
                extractedFunc()
            }
            HStack(spacing: 0) {
                extractedFunc()
                extractedFunc()
                extractedFunc()
                extractedFunc()
                extractedFunc()
                extractedFunc()
                extractedFunc()
                extractedFunc()
            }
        }
    }
}

struct cellView_Previews: PreviewProvider {
    static var previews: some View {
        cellView()
    }
}
