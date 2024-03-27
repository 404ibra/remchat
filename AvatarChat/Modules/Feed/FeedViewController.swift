//
//  FeedViewController.swift
//  AvatarChat
//
//  Created by İbrahim Aktaş on 27.03.2024.
//

import UIKit

class FeedViewController: UIViewController {

    let feedPost = UILabel()
    let horizontalStack = UIStackView()
    let circle = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupFeedPost()
        setupProfilePhoto()
        setupStackView()
        view.backgroundColor = .white
    }
    
    
    func setupFeedPost() {
        view.addSubview(feedPost)
        feedPost.text = "Bu bir test postudur. İlk post hayırlı olsun. Bundan sonraki süreci henüz düşünmedim. :) Nasıl bir rutin oluşturacağımı kervan yolda düzülür..."
        feedPost.numberOfLines = 0
        feedPost.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(16)
            
 
        }
    }
    
    func setupStackView() {

        view.addSubview(horizontalStack)
        horizontalStack.axis = .horizontal
        horizontalStack.addArrangedSubview(circle)
        horizontalStack.addArrangedSubview(feedPost)
        horizontalStack.spacing = 8
        horizontalStack.distribution = .fillEqually
        horizontalStack.snp.makeConstraints { make in
            make.width.equalTo(400)
            make.height.equalTo(400)
        
        }
    }
    
    func setupProfilePhoto() {
        view.addSubview(circle)
        circle.backgroundColor = .red
        circle.snp.makeConstraints { make in
            make.height.equalTo(40)
            make.width.equalTo(40)
          
        }
    }

 
}
