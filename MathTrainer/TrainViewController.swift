//
//  TrainViewController.swift
//  MathTrainer
//
//  Created by Анастасия Талмазан on 2024-04-03.
//

import UIKit

final class TrainViewController: UIViewController
{
    // MARK: -IBOutlets
    @IBOutlet weak var leftButton: UIButton!
    @IBOutlet weak var rightButton: UIButton!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var countLabel: UILabel!
    
    // MARK: -Life cycle
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        countLabel.text = String(count)
        
        configureQuestion()
        configureButtons(leftButton)
        configureButtons(rightButton)
    }
    
    // MARK: -Actions
    @IBAction func buttonsAction(_ sender: UIButton)
    {

        let isRightAnswer = Int(sender.titleLabel?.text ?? "") == self.rightAnswer
        
        sender.backgroundColor = isRightAnswer ? .systemGreen : .systemRed
        
        if isRightAnswer
        {
            count += 1
            countLabel.text = String(count)
        }
        
        getNewAnswer()
    }
    
    // MARK: -Properties
    
    private var sign: String = ""
    private var firstNumber: Int = 0
    private var secondNumber: Int = 0
    var count: Int = 0
    
    {
        didSet
        {
            print("Count: \(count)")
        }
    }
    
    var type: MathTypes = .add
    {
        didSet {
            switch type {
                case .add:
                    sign = "+"
                case .subtract:
                    sign = "-"
                case .multiply:
                    sign = "*"
                case .divide:
                    sign = "/"
            }
        }
    }
    
    private var rightAnswer: Int 
    {
        switch type
        {
            case .add:
                return firstNumber + secondNumber
            case .subtract:
                return firstNumber - secondNumber
            case .multiply:
                return firstNumber * secondNumber
            case .divide:
                return firstNumber / secondNumber
        }
    }
    
    // MARK: -Methods
    
    private func configureButtons(_ button: UIButton)
    {
        button.backgroundColor = .systemYellow
        button.layer.shadowColor = UIColor.darkGray.cgColor
        button.layer.shadowRadius = 1
        button.layer.shadowOffset = CGSize(width: 2, height: 4)
        button.layer.shadowOpacity = 0.6
        
        let isRightButton = Bool.random()
        let range = ((rightAnswer-1)...(rightAnswer+1)).filter { $0 != rightAnswer}

        let randomAnswer = range.randomElement()!
        
        leftButton.setTitle(isRightButton ? String(rightAnswer) : String(randomAnswer), for: .normal)
        rightButton.setTitle(isRightButton ? String(randomAnswer) : String(rightAnswer), for: .normal)
    }
    
    private func configureQuestion()
    {
        switch type {
            case .divide:
                firstNumber = Int.random(in: 1...99)
                let dividers = (1...firstNumber).filter { firstNumber % $0 == 0 }
                secondNumber = dividers.randomElement()!
            default:
                firstNumber = Int.random(in: 1...99)
                secondNumber = Int.random(in: 1...99)
        }
        
        let question = "\(firstNumber) \(sign) \(secondNumber) ="
        questionLabel.text = question
    }

    private func getNewAnswer()
    {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3)
        {
            self.configureQuestion()
            self.configureButtons(self.leftButton)
            self.configureButtons(self.rightButton)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
         if let viewController = segue.destination as? ViewController
        {
             switch type {
                 case .add:
                     viewController.countAdd += count
                 case .subtract:
                     viewController.countSubtract += count
                 case .multiply:
                     viewController.countMultiply += count
                 case .divide:
                     viewController.countDivide += count
             }
             
         }
    }
    
}
