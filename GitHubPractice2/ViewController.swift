//
//  ViewController.swift
//  GitHubPractice2
//
//  Created by Johan Flores  on 17/01/1401 AP.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var name = ["Red Panda", "Dog", "Unicorn"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return name.count
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellView", for: indexPath)
        cell.textLabel?.text = name[indexPath.row]
        return cell
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
        {
            
            let nvc = segue.destination as! SecondViewController
            nvc.animal = "Red Panda"
            
            guard let selectedRow = tableView.indexPathForSelectedRow?.row else
            {
                return
            }
        }
    
    
    }


