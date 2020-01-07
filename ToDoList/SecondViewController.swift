//
//  SecondViewController.swift
//  ToDoList
//
//  Created by Alan Van Art on 1/7/20.
//  Copyright © 2020 Alan Van Art. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var txtNewTask: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnAddTask(_ sender: Any) {
        if(txtNewTask.text != "") {
            todoList?.append(txtNewTask.text!)
            txtNewTask.text = ""
            saveData(todoList: todoList!)
        }
        
    }
    
}

