//
//  TodoListViewController.swift
//  Todoey
//
//  Created by Clark Grey on 3/23/18.
//  Copyright © 2018 Clark Grey. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {

    var itemArray = ["Find Mike", "Destroy Demogorgon", "Buy Eggos", "Catch Yo Mom", "Buy Mac"]
    
    
    
//-----------------------------------------------------
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        
        
        
        
    }
//-----------------------------------------------------

    //MARK: - TableView Datasource Methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
        }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
        }
    
    //MARK: - TableView Delegate Methods
    //  if a cell row is selected function {
    //      print selected cell
    //      if current cell selected has accessory, type of checkmark, then {
    //          change cell to not have checkmark   }
    //       else {
    //          add checkmark }
    //      deselect cell when selected with animation
    //      }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(itemArray[indexPath.row])
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
            }
        else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
            }
        tableView.deselectRow(at: indexPath, animated: true)
        }
    
    //MARK: - Add New Item 
    //  if Add button is pressed {
    //      create local textField variable
    //      create alert of type UIAlertController constant
    //      create alert action "Add Item" of type UIAlertAction, if pressed {
    //          change itemArray to add textfield input
    //          reload tableView
    //          }
    //      add/create alertTextField, of Type Trailing Closure {
    //          change placeholder to "Create new item"
    //          change local textField to alertTextField
    //          }
    //      add action to alert
    //      present alert with animation
    //      }
    @IBAction func addButtonPressed(_ sender: UIBarButtonItem) {
        var textField = UITextField()
        let alert = UIAlertController(title: "Add New Todoey Item", message: "", preferredStyle: .alert)
        let action = UIAlertAction(title: "Add Item", style: .default) { (action) in
            self.itemArray.append(textField.text!)
            self.tableView.reloadData()
            //print(textField.text)
            //print("Item was added successfully!")
            }
        alert.addTextField { (alertTextField) in
            alertTextField.placeholder = "Create new item"
            textField = alertTextField
            }
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
//-----------------------------------------------------
}

