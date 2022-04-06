//
//  SecondViewController.swift
//  GitHubPractice2
//
//  Created by Johan Flores  on 17/01/1401 AP.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    var animal: String?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        animal = nameLabel.text
        imageView.image = UIImage(named: "animal")

        // Do any additional setup after loading the view.
    }
    
    
}
