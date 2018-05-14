//
//  SpellDataViewController.swift
//  Wand1
//
//  Created by Jack Sexton on 4/20/18.
//  Copyright © 2018 Jack Sexton. All rights reserved.
//

import UIKit
import AVFoundation

class SpellDataViewController: UIViewController
{

    @IBOutlet weak var nameLabel: UITextField!
    @IBOutlet weak var descriptionLabel: UITextField!
    
    var nameX: CGFloat = 0.0
    var descriptionX: CGFloat = 0.0
    
    var spell = Spell(name: "", description: "", soundName: "")
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        //save original location
        nameX = nameLabel.frame.x
        descriptionX = descriptionLabel.frame.x
        
        
    }
    
    override func viewWillAppear(_ animated: Bool)
    {
       // nameLabel.frame.x = frame.width.x
       // descriptionLabel.frame.x = frame.width.x
        
        UIView.animate(withDuration: 0.5, animations: {nameLabel.frame.x = nameX}, completion: true)
        
        UIView.animate(withDuration: 0.25,delay:0.25 animations: {nameLabel.frame.x = nameX}, completion: true)
    }
    
    //Play Sound Method I had written in notes, did not memorize


    @IBAction func viewSwiped(_ sender: UISwipeGestureRecognizer)
    {
        //Play sound function
        UIView.animate(withDuration: 0.1, animations: {UIViewController.background = UIColor.red}, completion: true){background = UIColor.white}
        
        
    }
    

}
