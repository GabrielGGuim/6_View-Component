//
//  viewUI.swift
//  Auction
//
//  Created by Gabriel Gonçalves Guimarães on 10/03/21.
//

import UIKit

class UIAuction: UIView {
    
    let personOne: Person = {
        let person = Person()
        person.btnSendValue.accessibilityIdentifier = "button1"
        person.tfValueFirstPerson.accessibilityIdentifier = "tfValueFirstPerson1"

        return person
    }()
        
    let personTwo: Person = {
        let person = Person()
        person.btnSendValue.accessibilityIdentifier = "button2"
        person.tfValueFirstPerson.accessibilityIdentifier = "tfValueFirstPerson2"

        return person
    }()
    
    let personThree: Person = {
        let person = Person()
        person.btnSendValue.accessibilityIdentifier = "button3"
        person.tfValueFirstPerson.accessibilityIdentifier = "tfValueFirstPerson3"

        return person
    }()

    let auctioneer = Auctioneer()
    
    var container: UIStackView = {
        let container = UIStackView(frame: .zero)
        container.axis = .horizontal
        container.distribution = .fillEqually
        container.spacing = 5

        container.translatesAutoresizingMaskIntoConstraints = false

        return container
    }()
 
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = .systemBackground

        self.addUIAuctioneer()
        self.addUIPerson()

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addUIAuctioneer(){
        self.addSubview(auctioneer)

        NSLayoutConstraint.activate([

            self.auctioneer.topAnchor.constraint(equalTo: self.layoutMarginsGuide.topAnchor),
            self.auctioneer.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            self.auctioneer.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.3),
                                        
        ])
    }
    
    func addUIPerson(){

        container.addArrangedSubview(personOne)
        container.addArrangedSubview(personTwo)
        container.addArrangedSubview(personThree)

        self.addSubview(container)
            
        NSLayoutConstraint.activate([

            self.container.centerYAnchor.constraint(equalTo:self.layoutMarginsGuide.centerYAnchor),
            self.container.centerXAnchor.constraint(equalTo:self.layoutMarginsGuide.centerXAnchor),

            self.container.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            self.container.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            self.container.heightAnchor.constraint(equalToConstant: 200)
        ])
    }

}
