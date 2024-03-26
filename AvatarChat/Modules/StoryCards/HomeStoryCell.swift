//
//  HomeStoryCell.swift
//  AvatarChat
//
//  Created by İbrahim Aktaş on 22.03.2024.
//

import UIKit

class HomeStoryCell: UICollectionViewCell {
    static let identifier = "HomeStoryCell"
    let imageView = UIImageView()
    let circleView = UIView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupCircleView()
        setupImageView()
        setupLayers()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupLayers() {
        circleView.snp.makeConstraints { make in
            make.height.equalTo(50)
            make.width.equalTo(50)
            make.top.equalTo(imageView.snp.bottom).inset(25)
            make.centerX.equalTo(imageView.snp.centerX)
        }
        
        imageView.snp.makeConstraints { make in
            make.height.equalTo(200)
            make.width.equalTo(120)
  
        }
    }
    
    func setupCircleView() {
        addSubview(circleView)
        circleView.backgroundColor = .red
        circleView.layer.cornerRadius = 25
        circleView.layer.borderWidth = 2
        circleView.layer.borderColor = UIColor.white.cgColor
    }
    
    func setupImageView() {
       addSubview(imageView)
        imageView.image = UIImage(named: "barbell")
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = 8
        imageView.layer.borderWidth = 1.2
        imageView.layer.borderColor =  UIColor.white.cgColor
 
    }
}
