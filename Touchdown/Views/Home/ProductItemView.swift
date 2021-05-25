//
//  ProductItemView.swift
//  Touchdown
//
//  Created by Harshvardhan Basava on 24/05/21.
//

import SwiftUI

struct ProductItemView: View {
    var product: ProductModel
    var body: some View {
        VStack(alignment: .leading, spacing: 6, content: {
            ZStack(content: {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            })
            .background(Color(red: product.red, green: product.green, blue: product.blue))
            .cornerRadius(12)
            Text(product.name)
                .font(.title)
                .fontWeight(.black)
            Text(product.formattedPrice)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
        })
    }
}

struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(product: products[0])
            //.environmentObject(Shop())
            .previewLayout(.fixed(width: 200, height: 300))
            .padding()
            .background(colorBackground)
    }
}
