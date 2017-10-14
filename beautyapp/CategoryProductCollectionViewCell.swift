//
//  CategoryProductCollectionViewCell.swift
//  Nike+Research
//
//  Created by Isis Naomi Ramirez on 10/8/17.
//  Copyright © 2017 Developers Academy. All rights reserved.
//

import UIKit

class CategoryProductCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var shoeImageView: UIImageView!
    @IBOutlet weak var shoeNameLabel: UILabel!
    @IBOutlet weak var shoePriceLabel: UILabel!
    var shoe: Shoe! {
        didSet {
            self.updateUI()
        }
    }
    
    func updateUI()
    {
        shoeImageView.image = shoe.images?.first
        shoeNameLabel.text = shoe.name
        if let price = shoe.price {
            shoePriceLabel.text = "$\(price)"
        } else {
            shoePriceLabel.text = ""
        }
        let border = CALayer()
        let width = CGFloat(0.5)
        border.borderColor = UIColor.lightGray.cgColor
        border.frame = CGRect(x: 0, y: shoeImageView.frame.size.height - width, width:  shoeImageView.frame.size.width, height: shoeImageView.frame.size.height)
        shoeImageView.layer.addSublayer(border)
        shoeImageView.layer.masksToBounds = true
        
        border.borderWidth = width
        
        
        self.contentView.layer.cornerRadius = 30.0
        self.contentView.layer.borderWidth = 5.0
        self.contentView.layer.borderColor = UIColor.clear.cgColor
        self.contentView.layer.masksToBounds = true
        self.layer.shadowColor = UIColor.lightGray.cgColor
        self.layer.shadowOffset = CGSize(width: 0, height: 2.0)
        self.layer.shadowRadius = 1.0
        self.layer.shadowOpacity = 0.1
        self.layer.masksToBounds = false
    }

}
