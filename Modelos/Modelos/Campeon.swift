//
//  Campeones.swift
//  Modelos
//
//  Created by Alexia Ruiz Quiroz on 25/10/21.
//  Copyright © 2021 Alumno. All rights reserved.
//

import Foundation

class Campeon {
    var icono : String?
    var nombre : String?
    var genero : String?
    var raza : String?
    
    init(icono: String, nombre: String, genero: String, raza: String) {
        self.icono = icono
        self.nombre = nombre
        self.genero = genero
        self.raza = raza
    }
}
