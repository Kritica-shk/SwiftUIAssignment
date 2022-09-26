//
//  ContentView.swift
//  SwiftUIAssignment
//
//  Created by EKbana on 26/09/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isDarkMode:Bool = true
    
    var body: some View {
        ZStack {
            LinearGradient(colors: isDarkMode ? [.purple, .white] : [.black, .indigo], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            VStack {
                Image(isDarkMode ?  "suns" : "clouds")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 300, height: 300)
                
                Text(isDarkMode ? "Mostly sunny 12°C" : "Cloudy 5°C")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(isDarkMode ? Color.black : Color.white)
                    .padding()
                
                Button {
                    isDarkMode.toggle()
                        } label: {
                            Text(isDarkMode ? "Dark Mode" : "Light Mode")
                                .frame(width: 200, height: 50, alignment: .center)
                                .background(Color.white)
                                .cornerRadius(20)
                                .foregroundColor(Color.black)
                                .font(.system(size: 20, weight: .semibold, design: .rounded))
                        }
            }
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
