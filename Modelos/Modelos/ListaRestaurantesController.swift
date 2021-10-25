//
//  ViewController.swift
//  Modelos
//
//  Created by Alumno on 10/4/21.
//  Copyright © 2021 Alumno. All rights reserved.
//

import UIKit

class ListaRestaurantesController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var tvRestaurantes: UITableView!
    var restaurantes : [Restaurante] = []
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 176
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celda =  tableView.dequeueReusableCell(withIdentifier: "celdaRestaurante") as! CeldaRestaurantController
        celda.lblNombre.text = restaurantes[indexPath.row].nombre
        celda.imgFoto.image = UIImage(named: restaurantes[indexPath.row].foto)
        
        return celda
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destino = segue.destination as! DetallesRestaurantController
        destino.restaurante = restaurantes[tvRestaurantes.indexPathForSelectedRow!.row]
        let destino2 = segue.destination as! DetallesRestaurantController
        destino2.campeones = restaurantes[tvRestaurantes.indexPathForSelectedRow!.row].campeones
    }
   

    override func viewDidLoad() {
        self.title = "Runaterra"
        
        super.viewDidLoad()
        restaurantes.append(Restaurante(nombre: "Piltover y Zaun" , direccion: "Piltover y Zaun", horario: "Runaterra", foto: "Piltover_y_Zaun", fondoTop: "Piltover_y_Zaun", imgRunaterraIcon:"IconPiltoverZaun", campeones: [Campeon(icono: "Jinx", nombre: "Jinx", genero: "Femenino", raza: "Humano"), Campeon(icono: "Ekko", nombre: "Ekko", genero: "Masculino", raza: "Humano"), Campeon(icono: "VI", nombre: "VI", genero: "Femenino", raza: "Humano")]))
        restaurantes.append(Restaurante(nombre: "Jonia" , direccion: "Jonia", horario: "Runaterra", foto: "Jonia", fondoTop: "Jonia", imgRunaterraIcon:"IconJonia", campeones: [Campeon(icono: "Ahri", nombre: "Ahri", genero: "Femenino", raza: "Kurama"), Campeon(icono: "Irelia", nombre: "Irelia", genero: "Femenino", raza: "Humano"), Campeon(icono: "Jhin", nombre: "Jhin", genero: "Masculino", raza: "Humano")]))
        restaurantes.append(Restaurante(nombre: "Demacia" , direccion: "Demacia", horario: "Runaterra",  foto: "Demacia", fondoTop: "Demacia", imgRunaterraIcon:"IconDemacia", campeones: [Campeon(icono: "Poppy", nombre: "Poppy", genero: "Femenino", raza: "Yordle"), Campeon(icono: "Lux", nombre: "Lux", genero: "Femenino", raza: "Humano"), Campeon(icono: "Morgana", nombre: "Morgana", genero: "Femenino", raza: "Humano")]))
        // Do any additional setup after loading the view.
    }


}

