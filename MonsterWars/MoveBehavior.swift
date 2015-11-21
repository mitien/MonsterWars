//
//  MoveBehavior.swift
//  MonsterWars
//
//  Created by Dmytro Usik on 11/21/15.
//  Copyright © 2015 Razeware LLC. All rights reserved.
//

import GameplayKit
import SpriteKit

class MoveBehavior: GKBehavior {
    
    init(targetSpeed: Float, seek: GKAgent, avoid: [GKAgent]){
        super.init()
        
        if targetSpeed > 0 {
            
            setWeight(0.1, forGoal: GKGoal(toReachTargetSpeed: targetSpeed))
            
            setWeight(0.5, forGoal: GKGoal(toSeekAgent: seek))
            
            setWeight(1.0, forGoal: GKGoal(toAvoidAgents: avoid, maxPredictionTime: 1.0))
        }
    }
}
