//
//  ViewController.swift
//  Soldier
//
//  Created by rain-star on 08/26/2018.
//  Copyright (c) 2018 rain-star. All rights reserved.
//

import UIKit
import Soldier

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func generateViewTest() {
        let _ = UILabel(title: "1", font: 1)
        let _ = UILabel(title: "2", font: 2, color: .darkText)
        let _ = UILabel(title: "3", font: 3, alignment: .left)
        let _ = UILabel(title: "4", font: 4, color: .darkGray, alignment: .center, backgroundColor: .white)
        let _ = UILabel(title: "5", font: 5, color: .lightGray, alignment: .right, backgroundColor: .orange, corner: 5)
        let _ = UILabel(title: "6", font: 6, color: .cyan, backgroundColor: .brown, numberOfLines: 1)
        let _ = UILabel(font: 7, color: .red)
        
        let button = UIButton(title: "button", font: 12, titleColor: .darkText, backgroundColor: .white, corner: 3)
        button.setImage(normal: UIImage(), selected: UIImage())
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

