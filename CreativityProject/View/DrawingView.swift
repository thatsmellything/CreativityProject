//
//  DrawingView.swift
//  CreativityProject
//
//  Created by Judkins, Jensen on 11/1/18.
//  Copyright © 2018 Judkins, Jensen. All rights reserved.
//

import UIKit

public class DrawingView : UIView
{

    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    public  override func draw(_ rect: CGRect) -> Void
    {
        // Drawing code
        createStickFigure().stroke()
        drawTurtle()
        peaceSign().stroke()
        paintWImage()
    }
    
    
    
    private func createStickFigure() -> UIBezierPath
    {
        let figure : UIBezierPath = UIBezierPath()
        
        UIColor.brown.setStroke()
        UIColor.brown.setFill()
        figure.lineWidth = 4.0
        
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
        figure.addLine(to: CGPoint(x: 220, y: 300))
        figure.close()
        figure.fill()
        
        
        
        return figure
    }
    
    private func drawTurtle() -> Void
    {
        let logo = UIBezierPath()
        UIColor.green.setFill()
        logo.move(to: CGPoint(x: 50, y: 250))
        logo.addLine(to: CGPoint(x: 100, y: 300))
        logo.addLine(to: CGPoint(x: 50, y: 350))
        logo.close()
        logo.fill()
    }
    
    private func peaceSign() -> UIBezierPath
    {
        let peace : UIBezierPath = UIBezierPath()
        
        UIColor.gray.setStroke()
        peace.lineWidth = 3.0
        peace.addArc(withCenter: CGPoint(x: 75, y: 75),
                      radius: CGFloat(50),
                      startAngle: CGFloat(0),
                      endAngle: CGFloat(2) * CGFloat.pi,
                      clockwise: true)
        peace.move(to: CGPoint(x: 75, y: 75))
        peace.addLine(to: CGPoint(x: 75, y: 25))
        peace.move(to: CGPoint(x: 75, y: 75))
        peace.addLine(to: CGPoint(x: 25, y: 95))
        peace.move(to: CGPoint(x: 75, y: 75))
        peace.addLine(to: CGPoint(x: 125, y: 95))
        
        
        
        return peace
    }
    
    private func paintWImage() -> Void
    {
        let bobRoss : UIBezierPath = UIBezierPath()
        UIColor(patternImage : UIImage(named: "deer")!).setFill()
        UIColor.green.setStroke()
        bobRoss.lineWidth = 1.4
        
        bobRoss.move(to: CGPoint(x:150, y: 40))
        bobRoss.addLine(to: CGPoint(x: 75, y: 200))
        bobRoss.addLine(to: CGPoint(x: 50, y: 200))
        bobRoss.addLine(to: CGPoint(x: 0, y: 50))
        bobRoss.close()
        bobRoss.stroke()
        bobRoss.fill()
    }

}
