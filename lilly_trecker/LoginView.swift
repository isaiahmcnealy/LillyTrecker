//
//  LoginView.swift
//  lilly_trecker
//
//  Created by Hui Xiao on 11/12/22.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Log in to Munjaro\nCommunity").font(.system(size: 20)).multilineTextAlignment(.center).bold()
                Text("\nManage your account, check notifications,\ncomment on videos, and more").font(.system(size: 15)).foregroundColor(.gray).multilineTextAlignment(.center)
                
                Spacer().frame(height: 100)
                
                Button(
                    action: {print("Login button tapped")}
                ) {
                    HStack {
                        Image("ic-user")
                        NavigationLink(destination: TikTokLogin()) { Text("   Use phone / email / username")}
                        .foregroundColor(.black).frame(width: 250, alignment: .leading)
                    }
                }.buttonStyle(.bordered)
                
                Button(
                    action: {print("Login button tapped")}
                ) {
                    HStack {
                        Image("ic-lilly-together")
                        NavigationLink(destination: TikTokLogin()) { Text("   Continue wity Lilly Together")}
                        .foregroundColor(.black).frame(width: 250, alignment: .leading)
                    }
                }.buttonStyle(.bordered)
                
                Button(
                    action: {print("Continue with TikTok")}
                ) {
                    HStack {
                        Image("ic-TikTok")
                        NavigationLink(destination: TikTokLogin()) { Text("   Continue with TikTok")}
                            .foregroundColor(.black).frame(width: 250, alignment: .leading)
                    }
                }.buttonStyle(.bordered)
                
                Spacer().frame(height: 200)
                
                Text("By continuing, you agreee to our Terms of Service and acknowledge that you have read our Privacy Policy to learn how we collect, use, and share your data").font(.system(size: 14)).foregroundColor(.gray).multilineTextAlignment(.center)
                Spacer().frame(height: 10)
                
                HStack {
                    Text("\nDo you have an account?").font(.system(size: 14)).foregroundColor(.black)
                    NavigationLink(destination: SignupView()) {
                        Text("\nSign up").font(.system(size: 14)).foregroundColor(.red)
                    }
                }.frame(width: 414, height: 116, alignment: .top).background(Color(red: 0.91, green: 0.91, blue: 0.906))
            }
            .padding()
            
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
