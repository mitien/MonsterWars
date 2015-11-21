//
//  HowToPlayScene.swift
//  MonsterWars
//
//  Created by Dmytro Usik on 11/21/15.
//  Copyright © 2015 Razeware LLC. All rights reserved.
//

import Foundation
import SpriteKit

class HowToPlayScene: SKScene {

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
        
        
        let label = SKLabelNode(fontNamed: "Courier-Bold")
        label.fontSize = 40
        label.fontColor = SKColor.blackColor()
        label.position = CGPoint(x: size.width * 0.5, y: size.height * 0.5)
        label.zPosition = 1
        label.verticalAlignmentMode = .Center
        label.text = "rules goes here"
        
        self.addChild(label)
        
        
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        backToMainMenu()
    }
    
    func backToMainMenu(){
        
        runAction(SKAction.sequence([
            SKAction.runBlock(){
                let reveal = SKTransition.flipHorizontalWithDuration(0.5)
                let scene = MainMenuScene(size:self.size)
                self.view?.presentScene(scene, transition:reveal)
            }]
            ))
    }
        
}