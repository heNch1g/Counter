//
//  ViewController.swift
//  Counter
//
//  Created by Alexey Volovikov on 18.04.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        addButton.setTitle("Увеличить счетчик", for: .normal)
        counterNumber.text = "Значение счётчика: \n 0"
    }
    
    var count: Int = 0
    @IBOutlet weak var counterNumber: UILabel!
    @IBOutlet weak var addButton: UIButton!
    @IBAction func countAddButton(_ sender: Any) {
        count += 1
        counterNumber.text = "Значение счётчика: \n \(count)"
    }
    
    
}

