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
        if(txtNewTask.hasText) {
            let item = txtNewTask.text!
            
            if (todoList != nil){
                todoList?.append(item)
                saveData(todoList: todoList!)
            } else {
                todoList = [item]
                saveData(todoList: todoList!)
            }
            txtNewTask.text = ""
            
        }
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
}

