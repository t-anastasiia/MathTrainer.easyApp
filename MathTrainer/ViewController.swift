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
    
    // MARK: -Actions
    @IBAction func buttonsAction(_ sender: UIButton) 
    {
        selectedType = MathTypes(rawValue: sender.tag) ?? .add
        performSegue(withIdentifier: "goToNext", sender: sender)
    }
    
    
    // MARK: -Properties
    var count = 0
    { didSet
        {
            print("You earned \(count) points")
        }
    }
    private var selectedType: MathTypes = .add
    
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
    
    
}

