//
//  MyProfileViewModel.swift
//  AvatarChat
//
//  Created by İbrahim Aktaş on 26.03.2024.
//

import Foundation

protocol MyProfileInterface {
    var view: MyProfileViewInterface? { get set }
    func viewDidLoad()
}

final class MyProfileViewModel {
    weak var view: MyProfileViewInterface?
}

extension MyProfileViewModel: MyProfileInterface {
    func viewDidLoad() {
        
    }
}
