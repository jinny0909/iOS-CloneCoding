//
//  WorldClockViewController.swift
//  AlarmApp
//
//  Created by kyoungjin on 2021/06/09.
//

import UIKit

class WorldClockViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let leftBarItem = UIBarButtonItem(title: "Edit", style: .plain, target: self, action: #selector(self.edit))
        let rightBarItem = UIBarButtonItem(title: "+", style: .done, target: self, action: #selector(self.add))
        
        leftBarItem.tintColor = .systemOrange
        rightBarItem.tintColor = .systemOrange
        
        //rightBarItem '+' size needs to be fixed
        
        self.navigationItem.leftBarButtonItem = leftBarItem
        self.navigationItem.rightBarButtonItem = rightBarItem
    }
    
    @objc func edit(){
        print("Edit button clicked")
    }
    
    @objc func add(){
        print("Add button clicked")
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
