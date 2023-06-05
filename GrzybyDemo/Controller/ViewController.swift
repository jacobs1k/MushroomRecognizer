//
//  ViewController.swift
//  GrzybyDemo
//
//  Created by Kuba on 31/05/2023.
//

import UIKit


class CellClass: UITableViewCell {
    
}



class ViewController: UIViewController {

    @IBOutlet weak var capSurfaceButton: UIButton!
    @IBOutlet weak var capShapeButton: UIButton!
    @IBOutlet weak var capColorButton: UIButton!
    @IBOutlet weak var gillAttachButton: UIButton!
    @IBOutlet weak var odorButton: UIButton!
    @IBOutlet weak var bruisesButton: UIButton!
    @IBOutlet weak var gillColorButton: UIButton!
    @IBOutlet weak var gillSizeButton: UIButton!
    @IBOutlet weak var gilSpacingButton: UIButton!
    @IBOutlet weak var ringTypeButton: UIButton!
    @IBOutlet weak var ringNumberButton: UIButton!
    @IBOutlet weak var veilColorButton: UIButton!       
    @IBOutlet weak var stalkColorBelButton: UIButton!
    @IBOutlet weak var stalkColorAbvButton: UIButton!
    @IBOutlet weak var stalkSurBelButton: UIButton!
    @IBOutlet weak var stalkSurAbvButton: UIButton!
    @IBOutlet weak var stalkRootButton: UIButton!
    @IBOutlet weak var stalkShapeButton: UIButton!
    @IBOutlet weak var sporePrintColButton: UIButton!
    @IBOutlet weak var habitatButton: UIButton!
    @IBOutlet weak var populationButton: UIButton!
    
    let stackView = UIStackView()
    
    let transparentView = UIView()
    let tableView = UITableView()
    
    var selectedButton = UIButton()
    
    var dataSource = [String]()
    
