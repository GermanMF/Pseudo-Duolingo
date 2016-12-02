//
//  ViewController.swift
//  Duolingo
//
//  Created by Usuario on 12/1/16.
//  Copyright © 2016 Usuario. All rights reserved.
//

import UIKit
import Darwin

class ViewController: UIViewController {

    @IBOutlet weak var bIdioma: UIButton!
    @IBOutlet weak var randomLabel: UILabel!
    @IBOutlet weak var iV: UIImageView!
    @IBOutlet weak var tF: UITextField!
    var rand = 0
    var iE = 2 , iI = 1
    
    override func viewDidLoad() {
        fill()
        super.viewDidLoad()
        
    }

    func fill(){
        rand = Int(arc4random_uniform(20))
        randomLabel.text = mainPage.thingsArr().words[rand][iE].capitalized
        iV.image = UIImage(named: mainPage.thingsArr().words[rand][0])
    }
    
    @IBAction func wordTyped(_ sender: Any) {
        if(tF.text == mainPage.thingsArr().words[rand][iI].lowercased()){
            randomLabel.text = mainPage.thingsArr().cheers[Int(arc4random_uniform(UInt32(mainPage.thingsArr().cheers.count)-1))]
            tF.text = ""
            
        }
        else{
            randomLabel.text = mainPage.thingsArr().wrong[Int(arc4random_uniform(UInt32(mainPage.thingsArr().wrong.count)-1))]
            tF.text = ""
        }
    }
    
    @IBAction func refreshWord(_ sender: Any) {
        fill()
        tF.text = ""
    }
    @IBAction func idioma(_ sender: Any) {
        if(iE == 2){
            iE = 1
            iI = 2
            bIdioma.setTitle("Español", for: UIControlState.normal)
        }
        else{
            iE = 2
            iI = 1
            bIdioma.setTitle("Inglés", for: UIControlState.normal)
        }
        fill()
        tF.text = ""
    }
}

