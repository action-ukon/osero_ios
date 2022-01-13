//
//  cellView.swift
//  osero_ios
//
//  Created by 坪田和樹 on 2022/01/13.
//

import SwiftUI

struct cellView: View {
    var body: some View {
        VStack(spacing: 0) {
            ForEach((1...8),id: \.self) { num in
                HStack(spacing: 0) {
                    ForEach((1...8),id: \.self) { num in
                        Image("baseBoard")
                            .resizable()
                            .frame(width: 40, height: 40)
//                        Image("blackStone")
//                            .resizable()
//                            .frame(width: 40, height: 40)
//                        Image("whiteStone")
//                            .resizable()
//                            .frame(width: 40, height: 40)
                    }
                }
            }
        }
    }
}

struct cellView_Previews: PreviewProvider {
    static var previews: some View {
        cellView()
    }
}
