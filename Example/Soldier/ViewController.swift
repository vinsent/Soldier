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
        let _ = UILabel(title: "1", titleFont: 1)
        let _ = UILabel(title: "2", titleFont: 2, titleColor: .darkText)
        let _ = UILabel(title: "3", titleFont: 3, alignment: .left)
        let _ = UILabel(title: "4", titleFont: 4, titleColor: .darkGray, alignment: .center, backgroundColor: .white)
        let _ = UILabel(title: "5", titleFont: 5, titleColor: .lightGray, alignment: .right, backgroundColor: .orange, corner: 5)
        let _ = UILabel(title: "6", titleFont: 6, titleColor: .cyan, backgroundColor: .brown, numberOfLines: 1)
        let _ = UILabel(titleFont: 7, titleColor: .red)
        
        let button = UIButton(title: "button", titleFont: 12, titleColor: .darkText, backgroundColor: .white, corner: 3)
        button.setImage(normal: UIImage(), selected: UIImage())
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

