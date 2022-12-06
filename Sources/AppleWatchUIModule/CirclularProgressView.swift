//
//  File.swift
//  
//
//  Created by Kenneth Grandberry on 12/5/22.
//

import SwiftUI

@available(macOS 10.15, *)
@available(watchOS 6.0.0, *)
@available(iOS 13.0.0, *)
public struct CircularProgressView: View {
    
    let percentFilled: Double
    let lessThan15MinsLeft: Bool
    
    public var body: some View {
        ZStack {
            Circle()
                .stroke(
                    lessThan15MinsLeft ? Color.red.opacity(0.25) : Color.green.opacity(0.5),
                    lineWidth: 10
                )
            Circle()
                .trim(from: 0, to: percentFilled)
                .stroke(
                    lessThan15MinsLeft ? Color.red : Color.green,
                    style: StrokeStyle(
                        lineWidth: 10,
                        lineCap: .round
                    )
                )
                .rotationEffect(.degrees(-90))
        }
    }
}
