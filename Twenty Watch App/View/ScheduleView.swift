//
//  ScheduleView.swift
//  Twenty Watch App
//
//  Created by Angela Christabel on 21/03/23.
//

import SwiftUI

struct ScheduleView: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var selectedHours: Int = 1
    @State private var selectedMinutes: Int = 0
    @State private var isButtonEnabled = false
    
    private var utils = UtilsModel()
    
    var body: some View {
        VStack {
            Text("How long are you working today?")
                .multilineTextAlignment(.center)
                .frame(maxWidth: .infinity)
                .foregroundColor(.gray)
            
            VStack {
                HStack(spacing: 10) {
                    Picker("Hours", selection: $selectedHours) {
                        ForEach(0...23, id: \.self) { hour in
                            Text("\(hour)")
                        }
                    }
                    .frame(width: 70, height: 80)
                    
                    Picker("Minutes", selection: $selectedMinutes) {
                        ForEach(1...59, id: \.self) { minute in
                            Text("\(minute)")
                        }
                    }
                    .frame(width: 70, height: 80)
                }
                .padding(EdgeInsets(top: 4, leading: 0, bottom: 8, trailing: 0))
                
                Button("Schedule now") {
                    let totalSeconds = utils.getSeconds(hours: selectedHours, minutes: selectedMinutes)
                    UserDefaults.standard.set(totalSeconds, forKey: "time")
                    self.presentationMode.wrappedValue.dismiss()
                }
                .tint(.accentColor)
                .clipShape(Capsule())
            }
        }
        .frame(maxWidth: .infinity)
    }
    
}

struct ScheduleView_Previews: PreviewProvider {
    static var previews: some View {
        ScheduleView()
    }
}
