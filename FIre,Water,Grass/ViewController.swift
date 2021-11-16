//
//  ViewController.swift
//  FIre,Water,Grass
//
//  Created by Kenneth Johnson on 11/11/21.
//

import UIKit

class ViewController: UIViewController
{

    @IBOutlet weak var randomAIElement: UILabel!
    
    @IBOutlet weak var yourElementChoice: UILabel!
    
    @IBOutlet var optionalPicks: [UIImageView]!
    
    @IBOutlet weak var elementChoices: UIStackView!
    
    
    var elementFire = "Fire"
    var elementWater = "Water"
    var elementGrass = "Grass"
    
    var userPicks = 0
    var AIpicks = 0
    
    var images:[String] = []
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let fireImage = String(named: "Fire")
        let grassImage = String(named: "Grass")
        let waterImage = String(named: "Water")
        
        let images = [fireImage, grassImage, waterImage]
        //as! [UIImage]
    }

    @IBAction func whenTapped(_ sender: Any)
    {
        
        let seleectedpoint = (sender as AnyObject).location(in: elementChoices)
        for image in optionalPicks
        {
            if image.frame.contains(seleectedpoint)
            {
                userPicks = view.tag
                yourElementChoice
            }
        }
    }
    
    
}
