//
//  ContentView.swift
//  test
//
//  Created by Mohammed Mujtaba Ali on 26/10/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var playerCard = "card5"
    @State private var compCard = "card6"
    @State private var playerScore = 0
    @State private var compScore = 0
    
    var body: some View {
        ZStack {
            Image("background").ignoresSafeArea()
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(compCard)
                    Spacer()
                }
                Spacer()
                Button(action: {
                    var playerNum = Int.random(in: 2...14)
                    var compNum = Int.random(in: 2...14)
                    
                    playerCard = "card"+String(playerNum)
                    compCard = "card"+String(compNum)
                    
                    if(playerNum > compNum){
                        playerScore += 1
                    }
                    else if(compNum > playerNum){
                        compScore += 1
                    }
                },
                       label: { Image("dealbutton")})
                Spacer()
                HStack {
                    Spacer()
                    VStack{
                        Text("Player").font(.headline).foregroundColor(Color.white).padding(.bottom)
                        Text(String(playerScore)).font(.largeTitle).foregroundColor(Color.white)
                            
                    }
                    Spacer()
                    VStack{
                        Text("Computer").padding(.bottom).font(.headline).foregroundColor(Color.white)
                        Text(String(compScore)).font(.largeTitle).foregroundColor(Color.white)
                    }
                    Spacer()
                }
                Spacer()
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
