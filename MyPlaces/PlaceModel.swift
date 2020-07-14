//
//  PlaceModel.swift
//  MyPlaces
//
//  Created by Акбар Уметов on 13.07.2020.
//  Copyright © 2020 Акбар Уметов. All rights reserved.
//

import RealmSwift

class Place: Object {
    @objc dynamic var name = ""
    @objc dynamic var location: String?
    @objc dynamic var type: String?
    @objc dynamic var imageData: Data?
    
    let restaurantNames = [
        "Деловая колбаса", "Сулико", "Burger House", "Hookah Place", "KetchUp"
    ]
    
    func savePlaces() {
        for place in restaurantNames {
            let image = UIImage(named: place)
            guard let imageData = image?.pngData() else { return }
            
            let newPlace = Place()
            
            newPlace.name = place
            newPlace.location = "Санкт-Петербург"
            newPlace.type = "Ресторан"
            newPlace.imageData = imageData
            
            StorageManager.saveObject(newPlace)
        }
        
    }
}
