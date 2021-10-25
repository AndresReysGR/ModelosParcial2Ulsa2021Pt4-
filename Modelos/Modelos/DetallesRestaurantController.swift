//
//  DetallesRestaurantController.swift
//  Modelos
//
//  Created by Alumno on 10/6/21.
//  Copyright © 2021 Alumno. All rights reserved.
//

import Foundation
import UIKit

class DetallesRestaurantController : UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var restaurante : Restaurante = Restaurante(nombre:"", direccion:"", horario:"", foto:"", fondoTop:"", imgRunaterraIcon: "", campeones: [])
    
    var campeones : [Campeon] = []
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return campeones.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellCampeones") as! CeldaCampeonController
        cell.imgChamp.image = UIImage(named: campeones[indexPath.row].icono!)
        cell.lblNombre.text = campeones[indexPath.row].nombre
        cell.lblGenero.text = campeones[indexPath.row].genero
        cell.lblRaza.text = campeones[indexPath.row].raza
        
        return	cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 128
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    
    @IBOutlet weak var lblDireccion: UILabel!
    @IBOutlet weak var lblHorario: UILabel!
    @IBOutlet weak var imgFondoTop: UIImageView!
    @IBOutlet weak var imgRunaterraIcon: UIImageView!
    
    override func viewDidLoad() {
        self.title = restaurante.nombre
        self.title = restaurante.foto
        
        lblDireccion.text = restaurante.direccion
        lblHorario.text = restaurante.horario
        imgFondoTop.image = UIImage(named: restaurante.fondoTop )
        imgRunaterraIcon.image = UIImage(named: restaurante.imgRunaterraIcon)
        

        
    }
}
