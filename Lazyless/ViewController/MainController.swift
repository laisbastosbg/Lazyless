//
//  MainController.swift
//  Lazyless
//
//  Created by Luiz Sena on 09/09/22.
//

import UIKit

class MainController: UIViewController {
    
    private let backgroundView: MainBackgroundView = MainBackgroundView()
    private var imageTeste: UIImageView = UIImageView(image: UIImage(named: preguicaModel.personaImageName))
    private var imageHeart: UIImageView = UIImageView(image: UIImage(named: preguicaModel.heart))
    
    
    
    
    override func loadView() {
        
        super.loadView()
        
        self.view = backgroundView
        self.view.addSubview(imageTeste)
        self.view.addSubview(imageHeart)
        
        imageHeart.contentMode = .scaleAspectFit
        imageTeste.contentMode = .scaleAspectFit
        
    
        
        imageTeste.translatesAutoresizingMaskIntoConstraints = false
        constraints()
        
        imageHeart.translatesAutoresizingMaskIntoConstraints = false
        
        
        
    }
    func constraints(){
        NSLayoutConstraint.activate([
            imageTeste.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            imageTeste.topAnchor.constraint(equalToSystemSpacingBelow: self.view.topAnchor, multiplier: 3),
            imageTeste.widthAnchor.constraint(equalTo: view.widthAnchor ,multiplier: 0.75),
            imageTeste.heightAnchor.constraint(equalTo: self.imageTeste.widthAnchor, multiplier: 0.85),
            
            imageHeart.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
//            imageHeart.centerYAnchor.constraint(equalTo: self.imageTeste.bottomAnchor)
            imageHeart.centerYAnchor.constraint(equalTo: self.imageTeste.bottomAnchor),
            imageHeart.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.15),
            imageHeart.heightAnchor.constraint(equalTo: imageHeart.widthAnchor)
        ])
    }
}
