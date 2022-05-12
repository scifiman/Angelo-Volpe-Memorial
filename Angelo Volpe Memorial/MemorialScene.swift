//
//  MemorialScene.swift
//  Angelo Volpe Memorial
//
//  Created by Rippy, Jeff on 5/12/22.
//

import Foundation
import SpriteKit
import GameplayKit

class MemorialScene: SKScene {
    override func didMove(to view: SKView) {
        let background = SKSpriteNode(imageNamed: "TechExpress")
//        background.texture = SKTexture(imageNamed: "AngeloVolpe.png")
//        background.size = frame.size
        background.position = CGPoint(x: frame.midX, y: frame.midY)
        addChild(background)

        let textLabel = SKLabelNode(text: "This is text")
        textLabel.position = CGPoint(x: frame.midX, y: frame.midY - 200)
        addChild(textLabel)
    }
}
