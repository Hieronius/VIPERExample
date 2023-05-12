//
//  GreetingConfigurator.swift
//  VIPER Example
//
//  Created by Арсентий Халимовский on 12.05.2023.
//

protocol GreetingConfiguratorInputProtocol {
    // method to build the whole module in ViewController
    // you should define type of ViewController, not a type of protocol
    func configure(with view: GreetingViewController)
}
