//
//  OrderView.swift
//  Appetizers
//
//  Created by Maciej Michalik on 02/03/2023.
//

import SwiftUI

struct OrderView: View {
    var body: some View {
        NavigationView {
            Text("Orders")
                .navigationTitle("🥗 Orders")
        }
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
