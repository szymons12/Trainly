//
//  TrainingsModel.swift
//  Trainly
//
//  Created by szymon on 04/05/2023.
//

import Foundation
import SwiftUI

class CasualTraining: Identifiable {
    var id = UUID()
    var exercise: String
    var image: String
    var time: Int
    
    init(exercise: String, image: String, time: Int ){
        self.exercise = exercise
        self.image = image
        self.time = time
        
    }
}