    var endDataBeforeEncoding = EndDataBeforeEncoding()
    var predictionBrain = PredictionBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(CellClass.self, forCellReuseIdentifier: "Cell")
    }
    
    private func addTransparentView(frames: CGRect) {
        
        let window = UIApplication.shared.windows.filter {$0.isKeyWindow}.first

        
        transparentView.frame = window?.frame ?? self.view.frame
        self.view.addSubview(transparentView)


        tableView.frame = CGRect(x: frames.origin.x, y: frames.origin.y + frames.height, width: frames.width, height: 0)
        self.view.addSubview(tableView)
        tableView.layer.cornerRadius = 5
        
        

        transparentView.backgroundColor = UIColor.black.withAlphaComponent(0.9)
        tableView.reloadData()
        let tapgesture = UITapGestureRecognizer(target: self, action: #selector(removeTransparentView))
        transparentView.addGestureRecognizer(tapgesture)
        transparentView.alpha = 0

        UIView.animate(withDuration: 0.4, delay: 0.0, usingSpringWithDamping: 1.0, initialSpringVelocity: 1.0, options: .curveEaseInOut, animations: {
            self.transparentView.alpha = 0.5
            self.tableView.frame = CGRect(x: frames.origin.x, y: frames.origin.y + frames.height + 5, width: frames.width, height: CGFloat(self.dataSource.count * 50))
        }, completion: nil)
    }
    
    @objc private func removeTransparentView() {
        guard let sv = selectedButton.superview as? UIStackView else {
               fatalError("Button is not in a stackView!")
           }
        let buttonInStackViewFrame = sv.convert(selectedButton.frame, to: view)
        UIView.animate(withDuration: 0.4, delay: 0.0, usingSpringWithDamping: 1.0, initialSpringVelocity: 1.0, options: .curveEaseInOut, animations: {
            self.transparentView.alpha = 0
            self.tableView.frame = CGRect(x: buttonInStackViewFrame.origin.x, y: buttonInStackViewFrame.origin.y + buttonInStackViewFrame.height, width: buttonInStackViewFrame.width, height: 0)
        }, completion: nil)
    
}

    @IBAction func mushroomFeatureButtonPressed(_ sender: UIButton) {
        guard let sv = sender.superview as? UIStackView else {
               fatalError("Sender is not in a stackView!")
           }
    let cvtRect = sv.convert(sender.frame, to: view)
        
        guard let senderId = sender.accessibilityIdentifier else {return}
        switch senderId {
        case "capShape":
            dataSource = MushroomLabels[.capShape]!.dataSource
            selectedButton = capShapeButton
            addTransparentView(frames: cvtRect)
        case "capSurface":
            dataSource = MushroomLabels[.capSurface]!.dataSource
            selectedButton = capSurfaceButton
            addTransparentView(frames: cvtRect)
        case MushroomLabels[.capColor]!.id:
            dataSource = MushroomLabels[.capColor]!.dataSource
            selectedButton = capColorButton
            addTransparentView(frames: cvtRect)
        case MushroomLabels[.bruises]!.id:
            dataSource = MushroomLabels[.bruises]!.dataSource
            selectedButton = bruisesButton
            addTransparentView(frames: cvtRect)
        case MushroomLabels[.odor]!.id:
            dataSource = MushroomLabels[.odor]!.dataSource
            selectedButton = odorButton
            addTransparentView(frames: cvtRect)
        case MushroomLabels[.gillAttachment]!.id:
            dataSource = MushroomLabels[.gillAttachment]!.dataSource
            selectedButton = gillAttachButton
            addTransparentView(frames: cvtRect)
        case MushroomLabels[.gillSpacing]!.id:
            dataSource = MushroomLabels[.gillSpacing]!.dataSource
            selectedButton = gilSpacingButton
            addTransparentView(frames: cvtRect)
        case MushroomLabels[.gillSize]!.id:
            dataSource = MushroomLabels[.gillSize]!.dataSource
            selectedButton = gillSizeButton
            addTransparentView(frames: cvtRect)
        case MushroomLabels[.gillColor]!.id:
            dataSource = MushroomLabels[.gillColor]!.dataSource
            selectedButton = gillColorButton
            addTransparentView(frames: cvtRect)
        case MushroomLabels[.stalkShape]!.id:
            dataSource = MushroomLabels[.stalkShape]!.dataSource
            selectedButton = stalkShapeButton
            addTransparentView(frames: cvtRect)
        case MushroomLabels[.stalkRoot]!.id:
            dataSource = MushroomLabels[.stalkRoot]!.dataSource
            selectedButton = stalkRootButton
            addTransparentView(frames: cvtRect)
        case MushroomLabels[.stalkSurfaceAboveRing]!.id:
            dataSource = MushroomLabels[.stalkSurfaceAboveRing]!.dataSource
            selectedButton = stalkSurAbvButton
            addTransparentView(frames: cvtRect)
        case MushroomLabels[.stalkSurfaceBelovRing]!.id:
            dataSource = MushroomLabels[.stalkSurfaceBelovRing]!.dataSource
            selectedButton = stalkSurBelButton
            addTransparentView(frames: cvtRect)
        case MushroomLabels[.stalkColorAboveRing]!.id:
            dataSource = MushroomLabels[.stalkColorAboveRing]!.dataSource
            selectedButton = stalkColorAbvButton
            addTransparentView(frames: cvtRect)
        case MushroomLabels[.stalkColorBelowRing]!.id:
            dataSource = MushroomLabels[.stalkColorBelowRing]!.dataSource
            selectedButton = stalkColorBelButton
            addTransparentView(frames: cvtRect)
        case MushroomLabels[.veilColor]!.id:
            dataSource = MushroomLabels[.veilColor]!.dataSource
            selectedButton = veilColorButton
            addTransparentView(frames: cvtRect)
        case MushroomLabels[.ringNumber]!.id:
            dataSource = MushroomLabels[.ringNumber]!.dataSource
            selectedButton = ringNumberButton
            addTransparentView(frames: cvtRect)
        case MushroomLabels[.ringType]!.id:
            dataSource = MushroomLabels[.ringType]!.dataSource
            selectedButton = ringTypeButton
            addTransparentView(frames: cvtRect)
        case MushroomLabels[.sporePrinColor]!.id:
            dataSource = MushroomLabels[.sporePrinColor]!.dataSource
            selectedButton = sporePrintColButton
            addTransparentView(frames: cvtRect)
        case MushroomLabels[.population]!.id:
            dataSource = MushroomLabels[.population]!.dataSource
            selectedButton = populationButton
            addTransparentView(frames: cvtRect)
        case MushroomLabels[.habitat]!.id:
            dataSource = MushroomLabels[.habitat]!.dataSource
            selectedButton = habitatButton
            addTransparentView(frames: cvtRect)
        default:
            print("Unrecognized button ID")
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ediableVCSegue" {
            let ediableVC = segue.destination as? EadibleMushroomViewController
            ediableVC?.prediction = self.prediction
        }
        
    }
   
// MARK: - tutaj zakodowac
    var prediction: (predictedClass: Int64, propability: Double) = (0,0)
    @IBAction func predictButtonPressed(_ sender: Any) {
        let listToPredict = endDataBeforeEncoding.getEncodedArray()
        let isAllCategoryFilled = listToPredict.contains(-1)
        if isAllCategoryFilled {
            //alert
            let alert = UIAlertController(title: "Not enough data!", message: "Please complete all categories.", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
        } else {
            prediction = predictionBrain.predict(inputArray: listToPredict)
            performSegue(withIdentifier: "ediableVCSegue", sender: sender)
        }
    }
    
}


extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = dataSource[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedButton.setTitle(dataSource[indexPath.row], for: .normal)
        actualizeDataBeforeEncoding(buttonParsed: selectedButton, labelText: dataSource[indexPath.row])
        self.selectedButton.layer.cornerRadius = 5
        self.selectedButton.setTitleColor(.white, for: .normal)
        self.selectedButton.backgroundColor = .gray
        removeTransparentView()
    }

}


