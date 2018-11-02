//
//  APIClient.swift
//  CollectionView2
//
//  Created by Yoga Pratama on 02/11/18.
//  Copyright © 2018 YPA. All rights reserved.
//

import Foundation

typealias AudiobookJSON = [String:Any]

struct APIClient {
    
    static func getAudiobooksAPI(completion : @escaping (AudiobookJSON?) -> Void){
     
        let url = URL(string: "https://rss.itunes.apple.com/api/v1/us/audiobooks/top-audiobooks/all/10/explicit.json")
        
        let session = URLSession.shared
        
        guard let unwrappedURL = url else { print("Error unwrapping URL"); return }
        
        let dataTask = session.dataTask(with: unwrappedURL){(data,response , error) in
            
            guard let unwrappedDAta = data else { print("Error unwrapping data"); return }
            
            do {
                let responseJSON = try JSONSerialization.jsonObject(with: unwrappedDAta, options: []) as? AudiobookJSON
                
                
                completion(responseJSON)
            } catch {
                print("Could not get API data. \(error), \(error.localizedDescription)")
            }
            
        }
        dataTask.resume()
    }
}
