//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Harshvardhan Basava on 24/05/21.
//

import SwiftUI

struct ProductDetailView: View {
    @EnvironmentObject var shop: Shop
    var body: some View {
        VStack(alignment: .leading, spacing: 5, content: {
            //Navbar
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            //Header
            HeaderDetailView()
                .padding(.horizontal)
            //Detail top part
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1)// used to move items vertically in layouts which overlap.
            //Detail bottom part
            VStack(alignment: .center, spacing: 0, content: {
                //Ratings + Sizes
                RatingSizesDetailView()
                    .padding(.top, -20)
                    .padding(.bottom, 10)
                //Description
                ScrollView(.vertical, showsIndicators: false, content: {
                    Text(shop.selectedProduct?.description ?? sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                })
                //Quantity + Favourite
                QuantityFavouriteDetailView()
                    .padding(.vertical, 10)
                //Add to Cart
                AddToCartDetailView()
                    .padding(.bottom, 20)
            })
            .padding(.horizontal)
            .background(
                Color.white
                    .clipShape(CustomShape())
                    .padding(.top, -105)
            )
        })
        .zIndex(0)
        .ignoresSafeArea(.all, edges: .all)
        .background(
            Color(
                red: shop.selectedProduct?.red ?? sampleProduct.red,
                green: shop.selectedProduct?.green ?? sampleProduct.green,
                blue: shop.selectedProduct?.blue ?? sampleProduct.blue
            ).ignoresSafeArea(.all, edges: .all)
        )
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .environmentObject(Shop())
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
