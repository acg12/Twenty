//
//  ContentView.swift
//  Twenty Watch App
//
//  Created by Angela Christabel on 20/03/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack(
                alignment: .leading,
                spacing: 0
            ) {
                ScrollView {
                    Text("It's another day at the Apple Developer Academy. Don't forget to rest your eyes every 20 minutes with us!")
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                        .frame(maxWidth: .infinity)
                        .padding(EdgeInsets(top: 16, leading: 0, bottom: 16, trailing: 0))
                    
                    Spacer()
                    NavigationLink(destination: ScheduleView()) {
                        Text("Start")
                    }
                    .tint(.accentColor)
                }
            }
            .navigationTitle("Twenty")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
