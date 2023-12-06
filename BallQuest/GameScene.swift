//
//  GameScene.swift
//  BallQuest
//
//  Created by Dipesh Patel on 06/12/23.
//

import Foundation
import SpriteKit
import GameplayKit



class GameScene: SKScene, SKPhysicsContactDelegate {
    override func didMove(to view: SKView) {
        self.backgroundColor = .cyan
      setupGame()
    }

  func setupGame() {
    guard let view = self.view else { return }

    let ball = SKShapeNode(circleOfRadius: 20)
    ball.physicsBody = SKPhysicsBody(circleOfRadius: 20)
    ball.physicsBody?.mass = 1

    // Put it in the center of the screen and make it white
    ball.position = CGPoint(x: view.frame.midX, y: view.frame.midY)
    ball.fillColor = .white

    addChild(ball)

    // Create the ground which looks and acts like a rectangle at the bottom of the screen
    let sliderHeight: CGFloat = 20
    let size = CGSize(width: view.frame.size.width / 3, height: sliderHeight)
    let slider = SKShapeNode(rectOf: size)
    slider.physicsBody = SKPhysicsBody(rectangleOf: size)

    // Put the ground on the bottom of the screen and make it brown
    slider.position = CGPoint(x: view.frame.midX, y: sliderHeight / 2)
    slider.fillColor = .brown

    // The ground is not affected by gravity and doesn't move
    slider.physicsBody?.isDynamic = false
      slider.physicsBody?.restitution = 1.2
    slider.physicsBody?.friction = 0
    slider.physicsBody?.affectedByGravity = false
    slider.physicsBody?.applyImpulse(CGVector(dx: 20, dy: 15))
    addChild(slider)
  }
}


