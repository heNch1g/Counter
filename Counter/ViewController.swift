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
        counterNumber.text = "Значение счётчика: \n 0"
        textView.text = "История изменений:"
    }
    
    var count: Int = 0
     
    //строковая переменная с датой и временем  https://www.donnywals.com/formatting-dates-in-swift-using-date-formatstyle-on-ios-15/
    
    let formatted = Date().formatted(date: .complete, time: .standard)
    
    
    @IBOutlet weak var counterNumber: UILabel!
    @IBOutlet weak var textView: UITextView!
    
    @IBAction func minusButton(_ sender: Any) {
        if count == 0 { } else { count -= 1 }
        changeCount()
    }
    
    @IBAction func resetButton(_ sender: Any) {
        count = 0
        changeCount()
    }
    
    @IBAction func plusButton(_ sender: Any) {
        count += 1
        changeCount()
    }
    
    // временно стоит изменения текствью на дату - работает!
    func changeCount() {
        counterNumber.text = "Значение счётчика: \n \(count)"
        textView.text = formatted
    }
}

