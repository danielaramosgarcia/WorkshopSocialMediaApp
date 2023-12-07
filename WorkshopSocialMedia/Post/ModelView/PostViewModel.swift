//
//  File.swift
//  WorkshopSocialMedia
//
//  Created by Daniela Ramos Garcia on 07/12/23.
//


import Foundation
import SwiftUI

class PostViewModel : ObservableObject{
    
    @Published var arrHome = [PostModel]()
    
    init(){
        getHome()
    }
    func getHome() {
        
        var post : PostModel
        
        
        
        post = PostModel(titulo: "La última cena", descripcion: "Me llego mucha inspiracion para este cuadro, espero les guste me tomo mucho tiempo y muchas cenas.", nombreImagenPost: "davinciPost1", NombrePersona: "@davinci", nombreImagen: "davinciProfile")
        arrHome.append(post)
        
        post = PostModel(titulo: "Girasoles", descripcion: "Hoy en mi sala me encontre con estos girasoles hermosos.", nombreImagenPost: "vangoghPost1", NombrePersona: "@vangogh", nombreImagen: "vangoghProfile")
       arrHome.append(post)
        

        
        post = PostModel(titulo: "Mona Lisa", descripcion: "Pintura iconica de la Mona Lisa", nombreImagenPost: "davinciPost2", NombrePersona: "@davinci", nombreImagen: "davinciProfile")
        arrHome.append(post)
        
        post = PostModel(titulo: "Noche Estrellada", descripcion: "No les causa nostalgia y una mezcla de tristeza esta noche donde se ven las estrellas.", nombreImagenPost: "vangoghPost2", NombrePersona: "@vangogh", nombreImagen: "vangoghProfile")
       arrHome.append(post)
        
        post = PostModel(titulo: "El Beso", descripcion: "No pude soportar representar lo mucho que quiero a mi novia 🤍", nombreImagenPost: "gustavklimtPost1", NombrePersona:"@klimt", nombreImagen: "gustavklimtProfile")
        arrHome.append(post)
        

        
        post = PostModel(titulo: "Fogata", descripcion: "Ante la luz de la fogata es cuando puedo realmente pensar en mi vida.", nombreImagenPost: "rembrandtPost1", NombrePersona: "@rembrandt", nombreImagen: "rembrandtProfile")
       arrHome.append(post)
        
        post = PostModel(titulo: "Casa en la montaña", descripcion: "Estaria increible ir de vacaciones a mi casa en la montaña", nombreImagenPost: "gustavklimtPost2", NombrePersona: "@klimt", nombreImagen: "gustavklimtProfile")
       arrHome.append(post)
        
        post = PostModel(titulo: "En el lago", descripcion: "No les parece que es momento de retomar remar en lagos", nombreImagenPost: "rembrandtPost2", NombrePersona: "@rembrandt", nombreImagen: "rembrandtProfile")
       arrHome.append(post)
        
        
        
        
        
    }
    
    func getPostsForUser(username: String) -> [PostModel] {
            return arrHome.filter { $0.NombrePersona == username }
        }
}
