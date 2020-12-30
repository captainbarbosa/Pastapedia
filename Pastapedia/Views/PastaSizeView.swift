//
//  PastaSizeView.swift
//  Pastapedia
//
//  Created by Nadia Barbosa on 12/29/20.
//

import SwiftUI

struct PastaSizeView: View {
    var size: PastaSize
    
    var body: some View {
        HStack {
            ForEach(PastaSize.allCases, id: \.self) {
                if size == $0 {
                    Text($0.readableSize())
                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/,8)
                        .background(RoundedRectangle(cornerRadius: 8, style: .continuous)
                                        .fill(Color.white.opacity(0.75))

                        )
                } else {
                    Spacer()
                    Text($0.readableSize())
                    Spacer()
                }
              
            }

        }
        .padding(EdgeInsets(top: 4, leading: 4, bottom: 4, trailing: 4))
        .background(Color.yellow)
        .cornerRadius(12.0)
    }
}

struct PastaSizeView_Previews: PreviewProvider {
    static var previews: some View {
        PastaSizeView(size: PastaSize.medium)
            .previewLayout(.fixed(width: 350, height: 80))
    }
}
