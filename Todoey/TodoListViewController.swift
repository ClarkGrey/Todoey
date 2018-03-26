//
//  TodoListViewController.swift
//  Todoey
//
//  Created by Clark Grey on 3/23/18.
//  Copyright © 2018 Clark Grey. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {

    let itemArray = ["Find Mike", "Destroy Demogorgon", "Buy Eggos", "Catch Yo Mom", "Buy Mac"]
    
    
    
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
    
    
    
    
    
//-----------------------------------------------------
}

