//
//  ViewController.swift
//  RainbowRoad
//
//  Created by Lisa Ryland on 1/12/18.
//  Copyright © 2018 Lisa Ryland. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var colorArr = [UIColor.red, UIColor.orange, UIColor.yellow, UIColor.green, UIColor.blue, UIColor.purple]

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.rowHeight = 120.0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Section: \(indexPath.section) and Row: \(indexPath.row)")
        colorArr.remove(at: indexPath.row)
        tableView.reloadData()
    }
}

extension ViewController: UITableViewDataSource {
    // how many cells are we going to need?
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colorArr.count
    }
    
    // how should I create each cell?
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
        
        cell.backgroundColor = colorArr[indexPath.row]
        
        // return cell so that Table View knows what to render in each row
        return cell
    }
}






