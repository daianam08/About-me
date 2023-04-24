//
//  ContentView.swift
//  About me
//
//  Created by scholar on 4/21/23.
//

import SwiftUI

struct ContentView: View {
    @State private var stats = ""
    var body: some View {
        ZStack{
            Color(red: 1.0, green: 0.4, blue: 0.1)
                .ignoresSafeArea()
            VStack{
                HStack{
                    Image("me")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(200)
                    Text("Who's Daiana?!")
                        .foregroundColor(Color.white)
                        .font(.custom("Thonburi-Bold", fixedSize: 35))
                        .multilineTextAlignment(.center)
                    
                }
                .padding()
                HStack{
                    Image("japan1")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(200)
                    Image("ramen")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(200)
                    Image("family")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(200)
                    Image("coding")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(200)
                }
                .padding()
                HStack(alignment: .top){
                    Button("About Me"){
                        stats = "I am from NYC, but my heritage is from the Dominican Republic!"
                    }
                    .font(.callout)
                    .buttonStyle(.bordered)
                    .tint(.secondary)
                    Button("My Loves"){
                        stats = "As you can see, I love Japanese culture, including eating ramen all around NYC. I love my family of 3 and I love learning to code!"
                    }
                    .font(.callout)
                .buttonStyle(.bordered)
                .tint(.secondary)
                    Button("Career"){
                        stats = "I'm certified to teach art and computer science in NYC."
                    }
                    .font(.callout)
                    .buttonStyle(.bordered)
                    .tint(.secondary)
                    Button("Click here for a surprise"){
                        stats = "This is my daughter, Oli! Isn't she cute?!"
//                        Image("oli 1")
//                          unsure what the error above is. driving me crazy!
                    }
                    .font(.callout)
                    .buttonStyle(.bordered)
                    .tint(.secondary)
                }
                .padding()
                Text(stats)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
