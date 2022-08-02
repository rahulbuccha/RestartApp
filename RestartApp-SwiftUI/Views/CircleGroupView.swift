//
//  CircleGroupView.swift
//  RestartApp-SwiftUI
//
//  Created by Admin on 01/08/22.
//

import SwiftUI

struct CircleGroupView: View {
    
    // MARK: PROPERTY
    
    @State var ShapeColor: Color
    @State var ShapeOpacity: Double
    @State private var isAnimating : Bool = false
    
    // MARK: BODY
    var body: some View {
        ZStack{
            Circle()
                .stroke(ShapeColor.opacity(ShapeOpacity), lineWidth: 50)
                .frame(width: 270, height: 270, alignment: .center)
            Circle()
                .stroke(ShapeColor.opacity(ShapeOpacity), lineWidth: 90)
                .frame(width: 270, height: 270, alignment: .center)
        }// :Circle ZStack
        .blur(radius: isAnimating ? 0 : 10)
        .opacity(isAnimating ? 1 : 0)
        .scaleEffect(isAnimating ? 1 : 0.5)
        .animation(.easeOut(duration: 1), value: isAnimating)
        .onAppear(perform: {
            isAnimating = true
        })
    }
}

struct CircleGroupView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color("ColorBlue")
                .ignoresSafeArea(.all, edges: .all)
            CircleGroupView(ShapeColor: .white, ShapeOpacity: 0.2)
        }
    }
}
