//
//  ViewController.swift
//  TasarimOdevi
//
//  Created by Kadir Yılmaz on 27.09.2024.
//

import UIKit

class HomeVC: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var foodNames = ["Kebap", "Çiğ Köfte", "Pizza", "Hamburger", "Döner", "Lahmacun"]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.navigationItem.title = "Yemek Deposu"
        
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = UIColor(named: "AnaRenk")
        
        appearance.titleTextAttributes = [.foregroundColor: UIColor(named: "YaziRenk1")!, .font: UIFont(name: "Anton-Regular", size: 22)!]
        
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        
        for x in foodNames {
            print(x.lowercased())
        }
        
        tableView.delegate = self
        tableView.dataSource = self
    }


}

extension HomeVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foodNames.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HomeTableViewCell", for: indexPath) as! HomeTableViewCell
        
        cell.foodLabel.text = foodNames[indexPath.row]
        cell.foodImage.image = UIImage(named: foodNames[indexPath.row].lowercased())
        
        
        return cell
    }
}

