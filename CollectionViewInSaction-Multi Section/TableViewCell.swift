//
//  TableViewCell.swift
//  CollectionViewInSaction-Multi Section
//
//  Created by undhad kaushik on 13/04/23.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        collectionView.delegate = self
        collectionView.dataSource = self
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

extension TableViewCell: UICollectionViewDelegate, UICollectionViewDataSource{
   
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data[collectionView.tag].movies.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Ccell", for: indexPath) as! CollectionViewCell
        cell.images.image = UIImage(named: data[collectionView.tag].movies[indexPath.row])
        cell.layer.cornerRadius = 20
        cell.layer.masksToBounds = true
//        cell.images.layer.borderWidth = 2
        return cell
    }
}
