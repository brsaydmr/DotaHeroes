//
//  DetailViewController.swift
//  DotaHeros
//
//  Created by Barış Aydemir on 15.09.2023.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var heroImage: UIImageView!
    
    @IBOutlet weak var heroNameLabel: UILabel!
    
    @IBOutlet weak var attributeLabel: UILabel!
    
    @IBOutlet weak var attackTypeLabel: UILabel!
    
    @IBOutlet weak var legsLabel: UILabel!
    
    var hero: HeroStats?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        heroNameLabel.text = hero?.localized_name
        attributeLabel.text = hero?.primary_attr.capitalized
        attackTypeLabel.text = hero?.attack_type
        legsLabel.text = "\((hero?.legs)!)"
        
        let imgUrl = "https://api.opendota.com" + (hero?.img)!
        print(imgUrl)
        heroImage.downloaded(from: imgUrl)

    }
    

  

}


