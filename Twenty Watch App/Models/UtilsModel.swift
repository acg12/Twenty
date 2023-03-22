//
//  UtilsModel.swift
//  Twenty Watch App
//
//  Created by Angela Christabel on 21/03/23.
//

import Foundation

class UtilsModel: ObservableObject {
    func getSeconds(hours: Int, minutes: Int) -> Int {
        return (hours * 60 * 60) + (minutes * 60)
    }
}
