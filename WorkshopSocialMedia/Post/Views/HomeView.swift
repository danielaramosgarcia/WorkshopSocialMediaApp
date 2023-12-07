//
//  HomeView.swift
//  WorkshopSocialMedia
//
//  Created by Daniela Ramos Garcia on 07/12/23.
//

import SwiftUI


struct HomeView: View {
    
    @EnvironmentObject var postVM: PostViewModel
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            ForEach(postVM.arrPost) { item in
                PostView(post: item)
                    .foregroundColor(Color(.black))
            }
        }  
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(PostViewModel())
    }
}
