//
//  HomeView.swift
//  WorkshopSocialMedia
//
//  Created by Daniela Ramos Garcia on 07/12/23.
//

import SwiftUI


struct HomeView: View {
    
    @EnvironmentObject var homeVM: HomeViewModel
    
    var body: some View {
        VStack {
            ZStack {

                ScrollView(.vertical, showsIndicators: false) {
                    ForEach(homeVM.arrHome) { item in
                        PostView(home: item)
                            .foregroundColor(Color(.black))
                    }
                }
            }
        }
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject( HomeViewModel())
    }
}
