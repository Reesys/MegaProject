//
//  AlgorithmController.swift
//  JoshAlgorithmApp
//
//  Created by Reyes, Joshua on 10/23/18.
//  Copyright © 2018 CTEC. All rights reserved.
//

import UIKit

public class AlgorithmController: UIViewController
{
    @IBOutlet weak var algorithmText: UILabel!
    
    @IBOutlet weak var swiftImage: UIImageView!
    
    public override func viewDidLoad() -> Void
    {
        super.viewDidLoad()
        // Do any additional setup after loadig the viw, typically from a nib.
        formatAlgorithm()
    }
    
    private func formatAlgorithm() -> Void
    {
        let title : String = "App Creating Steps for Swift"
        
        let stepOne : String = "Create a Project in XCode"
        let stepTwo : String = "Organize the classes and storyboards into folders"
        let stepThree : String = "Create a Tool class"
        let stepFour : String = "Add a button to the Storyboard or any sort of attachment"
        let stepFive : String = "Then connect the attachment to the code"
        
        let algorithm = [stepOne, stepTwo, stepThree, stepFour, stepFive]
        
        let attributesDictionary = [NSAttributedString.Key.font : algorithmText.font]
        let fullAttributedString = NSMutableAttributedString(string: title, attributes: attributesDictionary)
        
        for step in algorithm
        {
            let bullet : String = "👻"
            let formattedStep : String = "\n\(bullet) \(step)"
            let attributedStringStep : NSMutableAttributedString = NSMutableAttributedString(string: formattedStep)
            let outlineStyle = createOutlineStyle()
            
            attributedStringStep.addAttributes([NSAttributedString.Key.paragraphStyle : outlineStyle], range: NSMakeRange(0,attributedStringStep.length))
            
            fullAttributedString.append(attributedStringStep)
        }
        let sample : String = fullAttributedString.string
        print(sample)
        algorithmText.attributedText = fullAttributedString
    }
    
    private func createOutlineStyle( ) -> NSParagraphStyle
    {
        let outlineStyle : NSMutableParagraphStyle = NSMutableParagraphStyle()
        
        outlineStyle.alignment = .left
        outlineStyle.defaultTabInterval = 5
        outlineStyle.firstLineHeadIndent = 10
        outlineStyle.headIndent = 15
        
        return outlineStyle
    }
}
