//
//  FrameworksGridView.swift
//  Apple-Frameworks
//
//  Created by farkhod on 13.01.2023.
//

import SwiftUI

struct FrameworksListView: View {
    
    @StateObject var viewModel: FrameworkListViewModel = FrameworkListViewModel()
    
    var body: some View {
        NavigationView {
            
            List {
                ForEach(MockData.frameworks) {framework in
                    NavigationLink(destination: FrameworkDetailView(
                        framework: viewModel.selectedFramework ?? MockData.sampleFramework,
                        isShowingDetailView: $viewModel.isShowingDetailsView
                    )) {
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }
                    
                }
            }
            .navigationTitle("🍎 Frameworks")
        }
        .accentColor(Color(.label))
        
    }
}

struct FrameworksGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworksListView()
    }
}
