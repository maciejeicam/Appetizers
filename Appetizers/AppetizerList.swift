//
//  AppetizerList.swift
//  Appetizers
//
//  Created by Maciej Michalik on 02/03/2023.
//

import SwiftUI

struct AppetizerList: View {
    @StateObject var viewModel = AppetizerListViewModel()
    
    
    var body: some View {
        NavigationView {
            List(viewModel.appetizers) { appetizer in
                AppetizerListCell(appetizer: appetizer)
            }
            .navigationTitle("🌯 Appetizers")
        }
        .onAppear {
            viewModel.getAppetizers()
        }
    }
}

struct AppetizerList_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerList()
    }
}
