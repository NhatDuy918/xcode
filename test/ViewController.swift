//
//  ViewController.swift
//  test
//
//  Created by Cntt02 on 4/8/17.
//  Copyright © 2017 Cntt02. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var txt_a: UITextField!
    @IBOutlet var txt_b: UITextField!
    @IBOutlet var txt_c: UITextField!
    @IBOutlet var button_giai: UIButton!
    
    @IBOutlet var txt_ketqua: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func quadraticSolver(a: Double, b: Double, c: Double) -> String {
        if abs(a) < 0.00001 {
            let X = -c/b
            return "X = \(X)"
        }
        let b2_4ac = b*b - (4*a*c)
        if b2_4ac == 0 {
            let result = -b/(2*a)
            return "PT có 1 nghiệm\(result)"
        }
        if b2_4ac < 0 {
            return "Pt Vô nghiệm"
        }
        let sq = sqrt(b2_4ac)
        let x1 = (-b + sq) / (2 * a)
        let x2 = (-b - sq) / (2 * a)
        return "X 1 = \(x1)\nX 2 = \(x2)"
    }

    
    @IBAction func button_giai_Action(_ sender: Any) {
        view.endEditing(true)
        let a : Float = Float(txt_a.text!)!
        let b : Float = Float(txt_b.text!)!
        let c : Float = Float(txt_c.text!)!
        let button_giai = quadraticSolver(a: Double(a), b: Double(b), c: Double(c))
        txt_ketqua.text = button_giai
        
    }


}

