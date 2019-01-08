//
//  DrawingView.swift
//  CreativityProject
//
//  Created by Reyes, Joshua on 11/1/18.
//  Copyright © 2018 CTEC. All rights reserved.
//

import UIKit

public class DrawingView: UIView {

    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    public override func draw(_ rect: CGRect) -> Void
    {
        // Drawing code
        createStickFigure().stroke()
        drawTurtle()
        createLiam().stroke()
    }
    
    private func createStickFigure() -> UIBezierPath
    {
        let figure : UIBezierPath = UIBezierPath()
        
        UIColor.magenta.setStroke()
        figure.lineWidth = 3.0
        
        figure.addArc(withCenter: CGPoint(x: 200, y: 200),
                      radius: CGFloat(20),
                      startAngle: CGFloat(0),
                      endAngle: CGFloat(2) * CGFloat.pi,
                      clockwise: true)
        
        figure.move(to: CGPoint(x: 200, y: 220))
        figure.addLine(to: CGPoint(x: 200, y: 270))
        figure.move(to: CGPoint(x: 180, y: 240))
        figure.addLine(to: CGPoint(x: 220, y: 240))
        figure.move(to: CGPoint(x: 200, y: 270))
        figure.addLine(to: CGPoint(x: 180, y: 300))
        figure.move(to: CGPoint(x: 200, y: 270))
        figure.addLine(to: CGPoint(x: 220, y:300))
        
        return figure
    }
    
    private func drawTurtle() -> Void
    {
        let logo = UIBezierPath()
        UIColor.white.setFill()
        logo.move(to: CGPoint(x: 50, y: 250))
        logo.addLine(to: CGPoint(x: 100, y: 300))
        logo.addLine(to: CGPoint(x: 50, y: 350))
        logo.close()
        logo.fill()
    }
    
    private func createLiam() -> UIBezierPath
    {
        let figure2 : UIBezierPath = UIBezierPath()
        
        UIColor.yellow.setStroke()
        figure2.lineWidth = 7.0
        
        figure2.addArc(withCenter: CGPoint(x: 80, y: 80), radius: CGFloat(30), startAngle: CGFloat(0), endAngle: CGFloat(3) * CGFloat.pi, clockwise: true)
        
        figure2.move(to: CGPoint(x: 80, y: 82))
        figure2.addLine(to: CGPoint(x: 80, y: 87))
        figure2.move(to: CGPoint(x: 68, y: 74))
        figure2.addLine(to: CGPoint(x: 82, y: 84))
        figure2.move(to: CGPoint(x: 80, y: 87))
        figure2.addLine(to: CGPoint(x: 28, y: 90))
        figure2.move(to: CGPoint(x: 78, y: 97))
        figure2.addLine(to: CGPoint(x: 82, y:90))
        figure2.move(to: CGPoint(x: 50, y: 70))
        figure2.addLine(to: CGPoint(x: 80, y: 70))
        
        return figure2
    }
    
}
