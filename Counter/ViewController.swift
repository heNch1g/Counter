//
//  ViewController.swift
//  Counter
//
//  Created by Alexey Volovikov on 18.04.2023.
//

import UIKit

//Экстенш для текствью чтоб скроллить вниз
extension UITextView {
    func simple_scrollToBottom() {
        let textCount: Int = text.count
        guard textCount >= 1 else { return }
        scrollRangeToVisible(NSRange(location: textCount - 1, length: 1))
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        counterNumber.text = "Значение счётчика: \n \n 0"
        textView.text = "История изменений:"
    }
   
// count - значения счетчика, actionName - строка с описанием действия
    var count: Int = 0
    var actionName: String = ""
// formatted - строка с датой и временем, хз как сделать ее в 24часовом формате
    let formatted = Date().formatted()
    
    @IBOutlet weak var counterNumber: UILabel!
    @IBOutlet weak var textView: UITextView!
    @IBAction func minusButton(_ sender: Any) {
        if count == 0 {
            actionName = "Попытка уменьшить значение счётчика ниже 0"
            changeCount()
        } else {
            count -= 1
            actionName = "Значение изменено на -1"
            changeCount()
        }
    }
    
    @IBAction func resetButton(_ sender: Any) {
        count = 0
        actionName = "Значение сброшено"
        changeCount()
    }
    
    @IBAction func plusButton(_ sender: Any) {
        count += 1
        actionName = "Значение изменено на +1"
        changeCount()
    }
    
    func changeCount() {
        counterNumber.text = "Значение счётчика: \n \n \(count)"
        textView.text += "\n" + formatted + "   " + actionName
        textView.simple_scrollToBottom()
    }
}

