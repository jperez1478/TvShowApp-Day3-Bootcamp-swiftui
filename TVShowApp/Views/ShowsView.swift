//
//  ShowsView.swift
//  TVShowApp
//
//  Created by Jessica Perez on 8/8/21.
//

import SwiftUI



//MARK: - Body
struct ShowsView: View {
    
    //object observe
   @ObservedObject var showViewModel = ShowViewModel()
    
    var body: some View {
        Text("Hello, world!")
            .padding()
            .onAppear(perform: {
                showViewModel.fetchTVShows()
            })
    }
}

//MARK: - Preview

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ShowsView()
    }
}
