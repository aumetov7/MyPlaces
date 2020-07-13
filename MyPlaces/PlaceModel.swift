//
//  PlaceModel.swift
//  MyPlaces
//
//  Created by Акбар Уметов on 13.07.2020.
//  Copyright © 2020 Акбар Уметов. All rights reserved.
//

import UIKit

struct Place {
    var name: String
    var location: String?
    var type: String?
    var image: UIImage?
    var restaurantImage: String?
    
    static let restaurantNames = [
        "Деловая колбаса", "Сулико", "Burger House", "Hookah Place", "KetchUp"
    ]
    
    static func getPlaces() -> [Place] {
        var places = [Place]()
        
        for place in restaurantNames {
            places.append(Place(name: place,
                                location: "Санкт-Петербург",
                                type: "Ресторан",
                                image: nil,
                                restaurantImage: place))
        }
        
        return places
    }
}
