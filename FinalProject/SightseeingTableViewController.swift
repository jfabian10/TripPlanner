//
//  SightseeingTableViewController.swift
//  FinalProject
//
//  Created by Jesus Fabian on 12/7/16.
//  Copyright © 2016 CS3714. All rights reserved. 
//

import UIKit

class SightseeingTableViewController: UITableViewController {

    
    
    @IBAction func goToItenerary(_ sender: Any) {
        performSegue(withIdentifier: "itenerary", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "itenerary"{
            let itVC: IteneraryViewController = segue.destination as! IteneraryViewController
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }
    
    

   
}
