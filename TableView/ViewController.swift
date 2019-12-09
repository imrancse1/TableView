//
//  ViewController.swift
//  TableView
//
//  Created by Zakaria on 8/12/19.
//  Copyright © 2019 Apple soft. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var tab: UITableView!
    
    @IBOutlet weak var addText: UITextField!
    //change
    
    var data = ["Dog", "Cat", "Mouse", "Fish"]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(data)
        return data.count
          
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = data[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = data[indexPath.row]
        print(cell)

    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func addData(_ sender: UIButton) {
      
        data.append(addText.text!)
        tab.reloadData()
      
      
        //print("prince")
       
    }
    
}

