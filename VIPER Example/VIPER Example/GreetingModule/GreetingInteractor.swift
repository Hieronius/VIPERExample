//
//  GreetingInteractor.swift
//  VIPER Example
//
//  Created by Арсентий Халимовский on 12.05.2023.
//

protocol GreetingInteractorInputProtocol {
    // build Interactor for Presenter to use
    init(presenter: GreetingInteractorOutputProtocol)
    func provideGreetingData()
}

protocol GreetingInteractorOutputProtocol {
    // special method to use only needed data from the Entity
    func receiveGreetingData(greetingData: GreetingData)
}



