//
//  ViewController.swift
//  Amazon
//
//  Created by Kadir Yılmaz on 3.10.2024.
//

import UIKit

class HomeVC: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet weak var suggestionCollectionView: UICollectionView!
    
    @IBOutlet weak var addressButton: UIButton!
    
    let categoryImages = ["1", "2", "3", "4", "5"]
    let suggestionImages = ["a1", "a2", "a3", "2", "3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //addressButton.setTitle("📍 Alıcı: Kadir - İstanbul 34340 ↓", for: .normal)
        
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.tag = 1 // 'collectionView' için tag

        // İkinci collectionView için delegate ve dataSource
        suggestionCollectionView.delegate = self
        suggestionCollectionView.dataSource = self
        suggestionCollectionView.tag = 2 // 'suggestionCollectionView' için tag
        
        let tasarim = UICollectionViewFlowLayout()
        
        tasarim.sectionInset = UIEdgeInsets(top: 1, left: 0, bottom: 1, right: 0)
        tasarim.minimumInteritemSpacing = 0
        tasarim.minimumLineSpacing = 0
        
        let ekranGenislik = UIScreen.main.bounds.width
        
        let itemGenislik = (ekranGenislik - 20) / 4
        
        tasarim.itemSize = CGSize(width: itemGenislik, height: itemGenislik)
        tasarim.scrollDirection = .horizontal
        
        let tasarim2 = UICollectionViewFlowLayout()
        
        tasarim2.sectionInset = UIEdgeInsets(top: 1, left: 0, bottom: 1, right: 0)
        tasarim2.minimumInteritemSpacing = 0
        tasarim2.minimumLineSpacing = 0
        
        tasarim2.itemSize = CGSize(width: itemGenislik, height: itemGenislik * 2)
        tasarim2.scrollDirection = .horizontal
        
        collectionView.collectionViewLayout = tasarim
        suggestionCollectionView.collectionViewLayout = tasarim2
        
    }


}

extension HomeVC: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView.tag == 1 {
            return categoryImages.count
        } else if collectionView.tag == 2 {
            return suggestionImages.count
        }
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView.tag == 1 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "categoryCell", for: indexPath) as! CategoryCell
            cell.imageViewCategory.image = UIImage(named: "\(categoryImages[indexPath.row])")
            return cell
        } else if collectionView.tag == 2 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "suggestionCollectionViewCell", for: indexPath) as! SuggestionCollectionViewCell
            
            cell.labelSuggestion.text = "Alışverişe devam et Oyuncu Ekipmanları"
            cell.imageSuggestion.image = UIImage(named: "\(suggestionImages[indexPath.row])")
            
            return cell
        }
        return UICollectionViewCell()
    }
}

