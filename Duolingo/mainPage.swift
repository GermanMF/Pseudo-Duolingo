//
//  mainPage.swift
//  Duolingo
//
//  Created by Usuario on 12/1/16.
//  Copyright © 2016 Usuario. All rights reserved.
//

import UIKit
import Darwin

class mainPage: UIViewController {

    
    
    struct thingsArr {
        let words = [[String]]([["ant.png","ant","hormiga"], ["apple.png","apple","manzana"], ["car.png","car","carro"],["cat.jpg","cat","gato"],["chair.png","chair","mesa"],["chicken.png","chicken","pollo"],["dog.png","dog","perro"],["door.png","door","puerta"],["eva.png","eva","eva"],["flower.png","flower","flor"],["handkerchief.png","handkerchief","pañuelo"],["notebook.png","notebook","libreta"],["pineapple.png","pineapple","piña"],["red.png","red","rojo"],["run.png","run","correr"],["sandwich.png","sandwich","emparedado"],["sweater.png","sweater","sueter"],["table.png","table","mesa"],["tree.png","tree","arbol"],["window.png","window","ventana"]])
        
        let cheers = [String](["Well Done!", "¡Bien!", "Sigue así", "¡Ay canijote!", "Al Ferras le gusta esto","Pongame 100 profe", "Nice!","El peluca sapeee"])
        let wrong = [String](["Nope", "Keep practicing", "Wrong", "Bad", "Ño", "Burro", "Tache", "Espantosa equis", "X", "Aveda, ¿qué dijo?","k pzo amijito? xDXxD","Ay muchas cosas wuuuu"])
    }
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
