//
//  ViewController.swift
//  calculator
//
//  Created by ETHAN LAUDICK on 9/8/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var dragCircle: UIImageView!
    @IBOutlet weak var dragSquare: UIImageView!
    @IBOutlet weak var dragTriangle: UIImageView!
    @IBOutlet weak var ogImageOutlet: UIImageView!
    @IBOutlet weak var clickSquare: UIImageView!
    @IBOutlet weak var clickCircle: UIImageView!
    @IBOutlet weak var clickTriangle: UIImageView!
    
    var currImageC = "circle"
    var currImageS = "square"
    var currImageT = "triangle"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func viewControllerTapGestureRecognizer(_ sender: UITapGestureRecognizer) {
        let loc = sender.location(in: view)
        ogImageOutlet.center = loc
    }
    
    @IBAction func dragTrianglePanGesture(_ sender: UIPanGestureRecognizer) {
        let loc = sender.location(in: view)
        dragTriangle.center = loc
    }
        
    @IBAction func dragSquarePanGesture(_ sender: UIPanGestureRecognizer) {
        let loc = sender.location(in: view)
        dragSquare.center = loc
    }
    
    @IBAction func dragCirclePanGesture(_ sender: UIPanGestureRecognizer) {
        let loc = sender.location(in: view)
        dragCircle.center = loc
    }
    
    @IBAction func clickSquare(_ sender: UITapGestureRecognizer) {
        var x = pickRandomShape()
        while currImageS == x {
            x = pickRandomShape()
        }
        currImageS = x
        clickSquare.image = UIImage(systemName: x)
    }
    
    @IBAction func clickTriangle(_ sender: UITapGestureRecognizer) {
        var x = pickRandomShape()
        while currImageT == x {
            x = pickRandomShape()
        }
        currImageT = x
        clickTriangle.image = UIImage(systemName: x)
    }
    
    @IBAction func clickCircle(_ sender: UITapGestureRecognizer) {
        var x = pickRandomShape()
        while currImageC == x {
            x = pickRandomShape()
        }
        currImageC = x
        clickCircle.image = UIImage(systemName: x)
    }
    
    
    func pickRandomShape() -> String{
        let x = Int.random(in: 1...3)
        
        switch x {
        case 1:
            return "circle"
        case 2:
            return "square"
        case 3:
            return "triangle"
        default:
            return "circle"
        }
    }
    
    
}

