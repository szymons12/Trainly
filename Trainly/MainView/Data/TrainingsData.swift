//
//  TrainingsData.swift
//  Trainly
//
//  Created by szymon on 04/05/2023.
//

import Foundation

var Casual: [CasualTraining] = [

    CasualTraining(exercise: "Belly", image: "belly", time: 60,rep: 3, lvl: 2),
    CasualTraining(exercise: "Push-up", image: "push-up", time: 15,rep: 3, lvl: 3),
    CasualTraining(exercise: "Side-plank", image: "side-plank", time: 60,rep: 2, lvl: 1),
    CasualTraining(exercise: "Sit-up", image: "sit-up", time: 40,rep: 2, lvl: 2),
    CasualTraining(exercise: "Dip-lunge", image: "dip-lunge", time: 20,rep: 3, lvl: 2)


]

var Bell: [BellyEx] = [

BellyEx(exercise: "Plank", images: "https://firebasestorage.googleapis.com/v0/b/trainly-a2792.appspot.com/o/deska.gif?alt=media&token=3e47a5f7-96ee-4da4-92f3-4a83c63b9f3d", time: 3),
BellyEx(exercise: "Bridge", images: "https://firebasestorage.googleapis.com/v0/b/trainly-a2792.appspot.com/o/mostek.gif?alt=media&token=f4e639f5-649d-467a-beee-ff619326c198", time: 30),
BellyEx(exercise: "Revers", images: "https://firebasestorage.googleapis.com/v0/b/trainly-a2792.appspot.com/o/revers.gif?alt=media&token=386f9c2a-e19f-4b45-889a-d42aad60049f", time: 30),
BellyEx(exercise: "Reversecrunches", images: "https://firebasestorage.googleapis.com/v0/b/trainly-a2792.appspot.com/o/reversecrunches.gif?alt=media&token=1ea68a39-d852-49eb-aae5-8919f446678b", time: 30)

]


var Shop : [ShopEx] = [
ShopEx(exercise: "Lunge", image: "Lunge", lvl: 2, time: 30, cost: 750, point: 150),
ShopEx(exercise: "Jump", image: "Jump", lvl: 1, time: 45, cost: 600, point: 200),
ShopEx(exercise: "Kobra", image: "Kobra", lvl: 3, time: 30, cost: 900, point: 250),
ShopEx(exercise: "LegRotation", image: "LegRotation", lvl: 2, time: 40, cost: 1000, point: 300)





]
