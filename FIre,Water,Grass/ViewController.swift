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
    
    @IBOutlet weak var winnerLabel: UILabel!
    
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
        let fireImage = UIImage(named: "Fire")
        let grassImage = UIImage(named: "Grass")
        let waterImage = UIImage(named: "Water")
        
        let images = [fireImage, grassImage, waterImage] as! [UIImage]
    }

    @IBAction func whenTapped(_ sender: Any)
    {
        
        let seleectedpoint = (sender as AnyObject).location(in: elementChoices)
        for image in optionalPicks
        {
            if image.frame.contains(seleectedpoint)
            {
                let userPicks = image.tag
                if userPicks == 0
                {
                    yourElementChoice.text = "Fire"
                }
                if userPicks == 1
                {
                    yourElementChoice.text = "Grass"
                }
                if userPicks == 2
                {
                    yourElementChoice.text = "Water"
                }
            }
            
            
        }
        
        
        let randomNumber = Int.random(in: 0...2)
        if randomNumber == 0
        {
            randomAIElement.text = "Fire"
            
        }
        if randomNumber == 1
        {
            randomAIElement.text = "Grass"
            
        }
        if randomNumber == 2
        {
            randomAIElement.text = "Water"
            
        }
        
        if randomNumber == 0 &&  userPicks == 0
        {
            winnerLabel.text = "Thats a Draw"
        }
        else if randomNumber == 1 && userPicks == 1
        {
            winnerLabel.text = "Thats a Draw"
        }
        else if randomNumber == 2 && userPicks == 2
        {
            winnerLabel.text = "Thats a Draw"
        }
        else if randomNumber == 0 && userPicks == 1
        {
            winnerLabel.text = "You Lose"
        }
        else if randomNumber == 1 && userPicks == 2
        {
            winnerLabel.text = "You Lose"
        }
        else if randomNumber == 2 && userPicks == 0
        {
            winnerLabel.text = "You Lose"
        }
        else if randomNumber == 0 && userPicks == 2
        {
            winnerLabel.text = "You Win"
        }
        else if randomNumber == 1 && userPicks == 0
        {
            winnerLabel.text = "You Win"
        }
        else if randomNumber == 2 && userPicks == 1
        {
            winnerLabel.text = "You Win"
        }
        
        
    }
    
    
}
