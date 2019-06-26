//
//  MainView.swift
//  SwiftUIExperiments
//
//  Created by Dave Wood on 2019-06-26.
//  Copyright © 2019 Cerebral Gardens. All rights reserved.
//

import SwiftUI

struct MainView : View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Two buttons, configured exactly the same way, one (below) works reliably, the second (above) works once (if tapped first) and then never again... The one above is a navigation bar item.")
                    .lineLimit(0)
                Spacer()
                PresentationButton(destination: ModalView()) {
                    Text("Open")
                }
                Spacer()
            }
            .navigationBarTitle(Text("Main View"))
            .navigationBarItems(trailing:
                PresentationButton(destination: ModalView()) {
                    Text("Open")
                }
            )
        }
    }
}

#if DEBUG
struct MainView_Previews : PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
#endif
