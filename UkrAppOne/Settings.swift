//
//  Settings.swift
//  UkrAppOne
//
//  Created by Nick Pavlov on 1/17/23.
//

import SwiftUI

struct Settings: View {
    @State var isOnToggle = false
    @State var isOnSheet = false
    @State var isOnAbout = false
    @State var isOnShare = false
    
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.blue, .yellow, .black]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack{
            Image("AppLogo")
                .resizable()
                .frame(width: 250, height: 250)
                .cornerRadius(10)
            Text("Guide for Ukraine")
                .font(.title)
                .bold()
                
                NavigationView {
                    List {
                        Section {
                            Toggle(isOn: $isOnToggle, label: {
                                Text("Save visited places")
                            })
                            
                            Button(action: {
                                self.isOnSheet = true
                            }, label: {
                                HStack{
                                    Image(systemName: "list.clipboard")
                                    Text("Privacy Policy")
                                }
                            })
                            .foregroundColor(.primary)
                            .sheet(isPresented: $isOnSheet, content: {
                                Text("Privacy Policy")
                                    .bold()
                                Text("Our Privacy Policy was last updated on 01.15.2023.\nThis Privacy Policy describes Our policies and procedures on the collection, use and disclosure of Your information when You use the Service and tells You about Your privacy rights and how the law protects You.\nWe use Your Personal data to provide and improve the Service. By using the Service, You agree to the collection and use of information in accordance with this Privacy Policy. This Privacy Policy was generated\nby TermsFeed App Privacy Policy Generator.")
                                    .padding()
                                    .multilineTextAlignment(.center)
                            })
                            
                            Button(action: {
                                self.isOnShare = true
                            }, label: {
                                HStack {
                                    Image(systemName: "square.and.arrow.up")
                                    Text("Share this App")
                                }
                            }).sheet(isPresented: $isOnShare, content: {
                                ActivityView(activityItems: ["Guide of Ukraine"])
                            }).foregroundColor(.primary)
                            
                            HStack{
                                Image(systemName: "globe")
                                Text("Our Website")
                                    .foregroundColor(.blue)
                                    .onTapGesture {
                                        UIApplication.shared.open(URL(string: "https://freecode.pythonanywhere.com")!, options: [:])
                                    }
                            }
                                
                            HStack {
                                Image(systemName: "exclamationmark.circle")
                                Text("Version")
                                Spacer()
                                Text("1.3.2")
                            }
                            
                            Button(action: {
                                self.isOnAbout = true
                            }, label: {
                                HStack {
                                    Image(systemName: "figure.arms.open")
                                    Text("About")
                                }
                            })
                            .foregroundColor(.primary)
                            .sheet(isPresented: $isOnAbout, content: {
                                ZStack {
                                    LinearGradient(gradient: Gradient(colors: [.blue, .yellow]), startPoint: .top, endPoint: .bottom)
                                    VStack{
                                        Spacer()
                                        Text("This App was created by very talanted guy, if you would like to support his work and you like what he is doing, please you can donate a car or home. Thank you!")
                                        Spacer()
                                        Text("Copyright © 2023, All Rights Reserved.")
                                            .padding()
                                    }
                                    .padding()
                                    .multilineTextAlignment(.center)
                                }
                                .ignoresSafeArea()
                                .bold()
                            })
                        }.navigationTitle("Settings")
                        
                        Section {
                            
                            
                            
                            
                            
                                HStack{
                                    Spacer()
                                    Button("Exit") {
                                        exit(0)
                                    }
                                        .foregroundColor(.red)
                                    Spacer()
                                }
                        }
                    }.listStyle(.insetGrouped)
                }
            }
        }
    }
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}
