//
//  ViewController.swift
//  War
//
//  Created by Alper alanyalı on 27.11.2017.
//  Copyright © 2017 Alper alanyalı. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var rightImageView: UIImageView!
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    var cardNames = ["card2","card3","card4","card5","card6","card7","card8","card9","card10","jack","queen","king","ace"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func dealTapped(_ sender: Any) {
        let leftNumber: Int = Int(arc4random_uniform(12) ) // soldaki kart için random sayı yapma ( 0 ile 12 arası için)
        let rightNumber: Int = Int(arc4random_uniform(12) )// sağdaki kart için random sayı yapma ( 0 ile 12 arası için)
        
        leftImageView.image = UIImage(named: cardNames[leftNumber]) // Soldaki kartın görüntüsünü oluşturuyoruz.
        rightImageView.image = UIImage(named: cardNames[rightNumber]) // Sağdaki kartın görüntüsü oluşturuyoruz.
        
        
        if leftNumber > rightNumber{
            leftScore += 1
            leftScoreLabel.text = String(leftScore)
            
        } else if leftNumber == rightNumber{
            
        }
        else {
            rightScore += 1
            rightScoreLabel.text = String(rightScore)
            
            
        }
    }
    
    
}

