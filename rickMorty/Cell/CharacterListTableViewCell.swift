//
//  CharacterListTableViewCell.swift
//  rickMorty
//
//  Created by Georgi Malkhasyan on 9/8/20.
//  Copyright © 2020 Malkhasyan. All rights reserved.
//

import UIKit
import Foundation

class CharacterListTableViewCell: UITableViewCell {

    func setName(with name: String?) {
        textLabel?.text = name
    }
    
    func setImage(with data: Data?) {
        if let data = data{
            imageView?.image = UIImage(data: data)
            self.layoutSubviews()
        }
        DispatchQueue.main.async {
            self.textLabel?.textColor = UIColor.red
        }
    }
    
}
