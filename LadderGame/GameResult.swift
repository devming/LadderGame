//
//  UserOutput.swift
//  LadderGame
//
//  Created by devming on 2020/06/01.
//  Copyright © 2020 codesquad. All rights reserved.
//

import Foundation

// 이걸 단순 Util함수로 보기보다는 사다리게임의 input에 대한 결과 클래스로 보는게 맞을듯?
class GameResult {
    
    // 여기서 인자를 생성자로 받던지 메소드로 받던지는 관계 없을 것 같다.
    // 현재는 height와 players를 이용하는 메소드 자체가 1개이기 때문에 굳이 생성자에 데이터를 주입할 필요는 없을 듯.
    func printLadders(height: Int, players: [GamePlayer]) {
        
        let ladderRowString = "---"
        let ladderColumnString = "|"
        let rowSpaceString = "   "
        
        for _ in 0 ..< height {
            print(ladderColumnString, terminator:"")
            
            for _ in 0 ..< players.count {
                if Int(arc4random_uniform(2)) == 1 {
                    print(ladderRowString, ladderColumnString, separator:"", terminator:"")
                } else {
                    print(rowSpaceString, ladderColumnString, separator:"", terminator:"")
                }
            }
            
            print()
        }
    }
}
