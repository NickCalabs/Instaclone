//
//  ViewController.swift
//  Instaclone
//
//  Created by Nick on 3/29/15.
//  Copyright (c) 2015 Nick. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        Parse.setApplicationId("8c0ysEfAwS4cT6mPgcZCPwEE25TnArjuFdPEMt8o", clientKey: "URX33kJ5iQ33aD91bX8hYL8pWImeJ0RLYmyjz5kl")
        
        /*
        var score = PFObject(className: "score")
        score.setObject("Rob", forKey: "name")
        score.setObject("95", forKey: "number")
        score.saveInBackgroundWithBlock{
            (success: Bool!, error: NSError!) -> Void in
            
            if success == true {
                println("Score screated with ID: \(score.objectId)")
            } else {
                println(error)
            }
        }
        */
        
        var query = PFQuery(className: "score")
        query.getObjectInBackgroundWithId("g94yTwDBIl", block: { (score: PFObject!, error:NSError!) -> Void in
            if error == nil{
                //println(score.objectForKey("name"))
                score["name"] = "Robert"
                score["score"] = 137
                
                score.save()
            } else {
                println(error)
            }
        })

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

