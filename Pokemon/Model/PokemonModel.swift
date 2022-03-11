//
//  PokemonModel.swift
//  Pokemon
//
//  Created by Jiradet Amornpimonkul on 3/10/22.
//

import Foundation
import ObjectMapper

class PokemonModel: Mappable, Codable {
    
    var results: [PokemonList] = []
    
    required init?(map: Map) { }
    
    func mapping(map: Map) {
        self.results <- map["results"]
    }
    
}

class PokemonList: Mappable, Codable {
    
    var name: String = ""
    var url: String = ""
    
    required init?(map: Map) { }
    
    func mapping(map: Map) {
        self.name <- map["name"]
        self.url <- map["url"]
    }
    
}