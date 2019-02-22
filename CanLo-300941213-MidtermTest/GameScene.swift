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

class GameScene: SKScene {
    
    let screenSize = UIScreen.main.bounds
    var screenWidth: CGFloat?
    var screenHeight: CGFloat?
    
    var gameOverLabel: SKLabelNode!
    var score = SKLabelNode(text: "Score")
    var lb1 = SKLabelNode(text: "")
    var lb2 = SKLabelNode(text: "")
    var lb3 = SKLabelNode(text: "")
    var lb4 = SKLabelNode(text: "")
    var playAgain = SKLabelNode(text: "Play")
    var status = SKLabelNode(text: "Status")
    
    
    
    override func didMove(to view: SKView) {

        score.position.x = 0
        score.position.y = 450
        score.fontColor = UIColor.yellow
        score.fontSize = 30.0
        score.zPosition = 5
        score.fontName = "Arial Bold"
       // score.text = "Your Score is : 0"
        addChild(score)
        
        status.position.x = 0
        status.position.y = 300
        status.fontColor = UIColor.red
        status.fontSize = 30.0
        status.zPosition = 5
        status.fontName = "Arial Bold"
        addChild(status)
        
        
        lb1.position.x = -250
        lb1.position.y = 0
        lb1.fontColor = UIColor.yellow
        lb1.fontSize = 30.0
        lb1.zPosition = 5
        lb1.fontName = "Arial Bold"
        // score.text = "Your Score is : 0"
        addChild(lb1)
        
        lb2.position.x = -80
        lb2.position.y = 0
        lb2.fontColor = UIColor.yellow
        lb2.fontSize = 30.0
        lb2.zPosition = 5
        lb2.fontName = "Arial Bold"
        // score.text = "Your Score is : 0"
        addChild(lb2)
        
        lb3.position.x = 80
        lb3.position.y = 0
        lb3.fontColor = UIColor.yellow
        lb3.fontSize = 30.0
        lb3.zPosition = 5
        lb3.fontName = "Arial Bold"
        // score.text = "Your Score is : 0"
        addChild(lb3)
        
        lb4.position.x = 250
        lb4.position.y = 0
        lb4.fontColor = UIColor.yellow
        lb4.fontSize = 30.0
        lb4.zPosition = 5
        lb4.fontName = "Arial Bold"
        // score.text = "Your Score is : 0"
        addChild(lb4)
        
        
        playAgain.position.x = 0
        playAgain.position.y = -450
        playAgain.fontColor = UIColor.red
        playAgain.fontSize = 30.0
        playAgain.zPosition = 5
        playAgain.fontName = "Arial Bold"
        addChild(playAgain)
        

    }
    
    
    func touchDown(atPoint pos : CGPoint) {
 
    }
    
    func touchMoved(toPoint pos : CGPoint) {

    }
    
    func touchUp(atPoint pos : CGPoint) {

    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {

    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
       
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
      
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
