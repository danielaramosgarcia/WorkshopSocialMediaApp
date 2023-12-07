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
    
    public static var defaultProfile = ProfileModel(nombrePersona: "Van Gogh", username : "@vangogh", profilePicture: "vangoghProfile", description:"Hola soy Vangogh, nací en Zundert, Países Bajos, en 1853. A lo largo de mi vida, luché con la pasión por la pintura, dejando un legado artístico con obras como La noche estrellada y Los girasoles, a pesar de las batallas internas que marcaron mi camino.", followers: "10,530", following: "58")
}
