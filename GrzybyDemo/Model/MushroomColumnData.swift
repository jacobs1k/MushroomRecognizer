//
//  MusshromColumnData.swift
//  GrzybyDemo
//
//  Created by Kuba on 31/05/2023.
//

import Foundation

enum ColumnName {
    case capShape, capSurface, capColor, bruises, odor, gillAttachment, gillSpacing, gillSize, gillColor, stalkShape, stalkRoot, stalkSurfaceAboveRing, stalkSurfaceBelovRing, stalkColorAboveRing, stalkColorBelowRing, veilColor, ringNumber, ringType, sporePrinColor, population, habitat
}

struct MushroomColumnData {
    var id: String
    
    var dataSource: [String]
}


let MushroomLabels : [ColumnName : MushroomColumnData] = [
    .capShape : MushroomColumnData(id: "capShape", dataSource: ["Bell", "Conical", "Convex", "Flat", "Knobbed","Sunken"]),
    .capSurface : MushroomColumnData(id: "capSurface", dataSource: ["Fibrous", "Grooves", "Scaly", "Smooth"]),
    .capColor: MushroomColumnData(id: "capColor", dataSource: ["Brown", "Buff", "Cinnamon", "Gray", "Green", "Pink", "Purple", "Red", "White", "Yellow"]),
    .bruises: MushroomColumnData(id: "bruises", dataSource: ["Yes", "No"]),
    .odor: MushroomColumnData(id: "odor", dataSource: ["Almond", "Anise", "Creosote", "Fishy", "Foul", "Musty", "None", "Pungent", "Spicy"]),
    .gillAttachment: MushroomColumnData(id: "gillAttachment", dataSource: ["Attached", "Free"]),
    .gillSpacing: MushroomColumnData(id: "gillSpacing", dataSource: ["Close", "Crowded"]),
    .gillSize: MushroomColumnData(id: "gillSize", dataSource: ["Broad", "Narrow"]),
    .gillColor: MushroomColumnData(id: "gillColor", dataSource: ["Black", "Brown", "Buff", "Chocolate", "Gray", "Green", "Orange", "Pink", "Purple", "Red", "White", "Yellow"]),
    .stalkShape: MushroomColumnData(id: "stalkShape", dataSource: ["Enlarging", "Tapering"]),
    .stalkRoot: MushroomColumnData(id: "stalkRoot", dataSource: ["Bulbous", "Club", "Equal", "Rooted"]),
    .stalkSurfaceAboveRing: MushroomColumnData(id: "stalkSurfaceAboveRing", dataSource: ["Fibrous", "Scaly", "Silky", "Smooth"]),
    .stalkSurfaceBelovRing: MushroomColumnData(id: "stalkSurfaceBelovRing", dataSource: ["Fibrous", "Scaly", "Silky", "Smooth"]),
    .stalkColorAboveRing: MushroomColumnData(id: "stalkColorAboveRing", dataSource: ["Brown", "Buff", "Cinnamon", "Gray", "Orange", "Pink", "Red", "White", "Yellow"]),
    .stalkColorBelowRing: MushroomColumnData(id: "stalkColorBelowRing", dataSource: ["Brown", "Buff", "Cinnamon", "Gray", "Orange", "Pink", "Red", "White", "Yellow"]),
    .veilColor: MushroomColumnData(id: "veilColor", dataSource: ["Brown", "Orange", "White", "Yellow"]),
    .ringNumber: MushroomColumnData(id: "ringNumber", dataSource: ["None", "One", "Two"]),
    .ringType: MushroomColumnData(id: "ringType", dataSource: ["Evanescent", "Flaring", "Large", "None", "Pendant"]),
    .sporePrinColor: MushroomColumnData(id: "sporePrinColor", dataSource: ["Black", "Brown", "Buff", "Chocolate", "Green", "Orange", "Purple", "White", "Yellow"]),
    .population: MushroomColumnData(id: "population", dataSource: ["Abundant", "Clustered", "Numerous", "Scattered", "Several", "Solitary"]),
    .habitat: MushroomColumnData(id: "habitat", dataSource: ["Grasses", "Leaves", "Meadows", "Paths", "Urban", "Waste", "Woods"])
]



