//
//  MyProfileViewController.swift
//  AvatarChat
//
//  Created by İbrahim Aktaş on 25.03.2024.
//

import UIKit


protocol MyProfileViewInterface: AnyObject {
    func setupViews()
    
}


class MyProfileViewController: UIViewController {
    
    private let viewModel = MyProfileViewModel()
    
    let profileView = UIView()
 
    let fullName = UILabel()
    let descipritonLabel = UILabel()
    let subscriptionButton = UIButton()
    let hearthButton = UIButton()
    let followButton = UIButton()
    let stackView = UIStackView()
    let scrollView = UIScrollView()
    let followButton2 = UIButton()
    let chatTitle = UILabel()
    let routineImage = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.view = self
        viewModel.viewDidLoad()
        assignbackground()
 
        fullNameLabel()
        setupdescriptionLabel()
        makeSubscriptions()
        setupButton()
        setupMiddleButton()
        setupHorizontalStack()
        
        setupLastButton()
        setupProfilePhoto()
        setupRoutineImage()
        
        func setupRoutineImage() {
            view.addSubview(routineImage)
            routineImage.image = UIImage(named: "cave")
            routineImage.contentMode =  .scaleAspectFill
            routineImage.clipsToBounds = true
            
            routineImage.layer.cornerRadius = 12
            routineImage.snp.makeConstraints { make in
                make.height.equalTo(250)
                make.leading.trailing.equalToSuperview().inset(16)
                make.top.equalTo(subscriptionButton.snp.bottom).inset(-60)
            
            }
        }
 
    }
    
 
    
    func assignbackground(){
        let background = UIImage(named: "ocean")
        
        var imageView : UIImageView!
        imageView = UIImageView(frame: view.bounds)
        imageView.contentMode =  .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = background
        imageView.center = view.center
        view.addSubview(imageView)
        self.view.sendSubviewToBack(imageView)
    }
    
    func setupHorizontalStack() {
        view.addSubview(stackView)
        [hearthButton, followButton, followButton2].forEach { button in
            stackView.addArrangedSubview(button)
        }
        stackView.spacing = 12
        stackView.distribution = .fillProportionally
        stackView.axis = .horizontal
        stackView.snp.makeConstraints { make in
            make.height.equalTo(followButton.snp.height)
            
            make.centerX.equalToSuperview()
            make.bottom.equalTo(view.snp.bottom).inset(32)
          
        }
        
        followButton.snp.makeConstraints { make in
            make.height.equalTo(40)
            make.width.equalTo(40)
           
          
        }
        
        hearthButton.snp.makeConstraints { make in
            make.height.equalTo(40)
            make.width.equalTo(70)
            
            
        }
        
        followButton2.snp.makeConstraints { make in
            make.height.equalTo(40)
            make.width.equalTo(130)
  
            
        }
    }
    
 
    
    func setupProfilePhoto() {
        view.addSubview(profileView)
        let nonImage = UILabel()
        nonImage.text = "İ"
        nonImage.font =  UIFont.boldSystemFont(ofSize: 30)
        nonImage.textColor = .black
        profileView.addSubview(nonImage)
        profileView.backgroundColor = .white
        profileView.layer.cornerRadius = 80 / 2
        nonImage.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
        
        profileView.snp.makeConstraints { make in
            make.height.width.equalTo(80)
            make.centerX.equalToSuperview()
            make.top.equalTo(fullName.snp.top).inset(-90)
        }
    }
 
    
    func fullNameLabel() {
        view.addSubview(fullName)
        fullName.text = "İbrahim Aktaş"
        fullName.textColor = .white
        fullName.snp.makeConstraints { make in
            make.height.equalTo(30)
      
            make.top.equalToSuperview().inset(200)
            make.centerX.equalToSuperview()
        }
    }
    
    func setupdescriptionLabel() {
        view.addSubview(descipritonLabel)
        descipritonLabel.text = "Mühendis, Yazılımcı, Sporcu"
        descipritonLabel.numberOfLines = 1
        descipritonLabel.textColor = .white
        descipritonLabel.snp.makeConstraints { make in
            make.height.equalTo(30)
            
            make.top.equalTo(fullName.snp.bottom).inset(4)
            make.centerX.equalToSuperview()
        }
    }
    
    func makeSubscriptions() {
        view.addSubview(subscriptionButton)
        subscriptionButton.setTitle("Tüm Abonelikleri Gör", for: .normal)
        subscriptionButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        subscriptionButton.tintColor = .white
 
         
  
         
        subscriptionButton.backgroundColor = UIColor(hex: "32312d")
        subscriptionButton.alpha = 0.95
        subscriptionButton.layer.masksToBounds = true
        subscriptionButton.layer.cornerRadius = 8
        
        
        subscriptionButton.snp.makeConstraints { make in
            make.height.equalTo(45)
            make.leading.trailing.equalToSuperview().inset(16)
            make.centerX.equalToSuperview()
            make.top.equalTo(descipritonLabel.snp.bottom).inset(-12)
        }
        
        let imagechevron = UIImageView()
        imagechevron.image = UIImage(systemName: "chevron.right", withConfiguration: UIImage.SymbolConfiguration(pointSize: 16, weight: .bold))
        subscriptionButton.addSubview(imagechevron)
        imagechevron.contentMode = .scaleAspectFit
        imagechevron.snp.makeConstraints { make in
            make.trailing.equalToSuperview().inset(16)
            make.height.equalTo(18)
            make.width.equalTo(18)
            make.centerY.equalToSuperview()
        }
        
      
        
     
    
        
        
    }
    
    func setupButton() {
        let heartImage = UIImage(systemName: "heart", withConfiguration: UIImage.SymbolConfiguration(pointSize: 16, weight: .bold))?.withRenderingMode(.alwaysOriginal)
        let whiteHeartImage = heartImage?.withTintColor(.white)
 
        hearthButton.setImage(whiteHeartImage, for: .normal)
        hearthButton.backgroundColor = UIColor(hex: "32312d")
        hearthButton.layer.cornerRadius = 8

        
    }
    
    func setupMiddleButton() {
        let starImage = UIImage(systemName: "star", withConfiguration: UIImage.SymbolConfiguration(pointSize: 16, weight: .bold))?.withRenderingMode(.alwaysOriginal)
        let whiteStarImage = starImage?.withTintColor(.white)
        
 
        followButton.setImage(whiteStarImage, for: .normal)
        followButton.backgroundColor = UIColor(hex: "32312d")
        followButton.layer.cornerRadius = 40/2
 
    }
    
    func setupLastButton() {
        let bubbleImage = UIImage(systemName: "bubble.middle.bottom.fill", withConfiguration: UIImage.SymbolConfiguration(pointSize: 16, weight: .bold))?.withRenderingMode(.alwaysOriginal)
        let whiteBubbleImage = bubbleImage?.withTintColor(.white)
        
 
        followButton2.setImage(whiteBubbleImage, for: .normal)
        followButton2.backgroundColor = UIColor(hex: "32312d")
        followButton2.layer.cornerRadius = 40/2
        followButton2.setTitle("Chat", for: .normal)
        let spacing: CGFloat = 16 // İstedğiniz boşluk miktarı
            followButton2.imageEdgeInsets = UIEdgeInsets(top: 0, left: -spacing/2, bottom: 0, right: spacing/2)
 
    }
    
  
}

extension MyProfileViewController: MyProfileViewInterface {
    func setupViews() {
         
    }
    
 
}
