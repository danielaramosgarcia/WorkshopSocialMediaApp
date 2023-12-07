//
//  PostView.swift
//  WorkshopSocialMedia
//
//  Created by Daniela Ramos Garcia on 07/12/23.
//

import SwiftUI

struct PostView: View {
    
    let post : PostModel
    
    
    var body: some View {
        VStack(alignment: .leading){
            
            HStack{
                Image(post.nombreImagen)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width: 50)
                    .padding()
                
                VStack{
                    Text(post.titulo)
                        .font(.title)
                        .frame(alignment: .leading)
                    Text(post.NombrePersona)
                        .font(.title3)
                        .foregroundColor(.gray)
                        .frame(alignment: .leading)
                }
                Spacer()
            }
            VStack{
                Text(post.descripcion)
                    .frame(alignment: .leading)
                if let imageName = post.nombreImagenPost, !imageName.isEmpty {
                    Image(imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(minWidth: 100.0)
                }
                
            }
            
            
            HStack{
                Spacer()
                Image(systemName: "heart")
                    .foregroundColor(.red)
                    .imageScale(.medium)
                
                Image(systemName: "bubble.right")
                    .foregroundColor(.blue)
                    .imageScale(.medium)
                
                Image(systemName: "arrowshape.turn.up.right")
                    .foregroundColor(.green)
                    .imageScale(.medium)
                
            }
            .padding(.horizontal,10)
            
            Rectangle()
                .frame(height:2)
                .foregroundColor(Color(.gray))
            
        }
    }
    
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView(post: PostModel.defaultHome)
    }
}
