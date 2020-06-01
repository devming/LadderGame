//
//  SingleLadderGame.swift
//  LadderGame
//
//  Created by devming on 2020/06/01.
//  Copyright © 2020 codesquad. All rights reserved.
//

import Foundation

class SingleLadderGame {
    
    var gameInfo: GameInfo? = nil
    
    // 1. init 에서 input을 받아서 GameInfo를 생성하면 옵셔널 처리하지 않아도 되는 장점이 있다.
    // 2. 옵셔널처리 하고 밑에서 run 메소드에서 처리하는 이유는 게임을 실행한다는 의미와 위배되기 때문에.(생성부터 이미 게임 시작인데)
    func run() {
        input()
        output()
    }
    
    // User의 input을 담당하는 메소드.
    func input() {
        let userInput = GameUserInput()
        
        let ladderHeight = userInput.readHeight()
        let playerNames = userInput.readPlayerNames()
        
        self.gameInfo = GameInfo(height: ladderHeight, playerNames: playerNames)
    }
    
    // User가 입력한 input을 기반으로 output을 담당하는 메소드.
    func output() {
        let printUtil = GameResult()
        
        if let gameInfo = self.gameInfo {
            printUtil.printLadders(height: gameInfo.heightProperty, players: gameInfo.playersProperty)
        }
    }
}
