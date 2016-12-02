//
//  nivel2.swift
//  Duolingo
//
//  Created by Usuario on 12/2/16.
//  Copyright © 2016 Usuario. All rights reserved.
//

import UIKit

class nivel2: UIViewController {

    var usedNumber = [Int]()
    
    @IBOutlet weak var sdfsdsdf: UIButton!
    
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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    func start(){
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
