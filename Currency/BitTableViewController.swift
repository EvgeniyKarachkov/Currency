//
//  BitTableViewController.swift
//  Currency
//
//  Created by Admin on 04.08.2021.
//

import UIKit

class BitTableViewController: UITableViewController {
    
    var cellOfCountry: [PriceOfBit] = []
    let urlString = "https://cdn.jsdelivr.net/gh/fawazahmed0/currency-api@1/latest/currencies/btc.json"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchData()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return cellOfCountry.count
        
    }
  
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TableViewCell
       
        let cellWithValue = cellOfCountry[indexPath.row]
        cell.configure(with: cellWithValue)
    
        return cell
    }
    
 
    
    private func fetchData() {
        guard let url = URL(string: urlString) else { return }
        
        URLSession.shared.dataTask(with: url) { (data,_,_) in
            guard let data = data else { return }
            
            do {
                self.cellOfCountry = try JSONDecoder().decode([PriceOfBit].self, from: data)
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            } catch let error {
                print(error)
            }
        }.resume()
    }
    
}

