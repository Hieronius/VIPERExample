//
//  GreetingPresenter.swift
//  VIPER Example
//
//  Created by Арсентий Халимовский on 12.05.2023.
//

// Current state of the Model
// Only required data for correct work of the Presenter
struct GreetingData {
    let name: String
    let surname: String
}

class GreetingPresenter: GreetingViewOutputProtocol {
    
    // MARK: - Public Properties
    
    // can't understand why unowned
    // type of ViewController protocol
    unowned let view: GreetingViewInputProtocol
    // don't know why we use ! Seems like we sure that this object will be initialised.
    var interactor: GreetingInteractorInputProtocol!
    
    // MARK: - Inits
    
    // don't know why required init
    required init(view: GreetingViewInputProtocol) {
        self.view = view
    }
    
    // MARK: - Public Methods
    
    func didTapShowGreetingButton() {
        interactor.provideGreetingData()
    }
    
}

// MARK: - Extensions

extension GreetingPresenter: GreetingInteractorOutputProtocol {
    func receiveGreetingData(greetingData: GreetingData) {
        let greeting = "Hello, \(greetingData.name) \(greetingData.surname)!"
        view.setGreeting(greeting)
    }
}


