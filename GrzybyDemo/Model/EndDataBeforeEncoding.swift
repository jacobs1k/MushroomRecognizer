//
//  EndDataBeforeEncoding.swift
//  GrzybyDemo
//
//  Created by Kuba on 01/06/2023.
//

import Foundation


class EndDataBeforeEncoding {
    var capShape: String = ""
    var capSurface: String = ""
    var capColor: String = ""
    var bruises: String = ""
    var odor: String = ""
    var gillAttachment: String = ""
    var gillSpacing: String = ""
    var gillSize: String = ""
    var gillColor: String = ""
    var stalkShape: String = ""
    var stalkRoot: String = ""
    var stalkSurfaceAboveRing: String = ""
    var stalkSurfaceBelovRing: String = ""
    var stalkColorAboveRing: String = ""
    var stalkColorBelowRing: String = ""
    var veilColor: String = ""
    var ringNumber: String = ""
    var ringType: String = ""
    var sporePrinColor: String = ""
    var population: String = ""
    var habitat: String = ""
    
    let veilTypeEncoded: Int = 0
    
    var capShapeEncoded: Int {
        switch capShape{
        case "Bell": return 0
        case "Conical": return 1
        case "Convex": return 5
        case "Flat": return 2
        case "Knobbed": return 3
        case "Sunken": return 4
        default: return -1
        }
    }
    
    var capSurfaceEncoded: Int {
        switch capSurface{
        case "Fibrous": return 0
        case "Grooves": return 1
        case "Scaly": return 3
        case "Smooth": return 2
        default: return -1
        }
    }
    
    var bruisesEncoded: Int {
        switch bruises{
        case "Yes": return 1
        case "No": return 0
        default: return -1
        }
    }
    
    var capColorEncoded: Int {
        switch capColor{
        case "Brown": return 4
        case "Buff": return 0
        case "Cinnamon": return 1
        case "Gray": return 3
        case "Green": return 6
        case "Pink": return 5
        case "Purple": return 7
        case "Red": return 2
        case "White": return 8
        case "Yellow": return 9
        default: return -1
        }
    }
    
 
    
    
    var odorEncoded: Int {
        switch odor{
        case "Almond": return 0
        case "Anise": return 3
        case "Creosote": return 1
        case "Fishy": return 8
        case "Foul": return 2
        case "Musty": return 4
        case "None": return 5
        case "Pungent": return 6
        case "Spicy": return 7
        default: return -1
        }
    }
    
    var gillAttachmentEncoded: Int {
        switch gillAttachment{
        case "Attached": return 0
        case "Free": return 1
        default: return -1
        }
    }
    
    var gillSpacingEncoded: Int {
        switch gillSpacing{
        case "Close": return 0
        case "Crowded": return 1
        default: return -1
        }
    }
    
    var gillSizeEncoded: Int {
        switch gillSize{
        case "Broad": return 0
        case "Narrow": return 1
        default: return -1
        }
    }
    
    var gillColorEncoded: Int {
        switch gillColor{
        case "Black": return 4
        case "Brown": return 5
        case "Buff": return 0
        case "Chocolate": return 3
        case "Gray": return 2
        case "Green": return 8
        case "Orange": return 6
        case "Pink": return 7
        case "Purple": return 9
        case "Red": return 1
        case "White": return 10
        case "Yellow": return 11
        default: return -1
        }
    }
    
    var stalkShapeEncoded: Int {
        switch stalkShape{
        case "Enlarging": return 0
        case "Tapering": return 1
        default: return -1
        }
    }
    
    var stalkRootEncoded: Int {
        switch stalkRoot{
        case "Bulbous": return 0
        case "Club": return 1
        case "Equal": return 2
        case "Rooted": return 3
        default: return -1
        }
    }
    
