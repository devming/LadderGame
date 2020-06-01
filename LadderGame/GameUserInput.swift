//
//  UserInput.swift
//  LadderGame
//
//  Created by devming on 2020/06/01.
//  Copyright © 2020 codesquad. All rights reserved.
//

import Foundation

class GameUserInput {
    
    func readHeight() -> Int {
        print("사다리 높이를 입력해주세요.")
        let height = readLine() ?? ""
        return Int(height) ?? 0
    }
    
    // Read and Create?
    // 단일 책임 원칙에 의해 Read와 Create를 따로 만드는게 나을까?
    // 그래도 코드 한줄이면 모두 할 수 있는 메소드를 만들 수 있는데 굳이 여러개로 나눠야할까?
    // 다른곳에서 사용해야할 경우는? 나누는게 나을 수도.
    // -> 내 선택: 따로 만들고 GameInfo 클래스 생성자에서 [String] 타입의 인자를 받아서 [LadderPlayer]를 생성.
    func readPlayerNames() -> [String] {
        print("참여할 사람 이름을 입력하세요.")
        let players = readLine() ?? ""
        return players.split(separator: ",")
            .map { String($0) }
    }
}
