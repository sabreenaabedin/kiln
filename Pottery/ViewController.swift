//
//  ViewController.swift
//  Pottery
//
//  Created by Sabreena Abedin on 12/23/19.
//  Copyright © 2019 Sabreena Abedin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    // table delegate methods
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("selected \(listItems[indexPath.row])")
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            listItems.remove(at: indexPath.row)
            
            tableView.beginUpdates()
            tableView.deleteRows(at: [indexPath], with: .automatic)
            tableView.endUpdates()
        }

    }
    
    // table data source methods
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listItems.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "standardCell", for: indexPath)
        cell.textLabel?.text = listItems[indexPath.row].name
        cell.accessoryType = .disclosureIndicator
        return cell
    }
    
    // lifecycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "Overview Page"
    }
    
    // data source
    var listItems = [
        Item(id: 1, name: "My First Mug", type: .mug, created: NSDate()),
        Item(id: 2, name: "A Bowl", type: .bowl, created: NSDate()),
        Item(id: 3, name: "Simple Vase", type: .vase, created: NSDate())
        
    ]
}

