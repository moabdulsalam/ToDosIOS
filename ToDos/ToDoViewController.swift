//
//  ViewController.swift
//  ToDos
//
//  Created by Mohamed Abdulsalam on 8/11/18.
//  Copyright © 2018 Mohamed Abdulsalam. All rights reserved.
//

import UIKit

class ToDoViewController: UITableViewController {

   let array = ["mo","malik","tariq"]
    @IBAction func addItembutton(_ sender: UIBarButtonItem) {
        
//        let alert = UIAlertController(title: "Add To Do", message: "", preferredStyle: .alert
//
//        let alertAction = alertAction(
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.reloadData()
    }

    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        
        
        cell.textLabel?.text = array[indexPath.row]
       // tableView.inputAccessoryView.ch
        
        return cell
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        //print(array[indexPath.row])
        
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        }else{
            
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
            
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }


}

