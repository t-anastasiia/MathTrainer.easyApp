//
//  ViewController.swift
//  MathTrainer
//
//  Created by Анастасия Талмазан on 2024-04-02.
//

import UIKit


// MARK: -Enums
enum MathTypes: Int
{
    case add, subtract, multiply, divide
}

class ViewController: UIViewController 
{
    // MARK: -Life cycle
    override func viewDidLoad() 
    {
        super.viewDidLoad()
        configureButtons()
    }

    
    // MARK: -IBOutlets
    @IBOutlet var buttonsCollection: [UIButton]!
    @IBOutlet var labelsCollection: [UILabel]!
    
    // MARK: -Actions
    @IBAction func buttonsAction(_ sender: UIButton) 
    {
        selectedType = MathTypes(rawValue: sender.tag) ?? .add
        performSegue(withIdentifier: "goToNext", sender: sender)
    }
    
    
    // MARK: -Properties
    var countAdd = 0
    { didSet
        {
            configureLabel(labelsCollection[0])
        }
        
    }
    var countSubtract = 0
    { didSet
        {
            configureLabel(labelsCollection[1])
        }
        
    }
    var countMultiply = 0
    { didSet
        {
            configureLabel(labelsCollection[2])
        }
        
    }
    var countDivide = 0
    { didSet
        {
            configureLabel(labelsCollection[3])
        }
        
    }
    var selectedType: MathTypes = .add
    
    @IBAction func unwindAction(unwindSegue: UIStoryboardSegue) { }
    
    // MARK: -Methods
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
         if let viewController = segue.destination as? TrainViewController
        {
             viewController.type = selectedType
         }
    }
    
    private func configureButtons()
    {
        buttonsCollection.forEach
        { button in
            button.layer.shadowColor = UIColor.darkGray.cgColor
            button.layer.shadowRadius = 1
            button.layer.shadowOffset = CGSize(width: 2, height: 4)
            button.layer.shadowOpacity = 0.6
        }
    }
    
    private func configureLabel(_ label: UILabel)
    { print("Trying with \(label.tag)")
        switch selectedType {
            case .add:
                label.text = String(countAdd)
            case .subtract:
                label.text = String(countSubtract)
            case .multiply:
                label.text = String(countMultiply)
            case .divide:
                label.text = String(countDivide)
        }
    }
}

