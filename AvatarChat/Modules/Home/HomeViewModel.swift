//
//  HomeViewModel.swift
//  AvatarChat
//
//  Created by İbrahim Aktaş on 22.03.2024.
//

import Foundation

protocol HomeViewModelInterface {
    var view: HomeScreenInterface? { get set}
    func viewDidLoad()
}

final class HomeViewModel {
    
    weak var view: HomeScreenInterface?
}

extension HomeViewModel: HomeViewModelInterface {
    func viewDidLoad() {
        view?.setupViews()
        view?.configureCollectionView()
    }
 }
