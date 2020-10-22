//
//  ViewController.swift
//  mateRepair
//
//  Created by CHEN on 2020/10/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var zodiac: UITextField!
    @IBOutlet weak var gender: UISegmentedControl!
    @IBOutlet weak var lovebaseball: UISwitch!
    @IBOutlet weak var yayabirthday: UILabel!
    @IBOutlet weak var hippoimgyes: UIImageView!
    @IBOutlet weak var hippoimgno: UIImageView!
    
    //yaya生日的slider
    
    var yayabdayvalue:Int = 1
    
    @IBAction func birthday(_ sender: UISlider) {
        
        yayabirthday.isHidden = false
        yayabdayvalue = Int(sender.value)
        yayabirthday.text = "11/\(yayabdayvalue)"
        
    }
    
    //送出button
    
    @IBAction func sendbtn(_ sender: AnyObject) {
        
        let zodiacsign:String = zodiac.text!
        
        if zodiacsign == "Hippo" && gender.selectedSegmentIndex == 0 && lovebaseball.isOn == true && yayabdayvalue == 26 {
            hippoimgyes.isHidden = false
            hippoimgno.isHidden = true
        }else {
            hippoimgyes.isHidden = true
            hippoimgno.isHidden = false
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

