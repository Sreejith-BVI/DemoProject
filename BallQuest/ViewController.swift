//
//  ViewController.swift
//  BallQuest
//
//  Created by Dipesh Patel on 06/12/23.
//

import UIKit
import SpriteKit

class ViewController: UIViewController {

  var gameScene: GameScene?

      override func loadView() {
          super.loadView()
          self.view = SKView()
          self.view.bounds = UIScreen.main.bounds
      }

      override func viewDidAppear(_ animated: Bool) {
          super.viewDidAppear(animated)
          setupScene()
      }

      func setupScene() {
          if let view = self.view as? SKView, gameScene == nil {
              let scene = GameScene(size: view.bounds.size)
              view.presentScene(scene)
              self.gameScene = scene
          }
      }

      override var prefersStatusBarHidden: Bool {
          return true
      }

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }


}

