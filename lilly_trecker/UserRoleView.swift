//
//  UserRoleView.swift
//  lilly_trecker
//
//  Created by Hui Xiao on 11/12/22.
//

import SwiftUI

struct UserRoleView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Select your role").offset(y: -180)
                
                NavigationLink(destination: CreateProfileView()) {  Text("Patients").font(.system(size: 15 )).foregroundColor(.black).frame(width: 380, height: 48).border(Color.black)
                }
                Spacer().frame(height:50)
                NavigationLink(destination: CreateProfileView()) {  Text("Professionals").font(.system(size: 15 )).foregroundColor(.black).frame(width: 380, height: 48).border(Color.black)
                }
                Spacer().frame(height:50)

                NavigationLink(destination: CreateProfileView()) {  Text("Others").font(.system(size: 15 )).foregroundColor(.black).frame(width: 380, height: 48).border(Color.black)
                }
            }
        }
    }
            
}

struct UserRoleView_Previews: PreviewProvider {
    static var previews: some View {
        UserRoleView()
    }
}
