//
//  MainMenuScene.swift
//  MonsterWars
//
//  Created by Dmytro Usik on 11/21/15.
//  Copyright © 2015 Razeware LLC. All rights reserved.
//

import Foundation
import SpriteKit

class MainMenuScene: SKScene {
    
    // Buttons
    var startGameButton: MainMenuButtonNode!
    var howToPlayButton: MainMenuButtonNode!
    
    // Constants
    let margin = CGFloat(30)
    
    override func didMoveToView(view: SKView) {
        
        // Start background music
        let bgMusic = SKAudioNode(fileNamed: "Latin_Industries.mp3")
        bgMusic.autoplayLooped = true
        addChild(bgMusic)
        
        
        // Add background
        let background = SKSpriteNode(imageNamed: "background")
        background.position = CGPoint(x: size.width/2, y: size.height/2)
        background.zPosition = -1
        addChild(background)
        
        let castleNode = SKSpriteNode(imageNamed: "castle1_atk")
        castleNode.size = CGSize(width: 500, height: 500)
        castleNode.position = CGPoint(x:size.width*0.5, y:margin * 6 + size.height*0.5)
        addChild(castleNode)
        
        
        // Add start game button
        startGameButton = MainMenuButtonNode(text: "Start Game", onButtonPress: startGameButtonPressed)
        startGameButton.position = CGPoint(x: size.width * 0.5, y: margin * 5 + startGameButton.size.height / 2)
        startGameButton.size = CGSize(width: 400,height: 100)
        addChild(startGameButton)
        
        // Add start game button
        howToPlayButton = MainMenuButtonNode(text: "How to Play", onButtonPress: howToPlayButtonPressed)
        howToPlayButton.position = CGPoint(x: size.width * 0.5, y: margin * 1.5 + howToPlayButton.size.height / 2)
        howToPlayButton.size = CGSize(width: 400,height: 100)
        addChild(howToPlayButton)

        
    }
   
    func startGameButtonPressed(){
        print("start game button pressed")
       
        runAction(SKAction.sequence([
            SKAction.waitForDuration(0.1),
            SKAction.runBlock(){
                let reveal = SKTransition.flipHorizontalWithDuration(0.5)
                let scene = GameScene(size: self.size)
                self.view?.presentScene(scene, transition:reveal)
            }]
        ))
    }
    
    func howToPlayButtonPressed(){
        print("how to play pressed")
        runAction(SKAction.sequence([
            SKAction.runBlock(){
                let reveal = SKTransition.flipHorizontalWithDuration(0.5)
                let scene = HowToPlayScene(size: self.size)
                self.view?.presentScene(scene, transition:reveal)
            }]
            ))
    }
    
}
