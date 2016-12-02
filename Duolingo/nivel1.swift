//
//  nivel1.swift
//  Duolingo
//
//  Created by Usuario on 12/1/16.
//  Copyright © 2016 Usuario. All rights reserved.
//

import UIKit


class nivel1: UIViewController {

    var usedNumber = [Int]()
    
    
    func rand() -> Int {
        var random = 0
        while(true){
            random = Int(arc4random_uniform(20))
            if(!usedNumber.contains(random)){
                usedNumber.append(random)
                break;
            }
        }
        return usedNumber.last!
    }
    
    
    
    var b = [Bool](repeating: false, count: 4)
    var idioma = 2, idioma2 = 1, pos = 0
    
    @IBOutlet weak var labelRand: UILabel!
    
    
    @IBOutlet weak var l1: UILabel!
    @IBOutlet weak var l2: UILabel!
    @IBOutlet weak var l3: UILabel!
    @IBOutlet weak var l4: UILabel!
    
    @IBOutlet weak var bIdioma: UIButton!
    @IBOutlet weak var iV1: UIButton!
    @IBOutlet weak var iV3: UIButton!
    @IBOutlet weak var iV2: UIButton!
    @IBOutlet weak var iV4: UIButton!
    
    override func viewDidLoad() {
        start()
        super.viewDidLoad()
    }

    
    func start(){
        pos = rand()
        
        labelRand.text = mainPage.thingsArr().words[pos][idioma2].capitalized
        let rand1 = rand(), rand2 = rand(), rand3 = rand()
        
        switch arc4random_uniform(4){
        case 0:
            iV1.setImage(UIImage(named: mainPage.thingsArr().words[pos][0]), for: UIControlState.normal)
            iV2.setImage(UIImage(named: mainPage.thingsArr().words[rand1][0]), for: UIControlState.normal)
            iV3.setImage(UIImage(named: mainPage.thingsArr().words[rand2][0]), for: UIControlState.normal)
            iV4.setImage(UIImage(named: mainPage.thingsArr().words[rand3][0]), for: UIControlState.normal)
            l1.text = mainPage.thingsArr().words[pos][idioma]
            l2.text = mainPage.thingsArr().words[rand1][idioma]
            l3.text = mainPage.thingsArr().words[rand2][idioma]
            l4.text = mainPage.thingsArr().words[rand3][idioma]
            b[0] = true
            b[1] = false
            b[2] = false
            b[3] = false
            
        case 1:
            iV2.setImage(UIImage(named: mainPage.thingsArr().words[pos][0]), for: UIControlState.normal)
            iV1.setImage(UIImage(named: mainPage.thingsArr().words[rand1][0]), for: UIControlState.normal)
            iV3.setImage(UIImage(named: mainPage.thingsArr().words[rand2][0]), for: UIControlState.normal)
            iV4.setImage(UIImage(named: mainPage.thingsArr().words[rand3][0]), for: UIControlState.normal)
            l2.text = mainPage.thingsArr().words[pos][idioma]
            l1.text = mainPage.thingsArr().words[rand1][idioma]
            l3.text = mainPage.thingsArr().words[rand2][idioma]
            l4.text = mainPage.thingsArr().words[rand3][idioma]
            b[1] = true
            b[0] = false
            b[2] = false
            b[3] = false
        case 2:
            iV3.setImage(UIImage(named: mainPage.thingsArr().words[pos][0]), for: UIControlState.normal)
            iV2.setImage(UIImage(named: mainPage.thingsArr().words[rand1][0]), for: UIControlState.normal)
            iV1.setImage(UIImage(named: mainPage.thingsArr().words[rand2][0]), for: UIControlState.normal)
            iV4.setImage(UIImage(named: mainPage.thingsArr().words[rand3][0]), for: UIControlState.normal)
            l3.text = mainPage.thingsArr().words[pos][idioma]
            l2.text = mainPage.thingsArr().words[rand1][idioma]
            l1.text = mainPage.thingsArr().words[rand2][idioma]
            l4.text = mainPage.thingsArr().words[rand3][idioma]
            b[2] = true
            b[1] = false
            b[0] = false
            b[3] = false
        case 3:
            iV4.setImage(UIImage(named: mainPage.thingsArr().words[pos][0]), for: UIControlState.normal)
            iV2.setImage(UIImage(named: mainPage.thingsArr().words[rand1][0]), for: UIControlState.normal)
            iV3.setImage(UIImage(named: mainPage.thingsArr().words[rand2][0]), for: UIControlState.normal)
            iV1.setImage(UIImage(named: mainPage.thingsArr().words[rand3][0]), for: UIControlState.normal)
            l4.text = mainPage.thingsArr().words[pos][idioma]
            l2.text = mainPage.thingsArr().words[rand1][idioma]
            l3.text = mainPage.thingsArr().words[rand2][idioma]
            l1.text = mainPage.thingsArr().words[rand3][idioma]
            b[3] = true
            b[1] = false
            b[2] = false
            b[0] = false
        default:
            iV2.setImage(UIImage(named: mainPage.thingsArr().words[rand1][0]), for: UIControlState.normal)
            iV3.setImage(UIImage(named: mainPage.thingsArr().words[rand2][0]), for: UIControlState.normal)
            iV4.setImage(UIImage(named: mainPage.thingsArr().words[rand3][0]), for: UIControlState.normal)
        }

    }
    
    
    
    func ref(){
        labelRand.text = mainPage.thingsArr().cheers[Int(arc4random_uniform(UInt32(mainPage.thingsArr().cheers.count)-1))]
    }
    
    
    @IBAction func refreshTouch(_ sender: Any) {
        usedNumber.removeAll()
        start()
    }
    
    
    @IBAction func t1(_ sender: Any) {
        if(b[0]){
            ref()
        }
        else{
            labelRand.text = mainPage.thingsArr().wrong[Int(arc4random_uniform(UInt32(mainPage.thingsArr().wrong.count)-1))]
        }
    }

    
    @IBAction func t2(_ sender: Any) {
        if(b[1]){
            ref()
        }
        else{
            labelRand.text = mainPage.thingsArr().wrong[Int(arc4random_uniform(UInt32(mainPage.thingsArr().wrong.count)-1))]
        }
    }
    
    
    @IBAction func t3(_ sender: Any) {
        if(b[2]){
            ref()
        }
        else{
            labelRand.text = mainPage.thingsArr().wrong[Int(arc4random_uniform(UInt32(mainPage.thingsArr().wrong.count)-1))]
        }
    }
    
    
    @IBAction func t4(_ sender: Any) {
        if(b[3]){
            ref()
        }
        else{
            labelRand.text = mainPage.thingsArr().wrong[Int(arc4random_uniform(UInt32(mainPage.thingsArr().wrong.count)-1))]
        }
    }
    
    @IBAction func cambioIdioma(_ sender: Any) {
        if(idioma == 2){
            idioma = 1
            idioma2 = 2
            bIdioma.setTitle("Inglés", for: UIControlState.normal)
        }
        else {
            idioma = 2
            idioma2 = 1
            bIdioma.setTitle("Español", for: UIControlState.normal)
        }
        usedNumber.removeAll()
        start()
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
