//
//  GameScene.swift
//  CanLo-300941213-MidtermTest
//
//  Created by Đậu Thư on 2019-02-21.
//  Copyright © 2019 Can Lo. All rights reserved.
//
import SpriteKit
import GameplayKit
import UIKit
import AVFoundation

class SplashScene: SKScene {
    
    var myName = SKLabelNode(text: "Can Lo - 300941213")
    var timer: Int = 0
    
    
    override func didMove(to view: SKView) {
        
        myName.zPosition = 5
        myName.position.x = 0
        myName.position.y = 0
        myName.fontSize = 60.0
        myName.fontColor = UIColor.white
        addChild(myName)
        
        
        
        

    }
    override func update(_ currentTime: TimeInterval) {
        
            timer += 1
        
        if(timer == 150) {
            
            if let gameScene = GameScene(fileNamed: "GameScene") {
                gameScene.scaleMode = .aspectFill
                view?.presentScene(gameScene)
            }
        }
    }
}