extension ViewController {
    
    
    
    private func actualizeDataBeforeEncoding(buttonParsed: UIButton, labelText: String) {
        switch buttonParsed.accessibilityIdentifier {
        case MushroomLabels[.capShape]!.id:
            endDataBeforeEncoding.capShape = labelText
            print(endDataBeforeEncoding.capShape)
        case MushroomLabels[.capSurface]!.id:
            endDataBeforeEncoding.capSurface = labelText
            print(endDataBeforeEncoding.capSurface)
        case MushroomLabels[.capColor]!.id:
            endDataBeforeEncoding.capColor = labelText
            print(endDataBeforeEncoding.capColor)
        case MushroomLabels[.bruises]!.id:
            endDataBeforeEncoding.bruises = labelText
            print(endDataBeforeEncoding.bruises)
        case MushroomLabels[.odor]!.id:
            endDataBeforeEncoding.odor = labelText
            print(endDataBeforeEncoding.odor)
        case MushroomLabels[.gillAttachment]!.id:
            endDataBeforeEncoding.gillAttachment = labelText
            print(endDataBeforeEncoding.gillAttachment)
        case MushroomLabels[.gillSpacing]!.id:
            endDataBeforeEncoding.gillSpacing = labelText
            print(endDataBeforeEncoding.gillSpacing)
        case MushroomLabels[.gillSize]!.id:
            endDataBeforeEncoding.gillSize = labelText
            print(endDataBeforeEncoding.gillSize)
        case MushroomLabels[.gillColor]!.id:
            endDataBeforeEncoding.gillColor = labelText
            print(endDataBeforeEncoding.gillColor)
        case MushroomLabels[.stalkShape]!.id:
            endDataBeforeEncoding.stalkShape = labelText
            print(endDataBeforeEncoding.stalkShape)
        case MushroomLabels[.stalkRoot]!.id:
            endDataBeforeEncoding.stalkRoot = labelText
            print(endDataBeforeEncoding.stalkRoot)
        case MushroomLabels[.stalkSurfaceAboveRing]!.id:
            endDataBeforeEncoding.stalkSurfaceAboveRing = labelText
            print(endDataBeforeEncoding.stalkSurfaceAboveRing)
        case MushroomLabels[.stalkSurfaceBelovRing]!.id:
            endDataBeforeEncoding.stalkSurfaceBelovRing = labelText
            print(endDataBeforeEncoding.stalkSurfaceBelovRing)
        case MushroomLabels[.stalkColorAboveRing]!.id:
            endDataBeforeEncoding.stalkColorAboveRing = labelText
            print(endDataBeforeEncoding.stalkColorAboveRing)
        case MushroomLabels[.stalkColorBelowRing]!.id:
            endDataBeforeEncoding.stalkColorBelowRing = labelText
            print(endDataBeforeEncoding.stalkColorBelowRing)
        case MushroomLabels[.veilColor]!.id:
            endDataBeforeEncoding.veilColor = labelText
            print(endDataBeforeEncoding.veilColor)
        case MushroomLabels[.ringNumber]!.id:
            endDataBeforeEncoding.ringNumber = labelText
            print(endDataBeforeEncoding.ringNumber)
        case MushroomLabels[.ringType]!.id:
            endDataBeforeEncoding.ringType = labelText
            print(endDataBeforeEncoding.ringType)
        case MushroomLabels[.sporePrinColor]!.id:
            endDataBeforeEncoding.sporePrinColor = labelText
            print(endDataBeforeEncoding.sporePrinColor)
        case MushroomLabels[.population]!.id:
            endDataBeforeEncoding.population = labelText
            print(endDataBeforeEncoding.population)
        case MushroomLabels[.habitat]!.id:
            endDataBeforeEncoding.habitat = labelText
            print(endDataBeforeEncoding.habitat)
        default:
            print("Unrecognized button ID before adding.")
        }
        
    }
}


