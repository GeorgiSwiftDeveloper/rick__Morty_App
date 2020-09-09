//
//  CharacterListRouter.swift
//  rickMorty
//
//  Created by Georgi Malkhasyan on 9/8/20.
//  Copyright © 2020 Malkhasyan. All rights reserved.
//

import Foundation

protocol CharacterListRouterProtocol: class {
    func openCharacterListDetailsViewController(with character: Character)
}

class CharacterListRouter {
    
    weak var viewController: CharacterListViewController!
    
    init(viewController: CharacterListViewController) {
        self.viewController = viewController
    }
}

extension CharacterListRouter: CharacterListRouterProtocol {
    func openCharacterListDetailsViewController(with character: Character) {
        viewController.performSegue(
            withIdentifier: viewController.detailSegue,
            sender: character
        )
    }
}
