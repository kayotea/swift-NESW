//
//  DirectionViewController.swift
//  tabletest
//
//  Created by Placoderm on 7/10/17.
//  Copyright © 2017 Placoderm. All rights reserved.
//

import UIKit

class DirectionViewController: UIViewController {

    var direction: Int? = 0

    @IBOutlet weak var directionButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Loaded")
        
        //get direction
        if let dir = self.direction {
            
            if dir == 1 {
                directionButton.setTitle("North", for: .normal)
            }
            else if dir == 2 {
                directionButton.setTitle("East", for: .normal)
            }
            else if dir == 3 {
                directionButton.setTitle("South", for: .normal)
            }
            else if dir == 4 {
                directionButton.setTitle("West", for: .normal)
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    


}
