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
        
        
        
        post = PostModel(titulo: "La última cena", descripcion: "Les enseño la hermosa obra que hice hoy.", nombreImagenPost: "davinciPost1", NombrePersona: "@davinci", nombreImagen: "davinciProfile", questions: 8)
        arrHome.append(post)
        
        post = PostModel(titulo: "Speech: Mujeres en STEM ", descripcion: "Ven a este Speech acerca de la importancia de la igualdad de género en el ámbito laboral.", nombreImagenPost: "vangoghPost1", NombrePersona: "@vangogh", nombreImagen: "vangoghProfile", questions: 12)
       arrHome.append(post)
        
        post = PostModel(titulo: "Speech: Mujeres en STEM ", descripcion: "Ven a este Speech acerca de la importancia de la igualdad de género en el ámbito laboral.", nombreImagenPost: "vangoghPost2", NombrePersona: "@vangogh", nombreImagen: "vangoghProfile", questions: 12)
       arrHome.append(post)
        
        post = PostModel(titulo: "Mona Lisa", descripcion: "Pintura iconica de la Mona Lisa", nombreImagenPost: "davinciPost2", NombrePersona: "@davinci", nombreImagen: "davinciProfile", questions: 30)
        arrHome.append(post)
        
        
        post = PostModel(titulo: "CyberHackathon", descripcion: "La semana pasada, participé en un emocionante hackathon. Desafíos superados y nuevos aprendizajes. ¡La seguridad en línea es tarea de todos! 👩‍💻🌐.", nombreImagenPost: "gustavklimtPost1", NombrePersona:"@klimt", nombreImagen: "gustavklimtProfile", questions: 28)
        arrHome.append(post)
        
         post = PostModel(titulo: "Speech: Mujeres en STEM ", descripcion: "Ven a este Speech acerca de la importancia de la igualdad de género en el ámbito laboral.", nombreImagenPost: "gustavklimtPost1", NombrePersona: "@klimt", nombreImagen: "gustavklimtProfile", questions: 12)
        arrHome.append(post)
        
        post = PostModel(titulo: "Speech: Mujeres en STEM ", descripcion: "Ven a este Speech acerca de la importancia de la igualdad de género en el ámbito laboral.", nombreImagenPost: "rembrandtPost1", NombrePersona: "@rembrandt", nombreImagen: "rembrandtProfile", questions: 12)
       arrHome.append(post)
        
        post = PostModel(titulo: "Speech: Mujeres en STEM ", descripcion: "Ven a este Speech acerca de la importancia de la igualdad de género en el ámbito laboral.", nombreImagenPost: "rembrandtPost2", NombrePersona: "@rembrandt", nombreImagen: "rembrandtProfile", questions: 12)
       arrHome.append(post)
        
        
        
        
        
    }
    
    func getPostsForUser(username: String) -> [PostModel] {
            return arrHome.filter { $0.NombrePersona == username }
        }
}
