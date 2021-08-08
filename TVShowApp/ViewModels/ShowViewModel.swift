//
//  ShowViewModel.swift
//  TVShowApp
//
//  Created by Jessica Perez on 8/8/21.
//

import Foundation

//Observal object responsable to be able to updated my views
class ShowViewModel: ObservableObject {
    
    //empty array of tvshow
    @Published var shows = [TVShow]() //wrapping with @published  so it can updated when it changes
    
    
    //responsible to provide our tvshows
    func fetchTVShows() {
        let url = URL(string: "https://api.tvmaze.com/shows")! //force unwrap url
        URLSession.shared.dataTask(with: url) { data, _, error  in  //underscore to repsent something i wont use but i want data
            if let error = error  {  //error do block
                print(error.localizedDescription)
            } else {  //if no error
                if let  data = data {
                    let decoder = JSONDecoder() //decode data
                    do {
                        let shows = try decoder.decode([TVShow].self, from: data)  //if succed then retrieve array of shows
                        self.shows = shows
                    } catch {
                        print(error.localizedDescription)
                    }
                }
            }
        }.resume() //end of url session bracket
    }
}
