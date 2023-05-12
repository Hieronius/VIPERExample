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
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // some code here
    }
    
    // MARK: - IBActions
    
    @IBAction func showGreetingPressed() {
        
    }
}

// MARK: - Extensions

extension GreetingViewController: GreetingViewInputProtocol {
    func setGreeting(_ greeting: String) {
        greetingLabel.text = greeting
    }
}
