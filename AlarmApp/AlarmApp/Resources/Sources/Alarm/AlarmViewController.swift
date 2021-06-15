//
//  AlarmViewController.swift
//  AlarmApp
//
//  Created by kyoungjin on 2021/06/09.
//

import UIKit

class AlarmViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let leftBarItem = UIBarButtonItem(title: "Edit", style: .done, target: self, action: #selector(edit))
        
        leftBarItem.tintColor = .systemOrange
        self.navigationItem.leftBarButtonItem = leftBarItem
        
        let rightBarItem = UIBarButtonItem(title: "+", style: .done, target: self, action: #selector(add))
        rightBarItem.tintColor = .systemOrange
        self.navigationItem.rightBarButtonItem = rightBarItem
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @objc func edit(){
        print("edit button clicked")
    }

    @objc func add(){
        print("add button clicked")
    }
}


