//
//  FeatuerdItemView.swift
//  Touchdown
//
//  Created by Harshvardhan Basava on 23/05/21.
//

import SwiftUI

struct FeaturedItemView: View {
    let player: PlayerModel
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

struct FeatuerdItemView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedItemView(player: players[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
