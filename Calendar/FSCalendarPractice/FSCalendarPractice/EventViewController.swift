//
//  EventViewController.swift
//  FSCalendarPractice
//
//  Created by kyoungjin on 2021/06/24.
//

import UIKit

class EventViewController: UIViewController {

    
    @IBOutlet weak var label: UILabel!
    
    var date: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        label.text = date
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
