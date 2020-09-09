//
//  CharacterListDeatailConfigurator.swift
//  rickMorty
//
//  Created by Georgi Malkhasyan on 9/8/20.
//  Copyright © 2020 Malkhasyan. All rights reserved.
//

import Foundation

protocol CharacterListDetailsConfiguratorProtocol: class {
    func configure(view: CharacterListDetailsViewController, with character: Character, and image: Data?)
}

class CharacterListDetailsConfigurator: CharacterListDetailsConfiguratorProtocol {
    func configure(view: CharacterListDetailsViewController, with character: Character, and image: Data?) {
        let presenter = CharacterListDetailsPresenter(view: view)
        let interactor = CharacterListDetailsInteractor(presenter: presenter, character: character, image: image)
        
        view.presenter = presenter
        presenter.interactor = interactor
    }
}
