//
//  PastaListRow.swift
//  Pastapedia
//
//  Created by Nadia Barbosa on 12/29/20.
//

import SwiftUI

struct PastaListRow: View {
    
    var pasta: Pasta
    
    var body: some View {
        HStack {
            Image("spaghetti")
                .resizable()
                .frame(width: 80, height: 80)
            Text(pasta.name)
                .font(.title2)
                .fontWeight(.medium)
            Spacer()
        }
    }
}

struct PastaListRow_Previews: PreviewProvider {
    static var previews: some View {
        PastaListRow(pasta: allPastas[0])
        .previewLayout(.fixed(width: 300, height: 100))
    }
}
