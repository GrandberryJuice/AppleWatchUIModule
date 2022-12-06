//
//  SwiftUIView.swift
//  
//
//  Created by Kenneth Grandberry on 12/5/22.
//

import SwiftUI

@available(macOS 10.15, *)
public struct ExtendParkingButton: View {
    var selected: (() -> Void)
    
    private var buttonHeight: CGFloat {
        #if os(iOS)
        50
        #else
        40
        #endif
    }
    
    public var body: some View {
        Button(action: selected) {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.green)
                    .frame(height: buttonHeight)
                Text("Extend")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
            }
        }
    }
}


