//
//  SwiftfulCriptoApp.swift
//  SwiftfulCripto
//
//  Created by Maria Kellyane da Silva Nogueira Sá on 22/12/23.
//

import SwiftUI

@main
struct SwiftfulCriptoApp: App {
    
    @StateObject private var vm = HomeViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .toolbar(.hidden)
            }
            .environmentObject(vm)
        }
    }
}
