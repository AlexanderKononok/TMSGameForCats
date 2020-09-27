//
//  ViewController.swift
//  GameForCats
//
//  Created by Alexander Kononok on 9/27/20.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var startGameButton: UIButton!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    startGameButton.layer.cornerRadius = startGameButton.frame.width / 2
    startGameButton.backgroundColor = .yellow
    view.backgroundColor = .purple
    let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
    backgroundImage.image = UIImage(named: "catsBG")
    backgroundImage.contentMode = UIView.ContentMode.scaleAspectFill
    self.view.insertSubview(backgroundImage, at: 0)
  }
  
  @IBAction func startGameButtonPressed(_ sender: Any) {
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    let gameViewController = storyboard.instantiateViewController(identifier: String(describing: GameViewController.self)) as! GameViewController
    
    gameViewController.modalPresentationStyle = .fullScreen
    self.present(gameViewController, animated: true)
  }
  
}