    var stalkSurfaceAboveRingEncoded: Int {
        switch stalkSurfaceAboveRing{
        case "Fibrous": return 0
        case "Scaly": return 3
        case "Silky": return 1
        case "Smooth": return 2
        default: return -1
        }
    }
    
    
    var stalkSurfaceBelovRingEncoded: Int {
        switch stalkSurfaceBelovRing{
        case "Fibrous": return 0
        case "Scaly": return 3
        case "Silky": return 1
        case "Smooth": return 2
        default: return -1
        }
    }
    
    var stalkColorAboveRingEncoded: Int {
        switch stalkColorAboveRing{
        case "Brown": return 4
        case "Buff": return 0
        case "Cinnamon": return 1
        case "Gray": return 3
        case "Orange": return 5
        case "Pink": return 6
        case "Red": return 2
        case "White": return 7
        case "Yellow": return 8
        default: return -1
        }
    }
    
    var stalkColorBelowRingEncoded: Int {
        switch stalkColorBelowRing{
        case "Brown": return 4
        case "Buff": return 0
        case "Cinnamon": return 1
        case "Gray": return 3
        case "Orange": return 5
        case "Pink": return 6
        case "Red": return 2
        case "White": return 7
        case "Yellow": return 8
        default: return -1
        }
    }
    
    var veilColorEncoded: Int {
        switch veilColor{
        case "Brown": return 0
        case "Orange": return 1
        case "White": return 2
        case "Yellow": return 3
        default: return -1
        }
    }
    
    var ringNumberEncoded: Int {
        switch ringNumber{
        case "None": return 0
        case "One": return 1
        case "Two": return 2
        default: return -1
        }
    }
    
    var ringTypeEncoded: Int {
        switch ringType{
        case "Flaring": return 1
        case "Evanescent": return 0
        case "Large": return 2
        case "None": return 3
        case "Pendant": return 4
        default: return -1
        }
    }
    
    var sporePrinColorEncoded: Int {
        switch sporePrinColor{
        case "Black": return 2
        case "Brown": return 3
        case "Buff": return 0
        case "Chocolate": return 1
        case "Green": return 5
        case "Orange": return 4
        case "Purple": return 6
        case "White": return 7
        case "Yellow": return 8
        default: return -1
        }
    }
    
    
    var populationEncoded: Int {
        switch population{
        case "Abundant": return 0
        case "Clustered": return 1
        case "Numerous": return 2
        case "Scattered": return 3
        case "Several": return 4
        case "Solitary": return 5
        default: return -1
        }
    }
    
    var habitatEncoded: Int {
        switch habitat{
        case "Grasses": return 1
        case "Leaves": return 2
        case "Meadows": return 3
        case "Paths": return 4
        case "Urban": return 5
        case "Waste": return 6
        case "Woods": return 0
        default: return -1
        }
    }
    
    
    
    func getEncodedArray() -> [Int] {
        let arrayToPredict = [
            capShapeEncoded, capSurfaceEncoded, capColorEncoded, bruisesEncoded, odorEncoded, gillAttachmentEncoded,
            gillSpacingEncoded, gillSizeEncoded, gillColorEncoded, stalkShapeEncoded, stalkRootEncoded,
            stalkSurfaceAboveRingEncoded, stalkSurfaceBelovRingEncoded, stalkColorAboveRingEncoded,
            stalkColorBelowRingEncoded, veilTypeEncoded, veilColorEncoded, ringNumberEncoded,
            ringTypeEncoded, sporePrinColorEncoded, populationEncoded, habitatEncoded
        ]
        return arrayToPredict
    }
    
    func dataArrayBeforeEncode() -> [String] {
        return [capShape,
                capSurface,
                capColor,
                bruises,
                odor,
                gillAttachment,
                gillSpacing,
                gillSize,
                gillColor,
                stalkShape,
                stalkRoot,
                stalkSurfaceAboveRing,
                stalkSurfaceBelovRing,
                stalkColorAboveRing,
                stalkColorBelowRing,
                veilColor,
                ringNumber,
                ringType,
                sporePrinColor,
                population,
                habitat]
    }
}
