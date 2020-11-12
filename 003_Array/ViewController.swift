//
//  ViewController.swift
//  003_Array
//
//  Created by 松島優希 on 2020/11/11.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var itsuLabel: UILabel!
    @IBOutlet weak var daregaLabel: UILabel!
    @IBOutlet weak var dokodeLabel: UILabel!
    @IBOutlet weak var doshitaLabel: UILabel!
    
    var index: Int = 0
    
    let itsuArray: [String] = ["一年前","一週間","昨日","今日"]
    let daregaArray: [String] = ["僕が","大統領が","先生が","友達が"]
    let dokodeArray: [String] = ["山の上で","アメリカで","学校で","クラスで"]
    let doshitaArray: [String] = ["叫んだ","演説した","怒った","踊った"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func change(_ sender: Any) {
        itsuLabel.text = itsuArray[index]
        daregaLabel.text = daregaArray[index]
        dokodeLabel.text = dokodeArray[index]
        doshitaLabel.text = doshitaArray[index]
        
        index += 1
        
        if index > 3{
            index = 0
        }
    }
    
    @IBAction func reset(_ sender: Any) {
        itsuLabel.text = "---"
        daregaLabel.text = "---"
        dokodeLabel.text = "---"
        doshitaLabel.text = "---"
        
        index = 0
    }
    
    @IBAction func random(_ sender: Any) {
        let itsuIndex = Int.random(in: 0...3)
        let daregaIndex = Int.random(in: 0...3)
        let dokodeIndex = Int.random(in: 0...3)
        let doshitaIndex = Int.random(in: 0...3)
        
        print("いつ: \(itsuIndex)")
        print("誰が: \(daregaIndex)")
        print("どこで: \(dokodeIndex)")
        print("どうした: \(doshitaIndex)")
        
        itsuLabel.text = itsuArray[itsuIndex]
        daregaLabel.text = daregaArray[daregaIndex]
        dokodeLabel.text = dokodeArray[dokodeIndex]
        doshitaLabel.text = doshitaArray[doshitaIndex]
        
    }
    
    
    
    

}
