//
//  Shapes.swift
//  Weather
//
//  Created by Waris Ruzi on 2022/08/02

import SwiftUI

struct Arc: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.minX - 1, y: rect.minY))
        path.addQuadCurve(to: CGPoint(x: rect.maxX + 1, y: rect.minY), control: CGPoint(x: rect.midX, y: rect.midY))
        path.addLine(to: CGPoint(x: rect.maxX + 1, y: rect.maxY + 1))
        path.addLine(to: CGPoint(x: rect.minX - 1, y: rect.maxY + 1))
        path.closeSubpath()
        
        return path
    }
}

struct Trapezoid: Shape {
        func path(in rect: CGRect) -> Path {
            var path = Path()
            let width = rect.size.width
            let height = rect.size.height
            path.move(to: CGPoint(x: 0.98857*width, y: 0.36306*height))
            path.addCurve(to: CGPoint(x: 0.95621*width, y: 0.02864*height), control1: CGPoint(x: 0.98857*width, y: 0.17293*height), control2: CGPoint(x: 0.98857*width, y: 0.07786*height))
            path.addCurve(to: CGPoint(x: 0.77856*width, y: 0.0436*height), control1: CGPoint(x: 0.92385*width, y: -0.02059*height), control2: CGPoint(x: 0.87542*width, y: 0.00081*height))
            path.addLine(to: CGPoint(x: 0.10885*width, y: 0.33947*height))
            path.addCurve(to: CGPoint(x: 0.02509*width, y: 0.4033*height), control1: CGPoint(x: 0.06212*width, y: 0.36012*height), control2: CGPoint(x: 0.03875*width, y: 0.37044*height))
            path.addCurve(to: CGPoint(x: 0.01143*width, y: 0.57374*height), control1: CGPoint(x: 0.01143*width, y: 0.43615*height), control2: CGPoint(x: 0.01143*width, y: 0.48201*height))
            path.addLine(to: CGPoint(x: 0.01143*width, y: 0.71585*height))
            path.addCurve(to: CGPoint(x: 0.02984*width, y: 0.92107*height), control1: CGPoint(x: 0.01143*width, y: 0.82919*height), control2: CGPoint(x: 0.01143*width, y: 0.88586*height))
            path.addCurve(to: CGPoint(x: 0.13714*width, y: 0.95628*height), control1: CGPoint(x: 0.04825*width, y: 0.95628*height), control2: CGPoint(x: 0.07788*width, y: 0.95628*height))
            path.addLine(to: CGPoint(x: 0.86286*width, y: 0.95628*height))
            path.addCurve(to: CGPoint(x: 0.97016*width, y: 0.92107*height), control1: CGPoint(x: 0.92212*width, y: 0.95628*height), control2: CGPoint(x: 0.95175*width, y: 0.95628*height))
            path.addCurve(to: CGPoint(x: 0.98857*width, y: 0.71585*height), control1: CGPoint(x: 0.98857*width, y: 0.88586*height), control2: CGPoint(x: 0.98857*width, y: 0.82919*height))
            path.addLine(to: CGPoint(x: 0.98857*width, y: 0.36306*height))
            path.closeSubpath()
            path.move(to: CGPoint(x: 0.77888*width, y: 0.04626*height))
            path.addLine(to: CGPoint(x: 0.10917*width, y: 0.34214*height))
            path.addCurve(to: CGPoint(x: 0.05506*width, y: 0.36938*height), control1: CGPoint(x: 0.08577*width, y: 0.35247*height), control2: CGPoint(x: 0.06835*width, y: 0.36018*height))
            path.addCurve(to: CGPoint(x: 0.02621*width, y: 0.405*height), control1: CGPoint(x: 0.0418*width, y: 0.37855*height), control2: CGPoint(x: 0.03281*width, y: 0.38911*height))
            path.addCurve(to: CGPoint(x: 0.01455*width, y: 0.46677*height), control1: CGPoint(x: 0.0196*width, y: 0.42088*height), control2: CGPoint(x: 0.01625*width, y: 0.44001*height))
            path.addCurve(to: CGPoint(x: 0.01286*width, y: 0.57374*height), control1: CGPoint(x: 0.01286*width, y: 0.49361*height), control2: CGPoint(x: 0.01286*width, y: 0.52781*height))
            path.addLine(to: CGPoint(x: 0.01286*width, y: 0.71585*height))
            path.addCurve(to: CGPoint(x: 0.01515*width, y: 0.84739*height), control1: CGPoint(x: 0.01286*width, y: 0.7726*height), control2: CGPoint(x: 0.01286*width, y: 0.81489*height))
            path.addCurve(to: CGPoint(x: 0.03085*width, y: 0.91914*height), control1: CGPoint(x: 0.01743*width, y: 0.87983*height), control2: CGPoint(x: 0.02195*width, y: 0.90213*height))
            path.addCurve(to: CGPoint(x: 0.06836*width, y: 0.94917*height), control1: CGPoint(x: 0.03974*width, y: 0.93615*height), control2: CGPoint(x: 0.0514*width, y: 0.94481*height))
            path.addCurve(to: CGPoint(x: 0.13714*width, y: 0.95355*height), control1: CGPoint(x: 0.08536*width, y: 0.95355*height), control2: CGPoint(x: 0.10747*width, y: 0.95355*height))
            path.addLine(to: CGPoint(x: 0.86286*width, y: 0.95355*height))
            path.addCurve(to: CGPoint(x: 0.93164*width, y: 0.94917*height), control1: CGPoint(x: 0.89253*width, y: 0.95355*height), control2: CGPoint(x: 0.91464*width, y: 0.95355*height))
            path.addCurve(to: CGPoint(x: 0.96915*width, y: 0.91914*height), control1: CGPoint(x: 0.9486*width, y: 0.94481*height), control2: CGPoint(x: 0.96025*width, y: 0.93615*height))
            path.addCurve(to: CGPoint(x: 0.98485*width, y: 0.84739*height), control1: CGPoint(x: 0.97805*width, y: 0.90213*height), control2: CGPoint(x: 0.98257*width, y: 0.87983*height))
            path.addCurve(to: CGPoint(x: 0.98714*width, y: 0.71585*height), control1: CGPoint(x: 0.98714*width, y: 0.81489*height), control2: CGPoint(x: 0.98714*width, y: 0.7726*height))
            path.addLine(to: CGPoint(x: 0.98714*width, y: 0.36306*height))
            path.addCurve(to: CGPoint(x: 0.98311*width, y: 0.1434*height), control1: CGPoint(x: 0.98714*width, y: 0.26791*height), control2: CGPoint(x: 0.98714*width, y: 0.19684*height))
            path.addCurve(to: CGPoint(x: 0.95532*width, y: 0.03077*height), control1: CGPoint(x: 0.97909*width, y: 0.09002*height), control2: CGPoint(x: 0.97109*width, y: 0.05476*height))
            path.addCurve(to: CGPoint(x: 0.89169*width, y: 0.00434*height), control1: CGPoint(x: 0.93955*width, y: 0.00679*height), control2: CGPoint(x: 0.91979*width, y: -0.00018*height))
            path.addCurve(to: CGPoint(x: 0.77888*width, y: 0.04626*height), control1: CGPoint(x: 0.86356*width, y: 0.00886*height), control2: CGPoint(x: 0.82735*width, y: 0.02485*height))
            path.closeSubpath()
            return path
        }
    }


// Add a linear background
// the first color is #262C51 and the second color is #3E3F74
// Set the color to #7582F4
