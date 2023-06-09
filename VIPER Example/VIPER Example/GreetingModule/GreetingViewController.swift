//
//  GreetingViewController.swift
//  VIPER Example
//
//  Created by Арсентий Халимовский on 12.05.2023.
//

import UIKit

// for ViewController
protocol GreetingViewInputProtocol: AnyObject {
    func setGreeting(_ greeting: String)
}

// for Presenter
protocol GreetingViewOutputProtocol {
    // create ViewController to use it in Presenter (protocol for ViewController)
    init(view: GreetingViewInputProtocol)
    // methods for Presenter
    func didTapShowGreetingButton()
}

class GreetingViewController: UIViewController {
    
    // MARK: - IBOutlets
    
    @IBOutlet var greetingLabel: UILabel!
    
    // MARK: - Private Properties
    
    // time to build the module
    private let configurator: GreetingConfiguratorInputProtocol = GreetingConfigurator()
    
    // MARK: - Public Properties
    
    // type of protocol for Presenter, not a type of Presenter class
    var presenter: GreetingViewOutputProtocol!
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // build module with ViewController
        configurator.configure(with: self)
    }
    
    // MARK: - IBActions
    
    @IBAction func showGreetingPressed() {
        presenter.didTapShowGreetingButton()
    }
}

// MARK: - Extensions

extension GreetingViewController: GreetingViewInputProtocol {
    func setGreeting(_ greeting: String) {
        greetingLabel.text = greeting
    }
}
