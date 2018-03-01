//
//  ViewController.swift
//  CellAnimator
//
//  Created by William Archimède on 12/09/2015.
//  Copyright © 2015 William Archimède. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var objects: [NSDate] = []
    var currentAnimation: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "CellAnimator"
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .refresh, target: self, action: #selector(updateAnimation))
        
        for _ in 0 ... 100 {
            objects.append(NSDate())
        }
    }
    
    // MARK: - Table View
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return objects.count
    }
    
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return false
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")!
        
        let object = objects[indexPath.row] as NSDate
        cell.textLabel?.text = object.description
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        CellAnimator.animate(cell, withDuration: 1, animation: CellAnimator.AnimationType(rawValue: currentAnimation)!)
    }
    
    // MARK: - Selector functions
    @objc func updateAnimation() {
        currentAnimation += 1
        if currentAnimation == CellAnimator.AnimationType.count.rawValue {
            currentAnimation = 0
        }
    }
}
