//
//  CoinImageViewModel.swift
//  SwiftfulCripto
//
//  Created by Maria Kellyane da Silva Nogueira Sá on 03/01/24.
//

import Foundation
import SwiftUI
import Combine

class CoinImageViewModel: ObservableObject {
    
    @Published var image: UIImage?
    @Published var isLoading: Bool = true
    
    private let coin: CoinModel
    private let dataService: CoinImageService
    private var cancellables = Set<AnyCancellable>()
    
    init(coin: CoinModel) {
        self.coin = coin
        self.dataService = CoinImageService(coin: coin)
        addSubscribers()
    }
    
    private func addSubscribers() {
        dataService.$image
            .sink { [weak self] (returnedImage) in
                self?.isLoading = false
                self?.image = returnedImage
            }
            .store(in: &cancellables)

    }
}
