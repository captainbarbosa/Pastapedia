//
//  PastaDetail.swift
//  Pastapedia
//
//  Created by Nadia Barbosa on 12/29/20.
//

import SwiftUI

struct PastaDetail: View {
    
    var pasta: Pasta
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    var body: some View {
        
        VStack {
            
            // Back button
            HStack {
                Button(action: {
                            self.mode.wrappedValue.dismiss()
                        }) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 6.0, style: .continuous)
                            .frame(width: 40, height: 40, alignment: .leading)
                            .accentColor(Color.yellow)

                        Image(systemName: "arrow.left")
                            .font(Font.system(.title).bold())
                            .foregroundColor(Color.white)

                    }
                }
                Spacer()
            }

            // Title
            Text(pasta.name)
                .font(.largeTitle)
                .bold()


            // Image
            Image("spaghetti-2")
                .cornerRadius(25)
            
            // Size view
            PastaSizeView(size: pasta.size)

            // Description
            Text(pasta.description)

            

            // Region (optional)
            if pasta.region != nil {
                Text("Region: \(pasta.region!)")
                    .italic()
            } else {
                /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
            }

            // Alternative names (optional)
            if pasta.alternativeNames != nil {
                Text("Alternative names: Long bois")
                    .italic()
            } else {
                /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
            }
            
            Spacer()
            
        }
        .navigationBarHidden(true)
        .padding(.leading, 20)
        .padding(.trailing, 20)
    }
}

struct PastaDetail_Previews: PreviewProvider {
    static var previews: some View {
        PastaDetail(pasta: allPastas[0])
    }
}
