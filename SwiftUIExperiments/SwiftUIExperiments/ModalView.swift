//
//  ModalView.swift
//  SwiftUIExperiments
//
//  Created by Dave Wood on 2019-06-26.
//  Copyright © 2019 Cerebral Gardens. All rights reserved.
//

import SwiftUI

struct ModalView : View {

    @Environment(\.isPresented) private var isPresented

    var body: some View {
        VStack {
            Text("Modal View")
            Spacer()
            Button(action: dismiss) {
                Text("Dismiss")
            }
            Spacer()
        }
    }

    func dismiss() {
        isPresented?.value = false
    }
}

#if DEBUG
struct ModalView_Previews : PreviewProvider {
    static var previews: some View {
        ModalView()
    }
}
#endif
