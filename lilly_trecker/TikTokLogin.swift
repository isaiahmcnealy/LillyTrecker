//
//  TikTokLogin.swift
//  lilly_trecker
//
//  Created by Hui Xiao on 11/14/22.
//

import SwiftUI

struct TikTokLogin: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var action: Int? = 0
    var body: some View {
            VStack {
                Text("Log into your TikTok account\nto connect to Trekker").font(.system(size: 15)).foregroundColor(.black).multilineTextAlignment(.center)
                Form() {
                    HStack {
                        TextField("Mobile number or email", text: $email).border(.black)
                    }
                    
                    HStack {
                        TextField("Password", text: $password).border(.black)
                    }
                }
                Button("Next", action: {action = 1}).foregroundColor(.white).bold().padding().frame(width: 100).background(RoundedRectangle(cornerRadius: 50))
                
                NavigationLink(destination: VideoView(), tag: 1, selection: $action) { EmptyView()}
            }
    }
}

struct TikTokLogin_Previews: PreviewProvider {
    static var previews: some View {
        TikTokLogin()
    }
}
