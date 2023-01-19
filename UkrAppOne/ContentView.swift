//
//  ContentView.swift
//  tempDelTwo
//
//  Created by Nick Pavlov on 1/15/23.
//

import SwiftUI

struct ContentView: View {
    @State var mainViewToggle = false
    @State var scale = 1.0
    
    var body: some View {
        NavigationView{
            
            ZStack{
                LinearGradient(gradient: Gradient(colors: [.blue, .yellow]), startPoint: .top, endPoint: .bottom)
                
                VStack {
                    Text("UKRAINE\nTravel Guide")
                        .multilineTextAlignment(.center)
                        .font(.title)
                        .bold().frame(maxHeight: .infinity, alignment: .bottom)
                        .foregroundColor(.white)
                        .shadow(radius: 10)
                    
                    NavigationLink(destination: MainView(), label: {
                        VStack{
                            Image(systemName: "arrow.right.circle.fill")
                                .resizable()
                                .frame(width: 45, height: 45)
                                .scaleEffect(scale)
                                .onAppear {
                                    let baseAnimation = Animation.easeInOut(duration: 1)
                                    let repeated = baseAnimation.repeatForever(autoreverses: true)
                                    withAnimation(repeated) {
                                        scale = 0.5
                                    }
                                }
                            Text("Press to continue")
                        }
                        .padding([.bottom], 50)
                        .frame(maxHeight: .infinity, alignment: .bottom)
                    })
                }
            }
            .ignoresSafeArea()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
