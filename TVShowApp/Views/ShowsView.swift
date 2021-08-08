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

   let columns = [
    //3 grid colum flexible with spacing and width
    GridItem(.flexible(minimum: 100, maximum: 200), spacing: 16),
    GridItem(.flexible(minimum: 100, maximum: 200), spacing: 16),
    GridItem(.flexible(minimum: 100, maximum: 200), spacing: 16),
   ]
    
    var body: some View {
        NavigationView { //to navigate on views
            ScrollView { //embed content in scrollview
                LazyVGrid(columns: columns, content: {  //for each to display dif show
                    ForEach(showViewModel.shows) { show in
                        
                    }
                })
            }
        }
    }
}

//MARK: - Preview

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ShowsView()
    }
}
