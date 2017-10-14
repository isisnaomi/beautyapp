//
//  ShoeDetailTableViewController.swift
//  Nike+Research
//
//  Created by Duc Tran on 3/19/17.
//  Copyright © 2017 Developers Academy. All rights reserved.
//

import UIKit

class ShoeDetailTableViewController : UITableViewController
{

    var shoe: Shoe!

    var isChecked = false
    
    
    @IBAction func buttonPressed(sender: UIButton){
        
        
        if self.isChecked {
            sender.setTitle("Favorito", for: .normal)
            let index = GlobalVariables.favoriteShoes.index( where: { $0 === shoe } )
            GlobalVariables.favoriteShoes.remove(at: index!)
            isChecked = false
            sender.backgroundColor = UIColor.black
            
            
        } else {
            
            
            sender.setTitle("Quitar de Favoritos", for: .normal)
            GlobalVariables.favoriteShoes.append(shoe)
            sender.backgroundColor = UIColor(red: 235/255, green: 43/255, blue: 176/255, alpha: 1.0)
            isChecked = true
            
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = shoe.name
        

        if GlobalVariables.favoriteShoes.contains( where: { $0 === shoe } ) {
            
            //self..setTitle("Quitar de Favoritos", for: .normal)
            //favButton.backgroundColor = UIColor.green
            //isChecked = true
        }
        
    
        
        self.tableView.estimatedRowHeight = self.tableView.rowHeight
        self.tableView.rowHeight = UITableViewAutomaticDimension
        
        self.tabBarController?.tabBar.items![1].badgeValue = "2"
        
    }
    
    struct Storyboard {
        static let showImagesPageVC = "ImageDetail"
        static let shoeDetailCell = "ShoeDetailCell"
        static let productDetailCell = "ProductDetailsCell"
        static let suggestionCell = "SuggestionCell"
        static let buyButtonCell = "BuyButtonCell"
        static let sephoraPrice = "SephoraPrice"
        static let voranaPrice = "VoranaPrice"
        static let idealoPrice = "IdealoPrice"
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "theSegue" {
            if let imagesPageVC = segue.destination as? ShoeDetailImageViewController {
                imagesPageVC.image = shoe.images?.first!
            }
        }
    }
    
    
}

extension ShoeDetailTableViewController
{
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // 0 - shoe detail cell
        // 1 - buy button
        // 2 - shoe full details button cell
        // 3 - you might like this cell
        return 6
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: Storyboard.shoeDetailCell, for: indexPath) as! ShoeDetailCell
            cell.shoe = shoe
            cell.selectionStyle = .none
            
            return cell
        } else if indexPath.row == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: Storyboard.buyButtonCell, for: indexPath)

            
            return cell
        } else if indexPath.row == 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: Storyboard.sephoraPrice, for: indexPath) as! StorePriceCell
            cell.indexStore = 0
            cell.shoe = shoe
            

            
            return cell
        } else if indexPath.row == 3{
            let cell = tableView.dequeueReusableCell(withIdentifier: Storyboard.voranaPrice, for: indexPath)as! StorePriceCell
            cell.indexStore = 1
            cell.shoe = shoe
            
            
            
            return cell
        } else if indexPath.row == 4{
            let cell = tableView.dequeueReusableCell(withIdentifier: Storyboard.idealoPrice, for: indexPath)as! StorePriceCell
            cell.indexStore = 2
            cell.shoe = shoe
            
    
            return cell
        }
        else {
            let cell = tableView.dequeueReusableCell(withIdentifier: Storyboard.suggestionCell, for: indexPath) as! SuggestionTableViewCell
            
            return cell
        }
    }
    //Clicked on a cell
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        if indexPath.row == 2 || indexPath.row == 3 || indexPath.row == 4 {
            if let url = URL(string: shoe.urls[indexPath.row - 2]){
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
        
    }
    
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath)
    {
        if indexPath.row == 5 {
            if let cell = cell as? SuggestionTableViewCell {
                cell.collectionView.dataSource = self
                cell.collectionView.delegate = self
                cell.collectionView.reloadData()
                cell.collectionView.isScrollEnabled = false
            }
        }
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 5 {
            return self.tableView.bounds.width + 68
        } else {
            return UITableViewAutomaticDimension
        }
    }
}

// MARK: - UICollectionViewDataSource

extension ShoeDetailTableViewController: UICollectionViewDataSource
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Storyboard.suggestionCell, for: indexPath) as! SuggestionCollectionViewCell
        let shoes = Shoe.fetchShoes(category: "Destacados")
        cell.image = shoes[indexPath.item].images?.first
        
        return cell
    }
    
}

extension ShoeDetailTableViewController : UICollectionViewDelegate, UICollectionViewDelegateFlowLayout
{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
    {
        let layout = collectionViewLayout as! UICollectionViewFlowLayout
        layout.minimumLineSpacing = 5.0
        layout.minimumInteritemSpacing = 2.5
        let itemWidth = (collectionView.bounds.width - 5.0) / 2.0
        return CGSize(width: itemWidth, height: itemWidth)
    }
}







