//
//  GameViewController.swift
//  GameForCats
//
//  Created by Alexander Kononok on 9/27/20.
//

import UIKit

class GameViewController: UIViewController {
  
  
  @IBOutlet weak var fieldForBallView: UIView!
  @IBOutlet weak var ballButton: UIButton!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    ballButton.backgroundColor = .yellow
    ballButton.layer.cornerRadius = ballButton.frame.width / 2
    view.backgroundColor = #colorLiteral(red: 0.2270011144, green: 0.07364797263, blue: 0.5994804886, alpha: 1)
  }
  
  @IBAction func backToMainViewButtonPressed(_ sender: Any) {
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    let viewController = storyboard.instantiateViewController(identifier: String(describing: ViewController.self)) as! ViewController
    
    viewController.modalPresentationStyle = .fullScreen
    self.present(viewController, animated: true)
  }
  
  @IBAction func ballButtonPressed(_ sender: Any) {
    generateRandomCoords()
  }
  
  func generateRandomCoords() -> (CGFloat, CGFloat) {
    ballButton.frame.origin.x = CGFloat.random(in: 0...fieldForBallView.frame.width - ballButton.frame.width)
    ballButton.frame.origin.y = CGFloat.random(in: 0...fieldForBallView.frame.height - ballButton.frame.height)
    return (ballButton.frame.origin.x, ballButton.frame.origin.y)
  }
  
}
