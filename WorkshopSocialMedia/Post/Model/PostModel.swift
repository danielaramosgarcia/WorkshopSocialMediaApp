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
    
    public static var defaultHome = PostModel(titulo: "El Beso", descripcion: "No pude soportar representar lo mucho que quiero a mi novia 🤍", nombreImagenPost: "gustavklimtPost1", NombrePersona:"@klimt", nombreImagen: "gustavklimtProfile")
}
