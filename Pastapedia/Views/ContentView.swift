//
//  ContentView.swift
//  Pastapedia
//
//  Created by Nadia Barbosa on 12/29/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(allPastas) { pasta in
                NavigationLink(destination: PastaDetail(pasta: pasta)) {
                    PastaListRow(pasta: pasta)
                }
            }
            .environment(\.defaultMinListRowHeight, 100)
            .navigationTitle("Pasta")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
