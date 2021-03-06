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
    var winCheckArray: Array<String> = Array()
    
    var lion:Lion?
    var lion2:Lion?
    var lion3:Lion?
    var lion4:Lion?
    var lion5:Lion?
    

    var bear:Bear?
    var bear2:Bear?
    var bear3:Bear?
    var bear4:Bear?
    var bear5:Bear?
    
    
    var turtle:Turtle?
    var turtle2:Turtle?
    var turtle3:Turtle?
    var turtle4:Turtle?
    var turtle5:Turtle?
    
    var horse:Horse?
    var horse2:Horse?
    var horse3:Horse?
    var horse4:Horse?
    var horse5:Horse?
    
    var gameOverLabel = SKLabelNode(text: "")
    var score = SKLabelNode(text: "Money Won")
    var lb1 = SKLabelNode(text: "")
    var lb2 = SKLabelNode(text: "")
    var quit = SKLabelNode(text: "Exit Game")
    var moneyLabel = SKLabelNode(text: "")
    var play = SKLabelNode(text: "Play")
    var status = SKLabelNode(text: "Status")
    var x:Int = 3
    var ownedMoney:Int = 1000
    var doubleTab:Bool = false
    
    
    override func didMove(to view: SKView) {
        
        do {
            let sounds:[String] = ["win", "lose"]
            for sound in sounds {
                let path:String = Bundle.main.path(forResource: sound, ofType: "mp3")!
                let url: URL = URL(fileURLWithPath: path)
                let player:AVAudioPlayer = try AVAudioPlayer(contentsOf: url)
                player.prepareToPlay()
            }
        } catch {
        }

        score.name = "score"
        score.position.x = 0
        score.position.y = 450
        score.fontColor = UIColor.yellow
        score.fontSize = 40.0
        score.zPosition = 5
        score.fontName = "Arial Bold"
       // score.text = "Your Score is : 0"
        addChild(score)
        
        status.name = "status"
        status.position.x = 0
        status.position.y = 300
        status.fontColor = UIColor.red
        status.fontSize = 40.0
        status.zPosition = 5
        status.fontName = "Arial Bold"
        status.text = "Total Money : " + String(ownedMoney)
        addChild(status)
        
        gameOverLabel.name = "gameOverLabel"
        gameOverLabel.position.x = 0
        gameOverLabel.position.y = 0
        gameOverLabel.fontColor = UIColor.red
        gameOverLabel.fontSize = 100.0
        gameOverLabel.zPosition = 5
        gameOverLabel.fontName = "Arial Bold"
        
       
        

      
        lion = Lion()
        lion2 = Lion()
        lion3 = Lion()
        lion4 = Lion()
        lion5 = Lion()
        lion!.position = CGPoint(x: -250.0, y: 0)
        addChild(lion!)
        
        bear = Bear()
        bear2 = Bear()
        bear3 = Bear()
        bear4 = Bear()
        bear5 = Bear()
        bear!.position = CGPoint(x: -80, y: 0)
        addChild(bear!)
        
        horse = Horse()
        horse2 = Horse()
        horse3 = Horse()
        horse4 = Horse()
        horse5 = Horse()
        horse!.position = CGPoint(x: 80, y: 0)
        addChild(horse!)
        
        turtle = Turtle()
        turtle2 = Turtle()
        turtle3 = Turtle()
        turtle4 = Turtle()
        turtle5 = Turtle()
        turtle!.position = CGPoint(x: 250.0, y: 0)
        addChild(turtle!)
        
       
        
        play.name = "play"
        play.position.x = 0
        play.position.y = -300
        play.fontColor = UIColor.green
        play.fontSize = 60.0
        play.zPosition = 5
        play.fontName = "Arial Bold"
        addChild(play)
        
        quit.name = "quit"
        quit.position.x = 0
        quit.position.y = -450
        quit.fontColor = UIColor.red
        quit.fontSize = 60.0
        quit.zPosition = 5
        quit.fontName = "Arial Bold"
        addChild(quit)
        
        

    }
    
    
    func touchDown(atPoint pos : CGPoint) {
 
    }
    
    func touchMoved(toPoint pos : CGPoint) {

    }
    
    func touchUp(atPoint pos : CGPoint) {

    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        for touch in touches {
            let location = touch.location(in: self)
            let touchedNode = atPoint(location)
            if touchedNode.name == "play" {
                //Random Number Generated between 1 and 4
                
                gameOverLabel.removeFromParent()
                winCheckArray.removeAll()
                lion?.removeFromParent()
                lion2?.removeFromParent()
                lion3?.removeFromParent()
                lion4?.removeFromParent()
                lion5?.removeFromParent()
                bear?.removeFromParent()
                bear2?.removeFromParent()
                bear3?.removeFromParent()
                bear4?.removeFromParent()
                bear5?.removeFromParent()
                horse?.removeFromParent()
                horse2?.removeFromParent()
                horse3?.removeFromParent()
                horse4?.removeFromParent()
                horse5?.removeFromParent()
                turtle?.removeFromParent()
                turtle2?.removeFromParent()
                turtle3?.removeFromParent()
                turtle4?.removeFromParent()
                turtle5?.removeFromParent()
                
                if(ownedMoney < 100) {
                    print("Game Over")
                    gameOverLabel.name = "gameOverLabel"
                    gameOverLabel.position.x = 0
                    gameOverLabel.position.y = 0
                    gameOverLabel.fontColor = UIColor.white
                    gameOverLabel.fontSize = 100.0
                    gameOverLabel.zPosition = 5
                    gameOverLabel.fontName = "Arial Bold"
                    gameOverLabel.text = "GAME OVER"
                    play.text = "Press to Play Again"
                    addChild(gameOverLabel)
                    
                   if ((touchedNode.name == "play") && doubleTab) {
                        
                        if let gameScene = GameScene(fileNamed: "GameScene") {
                            gameScene.scaleMode = .aspectFill
                            view?.presentScene(gameScene)
                        }
                        
                   } else if ((touchedNode.name == "play") && (doubleTab == false) ){
                        doubleTab = true
                    }
                    
                    
                }
                    
                else {
                ownedMoney -= 100
                
                for n in 1...4 {
                    let number = Int.random(in: 1 ..< 5)
                    if (n==1) {
                        switch number {
                            case 1:
                                
                                    winCheckArray.append("Lion")
                                    lion2!.position = CGPoint(x: -250.0, y: 0.0)
                                    addChild(lion2!)
                            case 2:
                                
                                    winCheckArray.append("Bear")
                                    bear2!.position = CGPoint(x: -250.0, y: 0.0)
                                    addChild(bear2!)
                            case 3:
                                
                                    winCheckArray.append("Horse")
                                    horse2!.position = CGPoint(x: -250.0, y: 0.0)
                                    addChild(horse2!)
                            case 4:
                                
                                    winCheckArray.append("Turtle")
                                    turtle2!.position = CGPoint(x: -250.0, y: 0.0)
                                    addChild(turtle2!)

                        default:
                            print("Something is Wrong")
                            
                        }
                    }
                    
                    else if (n==2) {
                        switch number {
                        case 1:
                            
                                winCheckArray.append("Lion")
                                lion3!.position = CGPoint(x: -80.0, y: 0.0)
                                addChild(lion3!)
                        case 2:
                            
                                winCheckArray.append("Bear")
                                bear3!.position = CGPoint(x: -80.0, y: 0.0)
                                addChild(bear3!)
                        case 3:
                            
                                winCheckArray.append("Horse")
                                horse3!.position = CGPoint(x: -80.0, y: 0.0)
                                addChild(horse3!)
                        case 4:
                            
                                winCheckArray.append("Turtle")
                                turtle3!.position = CGPoint(x: -80.0, y: 0.0)
                                addChild(turtle3!)
                        default:
                            print("Something is Wrong")
                            
                        }
                    }
                    
                    else if (n==3) {
                        switch number {
                        case 1:
                            
                                winCheckArray.append("Lion")
                                lion4!.position = CGPoint(x: 80.0, y: 0.0)
                                addChild(lion4!)
                        case 2:
                            
                                winCheckArray.append("Bear")
                                bear4!.position = CGPoint(x: 80.0, y: 0.0)
                                addChild(bear4!)
                        case 3:
                            
                                winCheckArray.append("Horse")
                                horse4!.position = CGPoint(x: 80.0, y: 0.0)
                                addChild(horse4!)
                        case 4:
                            
                                winCheckArray.append("Turtle")
                                turtle4!.position = CGPoint(x: 80.0, y: 0.0)
                                addChild(turtle4!)
                        default:
                            print("Something is Wrong")
                            
                        }
                    }
                    
                    if (n==4) {
                        switch number {
                        case 1:
                            
                                winCheckArray.append("Lion")
                                lion5!.position = CGPoint(x: 250.0, y: 0.0)
                                addChild(lion5!)
                        case 2:
                            
                                winCheckArray.append("Bear")
                                bear5!.position = CGPoint(x: 250.0, y: 0.0)
                                addChild(bear5!)
                        case 3:
                            
                                winCheckArray.append("Horse")
                                horse5!.position = CGPoint(x: 250.0, y: 0.0)
                                addChild(horse5!)
                        case 4:
                            
                                winCheckArray.append("Turtle")
                                turtle5!.position = CGPoint(x: 250.0, y: 0.0)
                                addChild(turtle5!)
                        default:
                            print("Something is Wrong")
                            
                        }
                    }
                    
                }
                
                // check If there is a win condition!
       
                print(winCheckArray)
                
                if((winCheckArray[0] == winCheckArray[1]) && (winCheckArray[1] == winCheckArray[2]) && (winCheckArray[2] == winCheckArray[3]))
                {
                   
                    ownedMoney += 400
                    score.text = "You won : 400 "
                    self.run(SKAction.playSoundFileNamed("win", waitForCompletion: false))
                    print(ownedMoney)
                }
                else if(((winCheckArray[0] == winCheckArray[1]) && (winCheckArray[1] == winCheckArray[2])) || ((winCheckArray[1] == winCheckArray[2]) && (winCheckArray[2] == winCheckArray[3])))
                    
                {
                    
                    ownedMoney += 300
                    score.text = "You won : 300 "
                    self.run(SKAction.playSoundFileNamed("win", waitForCompletion: false))
                    print(ownedMoney)
                }
             /*  else if((winCheckArray[0] == winCheckArray[1]) || (winCheckArray[1] == winCheckArray[2]) || (winCheckArray[2] == winCheckArray[3]))
               
                {
                    
                    //ownedMoney += 200
                   // score.text = "You won : 200 "
                    print(ownedMoney)
                }
             */
                else {
                    score.text = "You Lost : 200 "
                    self.run(SKAction.playSoundFileNamed("lose", waitForCompletion: false))
                }
                status.text = "Total Money : " + String(ownedMoney)
           
                }
                
            }
            else if touchedNode.name == "quit"
            {
                exit(0)
            }
        }


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
