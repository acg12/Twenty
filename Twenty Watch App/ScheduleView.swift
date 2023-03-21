//
//  ScheduleView.swift
//  Twenty Watch App
//
//  Created by Angela Christabel on 21/03/23.
//

import SwiftUI

struct ScheduleView: View {
    @State private var selectedHours: Int = 1
    @State private var selectedMinutes: Int = 0
    @State private var isButtonEnabled = false
    
    var body: some View {
        VStack {
            Text("How long are you working today?")
                .multilineTextAlignment(.center)
                .foregroundColor(.gray)
            
            VStack {
                HStack(spacing: 10) {
                    Picker("Hours", selection: $selectedHours) {
                        ForEach(0...23, id: \.self) { hour in
                            Text("\(hour)")
                        }
                    }
                    .frame(width: 70)
                    
                    Picker("Minutes", selection: $selectedMinutes) {
                        ForEach(0...59, id: \.self) { minute in
                            Text("\(minute)")
                        }
                    }
                    .frame(width: 70)
                    
//                    NavigationLink(
//                        destination: nil,
//                        isActive: $isButtonEnabled,
//                        label: {
//                            Text("Go to Detail View")
//                        }
//                    )
                }
                .padding()
            }
            
            Spacer()
        }
    }
    
}

struct ScheduleView_Previews: PreviewProvider {
    static var previews: some View {
        ScheduleView()
    }
}
