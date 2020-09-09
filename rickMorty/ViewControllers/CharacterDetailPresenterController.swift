//
//  CharacterDetailPresenterController.swift
//  rickMorty
//
//  Created by Georgi Malkhasyan on 9/8/20.
//  Copyright © 2020 Malkhasyan. All rights reserved.
//

import UIKit
import Foundation

protocol CharacterListDetailsPresenterProtocol: class {
    func showDetail()
}

class CharacterListDetailsPresenter {
    
    weak var view: CharacterListDetailsViewProtocol!
    var interactor: CharacterListDetailsInteractorProtocol!
    
    var character: Character?
    var image: Data?
    
    required init(view: CharacterListDetailsViewProtocol) {
        self.view = view
    }
}

extension CharacterListDetailsPresenter: CharacterListDetailsPresenterProtocol {
    func showDetail() {
        interactor.provideCharacterListDetails()
        
    }
}

extension CharacterListDetailsPresenter: CharacterListDetailsIneractorOutputProtocol {
    func receiveCharacter(character: Character) {
        view.seteName(with: character.name)
        view.setGender(with: character.gender)
        view.setStatus(with: character.status)
        view.setSpecies(with: character.species)
    }
    
    func recieveImage(data: Data?) {
        view.setImage(with: data)
    }
    
    
}
