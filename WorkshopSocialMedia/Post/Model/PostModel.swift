//
//  HomeModel.swift
//  WorkshopSocialMedia
//
//  Created by Daniela Ramos Garcia on 07/12/23.
//

import Foundation

struct PostModel:Identifiable, Equatable{
    var id = UUID()
    var titulo : String
    var descripcion : String
    var nombreImagenPost : String?
    var NombrePersona : String
    var nombreImagen :String
}
extension PostModel {
    
    public static var defaultHome = PostModel(titulo: "Inicio de clases", descripcion: "Estoy super emocionada de empezar mis clases como inginiera de Software, ¿Sabías que solo 3 de cada 10 personas estudiando ingeniería son mujeres?", nombreImagenPost: "PostClau", NombrePersona: "@clauarciengam", nombreImagen: "clau")
}
