//
//  ViewController.swift
//  KeyChain_Test
//
//  Created by 준수김 on 2022/10/05.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func save(_ sender: Any) {
        KeyChain().addItem(id: "가져올래요", pwd: "가져왔습니다.")
    }
    
    @IBAction func get(_ sender: Any) {
        myLabel.text = KeyChain().getItem(key: "가져올래요") as! String
    }
    
    
}

