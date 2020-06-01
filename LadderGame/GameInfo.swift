//
//  GameInfo.swift
//  LadderGame
//
//  Created by devming on 2020/06/01.
//  Copyright © 2020 codesquad. All rights reserved.
//

import Foundation

struct GamePlayer {
    private var name = ""
    
    init(name: String) {
        self.name = name
    }
}

struct GameInfo {
    
    private var height: Int
    private var players: [GamePlayer]
    
    var heightProperty: Int {
        get {
            return height
        }
    }
    var playersProperty: [GamePlayer] {
        get {
            return players
        }
    }
    
    init() {
        self.height = 0
        self.players = [GamePlayer]()
    }
    
    init(height: Int, players: [GamePlayer]) {
        self.height = height
        self.players = players
    }
    
    init(height: Int, playerNames: [String]) {
        self.height = height
        self.players = playerNames.map { GamePlayer(name: $0) }
    }
}
