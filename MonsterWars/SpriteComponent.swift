//
//  SpriteComponent.swift
//  MonsterWars
//
//  Created by Dmytro Usik on 11/21/15.
//  Copyright © 2015 Razeware LLC. All rights reserved.
//

import SpriteKit
import GameplayKit

class SpriteComponent: GKComponent {
    
    let node: SKSpriteNode
    
    init(entity: GKEntity, texture: SKTexture, size: CGSize) {
        node = SKSpriteNode(texture: texture, color: SKColor.whiteColor(), size: size)
    
    }
}




