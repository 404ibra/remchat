//
//  FeedViewController.swift
//  AvatarChat
//
//  Created by İbrahim Aktaş on 27.03.2024.
//
import UIKit

final class FeedViewController: UIViewController {
    
    let image = UIImageView()
    let image2 = UIImageView()
    let stackView = UIStackView()
    let scrollView = UIScrollView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
}

extension FeedViewController {
    func setupViews() {
        view.addSubview(scrollView)
        
        scrollView.addSubview(stackView)
        stackView.axis = .vertical
     
        stackView.addArrangedSubview(image)
        stackView.addArrangedSubview(image2)
        
        image.image = UIImage(named: "ocean")
        image2.image = UIImage(named: "cave")
        
        scrollView.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview()
            make.height.equalTo(100)
        }
        
        stackView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        image.snp.makeConstraints { make in
            make.width.equalTo(UIScreen.main.bounds.width)
            make.height.equalTo(800)
        }
        
        image2.snp.makeConstraints { make in
            make.width.equalTo(UIScreen.main.bounds.width)
            make.height.equalTo(800)
        }
        
    }
}
