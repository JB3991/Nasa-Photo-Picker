//
//  ViewController.swift
//  NasaPhotoPicker
//
//  Created by Jonathan Burnett on 01/03/2021.
//

import UIKit

// https://api.nasa.gov/planetary/apod?api_key=DEMO_KEY& date=2021-03-01

let baseURL = "https://api.nasa.gov/planetary/apod?api_key=DEMO_KEY&date="

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    @IBOutlet weak var dPicker: UIDatePicker!
  
    @IBAction func datePicker(_ sender: Any) {
        getDate()
        
    }
    
    func getDate() {
        var date = Date()
        date = dPicker.date
        let format = DateFormatter()
        format.dateFormat = "yyyy-MM-dd"
        var formattedDate = format.string(from: date)
        print(formattedDate)
    }
    
}



