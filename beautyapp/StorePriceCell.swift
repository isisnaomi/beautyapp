//
//  StorePriceCell.swift
//  Nike+Research
//
//  Created by Isis Naomi Ramirez on 10/1/17.
//  Copyright © 2017 Developers Academy. All rights reserved.
//

import UIKit


class StorePriceCell: UITableViewCell {

    @IBOutlet weak var shoePrice: UILabel!
    var indexStore: Int! = 0
    
    
    
    var shoe: Shoe! {
        didSet {
            self.updateUI()
        }
    }
    
    func updateUI()
    {

        if shoe.prices[indexStore] == 0 {
            shoePrice.text =  "No disponible"
        }else{
            shoePrice.text =  String(describing: shoe.prices[indexStore])
        }
    }

}
