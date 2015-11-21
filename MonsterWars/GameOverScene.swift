//
//  GameOverScene.swift
//  MonsterWars
//
//  Created by Dmytro Usik on 11/21/15.
//  Copyright © 2015 Razeware LLC. All rights reserved.
//

import Foundation
import SpriteKit

class GameOverScene: SKScene {
    init(size: CGSize, won:Bool) {
        super.init(size:size)
        
        
        // Add background
        let background = SKSpriteNode(imageNamed: "background")
        background.position = CGPoint(x: size.width/2, y: size.height/2)
        background.zPosition = -1
        addChild(background)
        
        
        let message = won ? "You Won😃" : "You Lose😭"
        
        let label = SKLabelNode(fontNamed: "Courier-Bold")
        label.text  = message
        label.fontSize = 40
        label.fontColor  = SKColor.blackColor()
        label.position = CGPoint(x: size.width/2 , y: size.height/2)
        label.setScale(0)
    
        addChild(label)
        
        let scaleAction = SKAction.scaleTo(1.0, duration: 0.5)
        scaleAction.timingMode = SKActionTimingMode.EaseInEaseOut
        label.runAction(scaleAction)
        
        
        
        runAction(SKAction.sequence([
            SKAction.waitForDuration(3.0),
            SKAction.runBlock(){
                let reveal = SKTransition.flipHorizontalWithDuration(0.5)
                let scene = MainMenuScene(size: size)
                self.view?.presentScene(scene, transition:reveal)
            }]
        ))
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
