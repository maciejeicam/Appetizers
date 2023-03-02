//
//  AppetizerListCell.swift
//  Appetizers
//
//  Created by Maciej Michalik on 02/03/2023.
//

import SwiftUI

struct AppetizerListCell: View {
    let appetizer: Appetizer
    var body: some View {
        HStack {    //poziomo
            Image("asian-flank-steak")
                .resizable()    //dopasowanie wielkosci obrazka
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
                .cornerRadius(20)
            
            VStack(alignment: .leading, spacing: 5){     //pionowo
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.medium)
                
                Text("\(appetizer.price, specifier: "%.2f") PLN") //zaokraglenie do dwoch miejsc po przecinku
                    .foregroundColor(.secondary)
                        .fontWeight(.semibold)
            }
            .padding(.leading)
        }
    }
}

struct AppetizerListCell_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerListCell(appetizer: MockData.sampleApetizer)
    }
}
