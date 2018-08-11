//
//  ViewController.swift
//  ToDos
//
//  Created by Mohamed Abdulsalam on 8/11/18.
//  Copyright © 2018 Mohamed Abdulsalam. All rights reserved.
//

import UIKit

class ToDoViewController: UITableViewController {
   
    var array = ["mo","malik","tariq", "hello"]
    @IBAction func addItembutton(_ sender: UIBarButtonItem) {
        var alertText = UITextField()
       
        let alert = UIAlertController(title: "Add To Do Item", message: "", preferredStyle: .alert)

        
       
        let alertAction = UIAlertAction(title: "Add new item", style: .default) {
            (action) in
            
            self.array.append(alertText.text!)
            self.tableView.reloadData()
            print("successful action")
            print(alertText)
            print(self.array)
            
        }
        
        alert.addTextField { (textAlert) in
            textAlert.placeholder = "create new item"
            alertText = textAlert
        }
        
        
        alert.addAction(alertAction)
        present(alert, animated: true, completion: nil)
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       // tableView.reloadData()
       
    }

    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        cell.textLabel?.text = array[indexPath.row]
       
        
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
        return array.count
    }


}

