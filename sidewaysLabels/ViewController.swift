//
//  ViewController.swift
//  sidewaysLabels
//
//  Created by Javier Porras jr on 10/16/19.
//  Copyright © 2019 Javier Porras jr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
        setupViews()
        label1.transform = CGAffineTransform(rotationAngle: CGFloat.pi / 2)
        label2.rotate(degrees: 180)
    }
    

    let label1: UILabel = {
       let label = UILabel()
        label.text = "Sample Text"
        label.textAlignment = .center
        label.backgroundColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let label2: UILabel = {
        let label = UILabel()
        label.text = "Other Sample Text"
        label.textAlignment = .center
        label.backgroundColor = .yellow
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    func setupViews(){
        view.addSubview(label1)
        view.addSubview(label2)
        
        label1.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label1.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        label1.widthAnchor.constraint(equalToConstant: 200).isActive = true
        label1.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        label2.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label2.topAnchor.constraint(equalTo: label1.bottomAnchor, constant: 40).isActive = true
        label2.widthAnchor.constraint(equalToConstant: 200).isActive = true
        label2.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }
}

extension UIView {
    func rotate(degrees: CGFloat) {
        rotate(radians: CGFloat.pi * degrees / 180.0)
    }
    
    func rotate(radians: CGFloat) {
        self.transform = CGAffineTransform(rotationAngle: radians)
    }
}

