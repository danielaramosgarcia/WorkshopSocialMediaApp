//
//  ProfileView.swift
//  WorkshopSocialMedia
//
//  Created by Daniela Ramos Garcia on 07/12/23.
//

import SwiftUI


struct ProfileView: View {
    
    @EnvironmentObject var postVM: PostViewModel
    let profile : ProfileModel

    var body: some View {
            VStack{
                VStack{
                    HStack{
                        Image(profile.profilePicture)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 100, height: 100)
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.white, lineWidth: 1))
                            .shadow(radius: 4)
                            .padding(.horizontal, 10)
                        VStack{
                            Text(profile.nombrePersona)
                                .font(.system(size: 30, weight: .heavy))
                                .frame(alignment: .leading)
                            HStack{
                                VStack{
                                    Text(profile.followers)
                                        .font(.system(size: 25, weight: .heavy))
                                    Text("Seguidores")
                                        .font(.system(size: 15))
                                        .bold()
                                }
                                .padding(.horizontal, 10)
                                
                                VStack{
                                    Text(profile.following)
                                        .font(.system(size: 25, weight: .heavy))
                                    Text("Seguidos")
                                        .font(.system(size: 15))
                                        .bold()
                                }
                            }
                            
                        }
                        .padding(.horizontal, 10)
                        
                        
                        Spacer()
                    }
                    .padding()
                }
                
                ScrollView{
                    VStack(alignment: .leading){
                        HStack{
                            Text("Descripción:")
                                .font(.system(size: 20))
                                .bold()
                            Spacer()
                        }
                        .padding(.bottom, 1)
                        Text(profile.description ?? "")
                        
                    }
                    .padding()
                    
                    Divider()
                        .background(Color("AppleGray"))
                    
                    ForEach(postVM.getPostsForUser(username: profile.username)) { post in
                        PostView(post: post)
                        
                    }
                }
                
            }
        
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(profile: ProfileModel.defaultProfile)
            .environmentObject(PostViewModel())
    }
}
