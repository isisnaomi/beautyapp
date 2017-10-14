//
//  FavoritesViewController.swift
//  Nike+Research
//
//  Created by Isis Naomi Ramirez on 10/8/17.
//  Copyright © 2017 Developers Academy. All rights reserved.
//

import UIKit

class FavoritesViewController: UIViewController,UICollectionViewDataSource, UICollectionViewDelegate {

    @IBOutlet weak var myCollection: UICollectionView!
    var shoes: [Shoe]?
    
    let reuseIdentifier = "productCell" // also enter this string as the cell identifier in the storyboard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //shoes = GlobalVariables.favoriteShoes
        print("Loading the view");
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        shoes = GlobalVariables.favoriteShoes
        myCollection.reloadData()
    }

    
    
    // MARK: - UICollectionViewDataSource protocol
    
    // tell the collection view how many cells to make
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return (self.shoes?.count)!
    }
    
    // make a cell for each cell index path
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        // get a reference to our storyboard cell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath as IndexPath) as! CategoryProductCollectionViewCell
        
        cell.shoe = self.shoes?[indexPath.row]
        
        return cell
    }
    
    // MARK: - UICollectionViewDelegate protocol
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        // handle tap events
        print("You selected cell #\(indexPath.item)!")
        let myVC = storyboard?.instantiateViewController(withIdentifier: "showProductDetail") as! ShoeDetailTableViewController
        let selectedShoe = self.shoes?[(indexPath.item)]
        myVC.shoe = selectedShoe
        navigationController?.pushViewController(myVC, animated: true)
        
        
    }


}
