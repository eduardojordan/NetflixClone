//
//  HeroHeaderUIView.swift
//  Netflix Clone
//
//  Created by Eduardo Jordan on 6/3/25.
//

import UIKit

class HeroHeaderUIView: UIView {
    
    private let playButton: UIButton = {
        let button = UIButton()
        button.setTitle("Play", for: .normal)
        button.layer.borderColor = UIColor.systemBackground.cgColor
        button.layer.borderWidth = 1
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 5
        
        return button
    }()
    
    private let downloadButton: UIButton = {
        let button = UIButton()
        button.setTitle("Download", for: .normal)
        button.layer.borderColor = UIColor.systemBackground.cgColor
        button.layer.borderWidth = 1
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 5
        
        return button
    }()
    
    private let heroImageView: UIImageView = {
        let imagegeView = UIImageView()
        imagegeView.contentMode = .scaleAspectFill
        imagegeView.clipsToBounds = true
        imagegeView.image = UIImage(named: "HeroImage")
        return imagegeView
    }()
    
    private func addGradient() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [
            UIColor.black.withAlphaComponent(0.0).cgColor,
            UIColor.black.withAlphaComponent(1.0).cgColor
        ]
        gradientLayer.frame = bounds
        layer.addSublayer(gradientLayer)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(heroImageView)
        addGradient()
        addSubview(playButton)
        addSubview(downloadButton)
        applyContraints()
    }
    
    private func applyContraints() {
        let playButtonContraints = [
            playButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 90),
            playButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -25),
            playButton.widthAnchor.constraint(equalToConstant: 100)
        ]
    
    let downloadButtonContraints = [
        downloadButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -90),
        downloadButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -25),
        downloadButton.widthAnchor.constraint(equalToConstant: 100)
    ]
    NSLayoutConstraint.activate(playButtonContraints)
        NSLayoutConstraint.activate(downloadButtonContraints)

}
    
    override func layoutSubviews() {
        super.layoutSubviews()
        heroImageView.frame = bounds
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }

}
