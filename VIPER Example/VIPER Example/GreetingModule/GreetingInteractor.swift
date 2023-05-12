//
//  GreetingInteractor.swift
//  VIPER Example
//
//  Created by Арсентий Халимовский on 12.05.2023.
//

protocol GreetingInteractorInputProtocol: AnyObject {
    // build Interactor for Presenter to use
    init(presenter: GreetingInteractorOutputProtocol)
    func provideGreetingData()
}

protocol GreetingInteractorOutputProtocol: AnyObject {
    // special method to use only needed data from the Entity
    func receiveGreetingData(greetingData: GreetingData)
}

class GreetingInteractor: GreetingInteractorInputProtocol {
    
    // MARK: - Public Properties
    
    unowned let presenter: GreetingInteractorOutputProtocol
    
    
    // MARK: - Inits
    
    required init(presenter: GreetingInteractorOutputProtocol) {
        self.presenter = presenter
    }
    
    // MARK: - Public Methods
    
    func provideGreetingData() {
        // get data from original Model
        let person = Person(name: "Tim", surname: "Cook")
        let greetingData = GreetingData(name: person.name, surname: person.surname)
        presenter.receiveGreetingData(greetingData: greetingData)
        
    }
    
    
}

