//
//  TitleTableViewCell.swift
//  Netflix Clone
//
//  Created by Eduardo Jordan on 7/3/25.
//

import UIKit
import SDWebImage

class TitleTableViewCell: UITableViewCell {

  static let identifier = "TitleTableViewCell"
    
    private let playTitleButton: UIButton = {
        let button = UIButton()
        let image = UIImage(systemName: "play.circle", withConfiguration: UIImage.SymbolConfiguration(pointSize: 30))
        button.setImage(UIImage(systemName: "play.circle"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.tintColor = .white
        return button
    }()
    
    private let titleLabel:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let titlesPosterUImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        return imageView
    }()
    

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(titlesPosterUImageView)
        contentView.addSubview(titleLabel)
        contentView.addSubview(playTitleButton)
        
        applyConstraint()
    }
    
    func applyConstraint() {
        let titlesPosteUImageViewContraints = [
            titlesPosterUImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            titlesPosterUImageView.topAnchor.constraint(equalTo: contentView.topAnchor,constant: 10),
            titlesPosterUImageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor,constant: -10),
            titlesPosterUImageView.widthAnchor.constraint(equalToConstant: 100),
        ]
        
        let titleLabelContraints = [
            titleLabel.leadingAnchor.constraint(equalTo: titlesPosterUImageView.trailingAnchor, constant: 20),
            titleLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor)
            
        ]
        
        let playTitleButtonContraints = [
            playTitleButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            playTitleButton.centerYAnchor.constraint(equalTo: contentView.centerYAnchor)
            ]
        
        NSLayoutConstraint.activate(titlesPosteUImageViewContraints)
        NSLayoutConstraint.activate(titleLabelContraints)
        NSLayoutConstraint.activate(playTitleButtonContraints)
    }
    
    public func configure(with model: TitleViewModel){
        guard let url = URL(string: "https://image.tmdb.org/t/p/w500/\(model.posterURL)") else {
            return
        }
        titlesPosterUImageView.sd_setImage(with: url,completed: nil)
        titleLabel.text = model.titleName
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
}
