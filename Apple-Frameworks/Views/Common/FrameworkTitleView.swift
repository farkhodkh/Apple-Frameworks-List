//
//  FrameworkTitleView.swift
//  Apple-Frameworks
//
//  Created by farkhod on 16.01.2023.
//

import SwiftUI

struct FrameworkTitleView: View {
    let framework: Framework
    
    var body: some View {
        HStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 70, height: 70)
            
            Text(framework.name)
                .font(.title2)
                .fontWeight(.bold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
                .padding()
        }.padding()
    }
}

struct FrameworkTitleView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkTitleView(framework: MockData.sampleFramework)
    }
}
