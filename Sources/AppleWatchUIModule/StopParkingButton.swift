//
//  SwiftUIView.swift
//  
//
//  Created by Kenneth Grandberry on 12/5/22.
//

import SwiftUI

@available(macOS 10.15, *)
@available(watchOS 6.0.0, *)
@available(iOS 13.0.0, *)
public struct StopParkingButton: View {
    var selected: (() -> Void)
    private var buttonHeight: CGFloat = 40
    
    public var body: some View {
        Button(action: selected) {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.white)
                    .frame(height: buttonHeight)
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.blue)
                    .frame(height: buttonHeight)
                Text("Stop")
                    .fontWeight(.bold)
                    .foregroundColor(Color.blue)
            }
        }
    }
}
