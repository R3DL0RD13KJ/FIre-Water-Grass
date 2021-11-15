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
    
    @IBOutlet var elementPick: [UILabel]!
    
    @IBOutlet weak var elementChoices: UIStackView!
    
    
    var elementFire = "Fire"
    var elementWater = "Water"
    var elementGrass = "Grass"
    
    var counter = 0
    
    
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func whenTapped(_ sender: Any)
    {
        
    }
    
    
    

}

