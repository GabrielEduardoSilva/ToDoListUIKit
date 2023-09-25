//
//  ViewController.swift
//  ToDoListUIKit
//
//  Created by Gabriel Eduardo on 25/09/23.
//

import UIKit

class ViewController: UIViewController {
    
    let todos = [
    Todo(title: "Make vanilla pudding."),
    Todo(title: "Put pudding in a mayo jarl."),
    Todo(title: "Eat it in a public place."),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        let todo = todos[indexPath.row]
        cell.textLabel!.text = todo.title
        
        return cell
    }
}

