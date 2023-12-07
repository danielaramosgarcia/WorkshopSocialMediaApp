//
//  HomeView.swift
//  WorkshopSocialMedia
//
//  Created by Daniela Ramos Garcia on 07/12/23.
//

import SwiftUI


struct HomeView: View {
    
    @EnvironmentObject var homeVM: PostViewModel
    
    var body: some View {
        VStack {
                
            HStack{
                Spacer()
                Image("artIcon")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 40, height: 40)
                
                Spacer()
            }
            .foregroundColor(.gray)
            .clipShape(Circle())

            ScrollView(.vertical, showsIndicators: false) {
                ForEach(homeVM.arrHome) { item in
                    PostView(home: item)
                        .foregroundColor(Color(.black))
                }
            }
        }
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject( PostViewModel())
    }
}
