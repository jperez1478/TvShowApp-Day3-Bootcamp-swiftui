//
//  TVShowDetailView.swift
//  TVShowApp
//
//  Created by Jessica Perez on 8/8/21.
//

import SwiftUI
import SDWebImageSwiftUI

struct TVShowDetailView: View {
    var tvShow: TVShow
    var body: some View {
        ScrollView {
            VStack {
                WebImage(url: tvShow.image.original)
                    .resizable()
                    .indicator(.activity)
                    .aspectRatio(contentMode: .fit)
                VStack(alignment: .leading) {
                    Text(tvShow.name)
                        .font(.largeTitle)
                    
                    Text(tvShow.type)
                        .font(.title)
                }
                .padding(.horizontal)
            }
          
        }
    }
}

