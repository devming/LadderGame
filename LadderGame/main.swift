//
//  main.swift
//  LadderGame
//
//  Created by JK on 2019/11/11.
//  Copyright © 2019 codesquad. All rights reserved.

import Foundation


struct LadderPlayer {
    var name = ""
}

class UserInput {
    static func readHeight() -> Int {
        print("사다리 높이를 입력해주세요.")
        let height = readLine() ?? ""
        
        return Int(height) ?? 0
    }
    
    class func readPlayerNames() -> [String] {
        print("참여할 사람 이름을 입력하세요.")
        let players = readLine() ?? ""
        
        return players
            .split(separator: ",")
            .map{String($0)}
    }
}

class ViewModel {
    
    var height = 0
    var players: [LadderPlayer]
    
    init() {
        players = [LadderPlayer]()
    }
    
    func run(printHandler: (Int, [LadderPlayer]) -> Void) {
        self.height = UserInput.readHeight()
        let names = UserInput.readPlayerNames()
        self.players = names.map({LadderPlayer(name:$0)})
        printHandler(self.height, self.players)
    }
}

struct SingleLadderGame {
    
    let viewModel: ViewModel
    
    init () {
        viewModel = ViewModel()
    }
    
    func printLadders() {
        viewModel.run { height, players in
            for _ in 0..<height {
                print("|", terminator:"")
                for _ in 0 ..< players.count - 1 {
                    if Int(arc4random_uniform(2)) == 1 {
                        print("---", "|", separator:"", terminator:"")
                    } else {
                        print("   ", "|", separator:"", terminator:"")
                    }
                }
                print()
            }
        }
    }
}

var game = SingleLadderGame()
game.printLadders()

