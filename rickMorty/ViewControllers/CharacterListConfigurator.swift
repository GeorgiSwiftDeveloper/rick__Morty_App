//
//  CharacterListConfigurator.swift
//  rickMorty
//
//  Created by Georgi Malkhasyan on 9/8/20.
//  Copyright © 2020 Malkhasyan. All rights reserved.
//

import Foundation

protocol CharacterListConfiguratorProtocol: class {
    func configure(with viewController: CharacterListViewController)
}

class CharacterListConfigurator: CharacterListConfiguratorProtocol {
    func configure(with viewController: CharacterListViewController) {
        let presenter = CharacterListPresenter(view: viewController)
        let interactor = CharacterListInteractor(presenter: presenter)
        let router = CharacterListRouter(viewController: viewController)
        
        viewController.presenter = presenter
        presenter.interactor = interactor
        presenter.router = router
        interactor.networkService = NetworkService.shared
    }
}
