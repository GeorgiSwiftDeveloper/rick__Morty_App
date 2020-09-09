//
//  CharacterViewCell.swift
//  rickMorty
//
//  Created by Georgi Malkhasyan on 9/8/20.
//  Copyright © 2020 Malkhasyan. All rights reserved.
//

import UIKit

class CharacterViewCell: UITableViewCell {
    
    @IBOutlet weak var imageCell: UIImageView!
    @IBOutlet weak var nameCell: UILabel!
    @IBOutlet weak var especiesCell: UILabel!
    @IBOutlet weak var genderCell: UILabel!
    @IBOutlet weak var statusCell: UILabel!

    @IBOutlet weak var card: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        card.layer.cornerRadius = 18
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func configure(for characterInfo: Character) {
        self.nameCell.text = characterInfo.name
        self.genderCell.text = characterInfo.gender
        self.statusCell.text = characterInfo.status
        if self.statusCell.text == "Alive" {
            self.statusCell.backgroundColor = .green
        } else if self.statusCell.text == "Dead" {
            self.statusCell.backgroundColor = .red
        } else {
            self.statusCell.backgroundColor = .gray
        }

        self.imageCell.loadImage(fromURL: characterInfo.image)
    }
}
