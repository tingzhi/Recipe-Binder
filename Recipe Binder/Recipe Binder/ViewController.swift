//
//  ViewController.swift
//  Recipe Binder
//
//  Created by Tingzhi Li on 3/16/18.
//  Copyright © 2018 tingzhi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let recipes = ["French Onion Soup", "Ribeye Steak"]
    
    // Table View Delegate Methods
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
    // Table View Data Source Methods
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "recipeCell", for: indexPath)
        cell.textLabel?.text = recipes[indexPath.row]
        cell.accessoryType = .disclosureIndicator
        
        return cell
    }
    
    // IBActions

    @IBAction func onSelectTapped(_ sender: Any) {
    
    }
    
    @IBAction func onCompileListTapped(_ sender: Any) {
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

