//
//  PredictionBrain.swift
//  GrzybyDemo
//
//  Created by Kuba on 31/05/2023.
//

import Foundation
import CoreML

class PredictionBrain {
    let testP = [5, 2, 4, 1, 6, 1, 0, 1, 4, 0, 2, 2, 2, 7, 7, 2, 1, 4, 2, 3, 5]
    
    private func createMultiArray(_ inputArray: [Int]) -> MLMultiArray {
      guard let mlMultiArray = try? MLMultiArray(shape:[1,22],
                                                 dataType:MLMultiArrayDataType.double)
        else {
          fatalError("Unexpected runtime error. MLMultiArray")
        }
      
      for (index, element) in inputArray.enumerated() {
          mlMultiArray[index] = NSNumber(value: element)
      }

      return mlMultiArray
    }
    
    
    func predict (inputArray: [Int]) -> (predictedClass:Int64, propability: Double) {
        do {
            let config = MLModelConfiguration()
            let model = try Mushrooms(configuration: config)
            
            //Prepare input
            let inputVector = createMultiArray(inputArray)
            let input = MushroomsInput(input: inputVector)
            
            //Predict
            let predictionOutput = try model.prediction(input: input)
            
            //Get output
            let output = predictionOutput.classProbability
            let edibleClass = output.max(by: {$0.value < $1.value})
            
            print(output)
            if let ediableClassSafe = edibleClass {
                print(ediableClassSafe.key)
                return (ediableClassSafe.key, ediableClassSafe.value)
            } else {
                print("Nie znaleziono predykcji")
            }
            
        }
        catch {
            print(error)
        }
        return (-1, -1)
    }
   
}
