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
    var rep: Int
    var lvl: Int
    
    init(exercise: String, image: String, time: Int, rep: Int, lvl: Int ){
        self.exercise = exercise
        self.image = image
        self.time = time
        self.rep = rep
        self.lvl = lvl
    }
}

class BellyEx: Identifiable {
    var id = UUID()
    var exercise: String
    var images: String
    var time: Int
    
    
    init(exercise: String, images: String, time: Int){
    self.exercise = exercise
    self.images = images
    self.time = time
   
        
    }
}

class ShopEx: Identifiable {
    var id = UUID()
    var exercise: String
    var image: String
    var lvl: Int
    var time: Int
    var cost: Int
    var point: Int
    
    init(exercise: String, image: String, lvl: Int, time: Int, cost: Int, point: Int){
        self.exercise = exercise
        self.image = image
        self.lvl = lvl
        self.time = time
        self.cost = cost
        self.point = point
    }
}
