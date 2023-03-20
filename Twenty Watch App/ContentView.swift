//
//  ContentView.swift
//  Twenty Watch App
//
//  Created by Angela Christabel on 20/03/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(
            alignment: .leading,
            spacing: 0
        ) {
            ScrollView {
                HStack {
                    Text("Twenty")
                        .foregroundColor(.accentColor)
                        .font(.system(size: 24))
                    Spacer()
                }
                
                Text("It's another day at Apple Developer Academy. Don't forget to rest your eyes every 20 minutes with us!")
                    .multilineTextAlignment(.leading)
                    .frame(maxWidth: .infinity)
                    .padding(EdgeInsets(top: 16, leading: 0, bottom: 16, trailing: 0))
                
                Spacer()
                
                Button("Start") {
                    
                }
                .tint(.accentColor)
            }
        }
        .edgesIgnoringSafeArea(.bottom)
        .frame(maxHeight: .infinity)
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
