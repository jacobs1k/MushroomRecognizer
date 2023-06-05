//
//  EadibleMushroomViewController.swift
//  GrzybyDemo
//
//  Created by Kuba on 01/06/2023.
//

import UIKit

class EadibleMushroomViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textLabel: UILabel!
    
    var prediction: (predictedClass: Int64, propability: Double) = (0,0)

    override func viewDidLoad() {
        super.viewDidLoad()
        if prediction.predictedClass == 0 {
            let mushroomGif =  UIImage.gifImageWithName("mushroomHappy")
            imageView.image = mushroomGif
            let propabilityRounded = round(prediction.propability * 100)
            textLabel.text = "Yeah! Your mushroom is probably \(propabilityRounded)% edible!"
            self.view.backgroundColor = UIColor.green
        } else {
            let mushroomGif =  UIImage.gifImageWithName("poisonMushroom")
            imageView.image = mushroomGif
            let propabilityRounded = round(prediction.propability * 100)
            textLabel.text = "Unfortunately, Your mushroom is probably \(propabilityRounded)% poisonous."
            self.view.backgroundColor = UIColor.red
        }
        print("Klasa \(prediction.predictedClass), prawdopodobienstwo \(prediction.propability)")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
