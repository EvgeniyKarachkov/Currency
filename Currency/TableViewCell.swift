//
//  TableViewCell.swift
//  Currency
//
//  Created by Admin on 04.08.2021.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var imageFlag: UIImageView!
    @IBOutlet weak var country: UILabel!
    @IBOutlet weak var currency: UILabel!
    @IBOutlet weak var rate: UILabel!
    
    func configure(with data: PriceOfBit) {
        
        
        currency.text = data.date

//        let url = CountryCode.getURLofImage(dict: allCountryCodes , value: data.country!)
//
        
//        DispatchQueue.global().async {
//
//            let image: UIImage?
//
//            if let url = url, let imageUrl = URL(string: url), let imageData = try? Data(contentsOf: imageUrl) {
//                image = UIImage(data: imageData)
//            } else {
//                image = UIImage(named: "NoImage")
//            }
//
//            DispatchQueue.main.async {
//                self.countryFlag.image = image
//            }
//        }
    }

}
