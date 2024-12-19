//
//  Favorites.swift
//  SnowSeeker
//
//  Created by Juan Carlos Robledo Morales on 18/12/24.
//

import SwiftUI

@Observable
class Favorites {
    // los resorts que el usuario ha marcado como favoritos
    private var resorts: Set<String>

    // la clave que estamos usando para leer/escribir en UserDefaults
    private let key = "Favorites"

    init() {
        if let data = UserDefaults.standard.data(forKey: key) {
            if let decoded = try? JSONDecoder().decode(Set<String>.self, from: data) {
                resorts = decoded
                return
            }
        }

        resorts = []
    }


    // devuelve verdadero si nuestro set contiene este resort
    func contains(_ resort: Resort) -> Bool {
        resorts.contains(resort.id)
    }

    // agrega el resort a nuestro set y guarda el cambio
    func add(_ resort: Resort) {
        resorts.insert(resort.id)
        save()
    }

    // elimina el resort de nuestro set y guarda el cambio
    func remove(_ resort: Resort) {
        resorts.remove(resort.id)
        save()
    }

    func save() {
        if let data = try? JSONEncoder().encode(resorts) {
            UserDefaults.standard.set(data, forKey: key)
        }
    }

}
