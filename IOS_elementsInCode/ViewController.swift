//
//  ViewController.swift
//  IOS_elementsInCode
//
//  Created by Michael Lekrans on 2019-07-11.
//  Copyright © 2019 Michael Lekrans. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let label: UILabel = UILabel(frame: CGRect(x: 20, y: 80, width: 300, height: 20))
        label.text = "Code label"
        view.addSubview(label)
        
        let button:UIButton = UIButton(frame: CGRect(x: 20, y: 160, width: 300, height: 40))
        button.setTitle("Code Button", for: .normal)
        button.backgroundColor = UIColor.lightGray
        // add the buttonPress method.. this selector will give an error that it is not objc.. so the
        // fix will add the @objc before func
        button.addTarget(self, action: #selector(buttonPress), for: .touchUpInside)
        view.addSubview(button)
    }

    @objc func buttonPress() {
        print("button pressed!")
    }

}

