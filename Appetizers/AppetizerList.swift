//
//  AppetizerList.swift
//  Appetizers
//
//  Created by Maciej Michalik on 02/03/2023.
//

import SwiftUI

struct AppetizerList: View {
    
    @State private var appetizers: [Appetizer] = []
    
    var body: some View {
        NavigationView {
            List(appetizers) { appetizer in
                AppetizerListCell(appetizer: appetizer)
            }
            .navigationTitle("🌯 Appetizers")
        }
        .onAppear {
            getAppetizers()
        }
    }
    
    func getAppetizers() {
        NetworkManager.shared.getAppetizers { result in
            DispatchQueue.main.async {
                switch result {
                case .success(let appetizers):
                    self.appetizers = appetizers
                case .failure(let error):
                    print(error.localizedDescription)
                }
            }
        }
    }
}

struct AppetizerList_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerList()
    }
}
