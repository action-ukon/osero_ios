//
//  arryBoard.swift
//  osero_ios
//
//  Created by 坪田和樹 on 2022/01/30.
//

import SwiftUI

struct arryBoard: View {
    var body: some View {
        var testarray1: [String] = ["c", "a", "d", "b", "e", "f"]
        Text(testarray1[1])
    }
}

struct arryBoard_Previews: PreviewProvider {
    static var previews: some View {
        arryBoard()
    }
}
