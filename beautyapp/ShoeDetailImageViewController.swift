//
//  ShoeDetailImageViewController.swift
//  Nike+Research
//
//  Created by Isis Naomi Ramirez on 10/1/17.
//  Copyright © 2017 Developers Academy. All rights reserved.
//

import UIKit

class ShoeDetailImageViewController: UIViewController{
    
    @IBOutlet weak var imageView: UIImageView!
    
    var intento: Double? = 33333.333
    var image: UIImage! {
        didSet {
            self.imageView?.image = image
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.imageView.image = image


    }

 

}
