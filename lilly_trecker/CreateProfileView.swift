//
//  CreateProfileView.swift
//  lilly_trecker
//
//  Created by Hui Xiao on 11/12/22.
//

import SwiftUI
struct CreateProfileView: View {
    @State private var name: String = ""
    @State private var age: String = ""
    @State private var gender: String = ""
    @State private var highestWeight: String = ""
    @State private var recentWeight: String = ""
    @State private var height: String = ""
    @State private var medStartDate: String = ""

    var body: some View {
        VStack {
            Image("ic-profile")
            Form {
                HStack {
                    Text("Name").frame(width: 100, alignment: .leading)
                    TextField("", text: $name).border(.black)
                }
                
                
                HStack {
                    Text("Age").frame(width: 100, alignment: .leading)
                    TextField("", text: $age).border(.black)
                }
                
                HStack {
                    Text("Gender").frame(width: 100, alignment: .leading)
                    TextField("", text: $gender).border(.black)
                }
                
                HStack {
                    Text("Highest Weight").frame(width: 100, alignment: .leading)
                    TextField("", text: $highestWeight).border(.black)
                }
                
                
                HStack {
                    Text("Reccent Weight").frame(width: 100, alignment: .leading)
                    TextField("", text: $recentWeight).border(.black)
                }
                
                HStack {
                    Text("Height").frame(width: 100, alignment: .leading)
                    TextField("", text: $height).border(.black)
                }
                
                HStack {
                    Text("Med Start Date").frame(width: 100, alignment: .leading)
                    TextField("", text: $medStartDate).border(.black)
                }
            }
            Button("Next", action: {print("Next button tapped")}).foregroundColor(.white).bold().padding().frame(width: 100).background(RoundedRectangle(cornerRadius: 50))
        }
    }
}

struct CreateProfileView_Previews: PreviewProvider {
    static var previews: some View {
        CreateProfileView()
    }
}
