//
//  ProfileModel.swift
//  WorkshopSocialMedia
//
//  Created by Daniela Ramos Garcia on 07/12/23.
//

import Foundation

struct ProfileModel:Identifiable, Equatable{
    var id = UUID()
    var nombrePersona : String
    var username : String
    var profilePicture : String
    var description : String?
    var followers : String
    var following : String

}
extension ProfileModel {
    
    public static var defaultProfile = ProfileModel(nombrePersona: "Van Gogh", username : "@vangogh", profilePicture: "vangoghProfile", description:"Hola soy Claudia, estudiante de ingeniería en tecnologías computacionales en el Tec de Monterrey. Apasionada por aprender y emocionada por ser parte del mundo tecnológico.", followers: "1,225", following: "934")
}
