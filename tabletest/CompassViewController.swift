//
//  ViewController.swift
//  tabletest
//
//  Created by Placoderm on 7/10/17.
//  Copyright © 2017 Placoderm. All rights reserved.
//

import UIKit

class CompassViewController: UIViewController {

    @IBAction func compassButtonPressed(_ sender: UIButton) {
        print(sender.tag)
        performSegue(withIdentifier: "mainSegue", sender: sender)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //get sender
        if let send_me = sender as! UIButton? {
            let directionViewController = segue.destination as! DirectionViewController
            directionViewController.direction = send_me.tag //get sender tag
            print ("send me: \(send_me.tag)")
            print ("directionViewController: \(directionViewController.direction!)")
        }
        
    }
    //unwind segue
    @IBAction func unwindToCompassView(sender: UIStoryboardSegue)
    {
        let sourceViewController = sender.source
        print(sourceViewController)
        // Pull any data from the view controller which initiated the unwind segue.
    }

    
}

