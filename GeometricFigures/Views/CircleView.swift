//
//  CircleView.swift
//  GeometricFigures
//
//  Created by kim heejun on 10/28/24.
//

import SwiftUI

struct CircleView: View {
    
    //MARK: Stored Properties
    @State var currentCircle = Circle(radius:  10)
    
    //MARK: Computed Properties
    var body: some View {
        VStack{
            
            //add an image
            
            //label (describe what the slider is for)
            Text("Radius")
            
            //input
            //slider control to allow for user input
            Slider(
                value: $currentCircle.radius,
                in: 1...100,
                step: 1.0
            )
            
            //output
            //label (show the current slider value)
            Text("Radius is: \(currentCircle.radius.formatted())")
            
            //label (show the diameter)
            Text("Diameter is: \(currentCircle.diameter.formatted())")

            //label (show the area)
            Text("Area is: \(currentCircle.area.formatted())")

            //label (show the circumference)
            Text("Circumference is: \(currentCircle.circumference.formatted())")

        }
    }
}

#Preview {
    CircleView()
}
