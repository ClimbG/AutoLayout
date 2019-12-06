//
//  ViewController.swift
//  autoLayout
//
//  Created by Gilmer Marcano on 8/22/19.
//  Copyright © 2019 Gilmer Marcano. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // 2.- asignamos paramatros a las variables que  se crearon en el paso 1
        
        TLLabel.backgroundColor = UIColor.orange
        TLLabel.text = "TL"
        TLLabel.textColor = UIColor.black
        TLLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(TLLabel)
        
        // 3.- crearemos las 4 constraints para este TLLabel
        // 4.- vamos a agreagar estas 4 constraints a un array y las activaremos, luego compilamos
        
        let topConstraintTL = TLLabel.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 28)
        let leadingConstraintTL = TLLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 18)
        let widthConstrintTL = TLLabel.widthAnchor.constraint(equalToConstant: 30)
        let heigthConstraintTL = TLLabel.heightAnchor.constraint(equalToConstant: 15)
        
        constraints.append(contentsOf: [topConstraintTL,leadingConstraintTL,widthConstrintTL,heigthConstraintTL])
        
        
        // 5.- hacemos lo mismo para generar las otras 3
        
        TRLabel.backgroundColor = UIColor.orange
        TRLabel.text = "TR"
        TRLabel.textColor = UIColor.black
        TRLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(TRLabel)
        
        let topConstraintTR = TRLabel.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 28)
        let trailingConstraintTR = TRLabel.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -18)
        let widthConstraintTR = TRLabel.widthAnchor.constraint(equalToConstant: 30)
        let heigthConstraintTR = TRLabel.heightAnchor.constraint(equalToConstant: 15)
        
        constraints.append(contentsOf: [topConstraintTR,trailingConstraintTR,widthConstraintTR,heigthConstraintTR])
        
        //
        
        BLLabel.backgroundColor = UIColor.orange
        BLLabel.text = "BL"
        BLLabel.textColor = UIColor.black
        BLLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(BLLabel)
        
        let leadingConstraintBL = BLLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 18)
        let bottomConstraintBL = BLLabel.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -28)
        let widthConstraintBL = BLLabel.widthAnchor.constraint(equalToConstant: 30)
        let heigthConstraintBL = BLLabel.heightAnchor.constraint(equalToConstant: 15)
        
        constraints.append(contentsOf: [leadingConstraintBL,bottomConstraintBL,widthConstraintBL,heigthConstraintBL])
        
        //
        BRLabel.backgroundColor = UIColor.orange
        BRLabel.text = "BR"
        BRLabel.textColor = UIColor.black
        BRLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(BRLabel)
        
        let trailingConstraintBR = BRLabel.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -18)
        let bottomConstraintBR = BRLabel.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -28)
        let widthConstraintBR = BRLabel.widthAnchor.constraint(equalToConstant: 30)
        let heigthConstraintBR = BRLabel.heightAnchor.constraint(equalToConstant: 15)
        
        constraints.append(contentsOf: [trailingConstraintBR,bottomConstraintBR,widthConstraintBR,heigthConstraintBR])
        
        
        
        NSLayoutConstraint.activate(constraints)
    }

    
    // 1.- creacion de nuestras variables
    
    var TLLabel = UILabel()
    var TRLabel = UILabel()
    var BLLabel = UILabel()
    var BRLabel = UILabel()
    
    var constraints = [NSLayoutConstraint]()
}

