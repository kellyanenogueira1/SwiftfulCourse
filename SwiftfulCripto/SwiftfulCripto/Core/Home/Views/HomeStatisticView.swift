//
//  HomeStatisticView.swift
//  SwiftfulCripto
//
//  Created by Maria Kellyane da Silva Nogueira Sá on 05/01/24.
//

import SwiftUI

struct HomeStatisticView: View {
    
    @EnvironmentObject private var vm: HomeViewModel
    @Binding var showPortifolio: Bool
    
    var body: some View {
        HStack {
            ForEach(vm.statistics) { stat in
                StatisticView(stat: stat)
                    .frame(width:  UIScreen.main.bounds.width / 3)
                
            }
        }
        .frame(width: UIScreen.main.bounds.width, alignment: showPortifolio ? .trailing : .leading)
    }
}

#Preview {
    Group {
        HomeStatisticView(showPortifolio: .constant(false))
    }.environmentObject(DeveloperPreview.instance.homeVM)
    
}
