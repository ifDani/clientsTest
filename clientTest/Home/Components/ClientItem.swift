//
//  ClientItem.swift
//  clientTest
//
//  Created by Ivan on 22/1/22.
//

import SwiftUI

struct ClientItem: View {
    let screenWidth = UIScreen.screenWidth
    let screenHeight = UIScreen.screenHeight
    let client: Client
    var body: some View {
        ZStack(alignment: .bottom) {
            RoundedRectangle(cornerRadius: 10).fill(Color.red)
            
            Image("placeholder").data(url: URL(string: client.image)!).resizable().aspectRatio(contentMode: .fill).frame(width: (screenWidth - 15), height: screenHeight / 4).clipShape(RoundedRectangle(cornerRadius: 10))
            //Content
            ZStack {
                Rectangle().fill(Color.white).frame(width:(screenWidth - 15)).cornerRadius(10, corners: [.bottomLeft, .bottomRight])
                VStack {
                    HStack(spacing: 10) {
                        Label {
                            Text("\(client.code)").foregroundColor(.black)
                        } icon: {
                            Image(systemName: "qrcode").foregroundColor(.black)
                        }
                        
                       
                        
                        Label {
                            Link(String(client.phone), destination: URL(string: "tel:\(client.phone)")!)
                            
                        } icon: {
                            Image(systemName: "phone.fill").foregroundColor(.black)
                        }

                    }.padding(.horizontal).padding(.vertical, 10)
                    Text(client.email).foregroundColor(.black).padding(.bottom, 10)
                    Text(client.name).nameClient()
                }
            }.fixedSize()
            
            VStack {
                HStack {
                    Spacer()
                    Image(systemName: "checkmark.seal.fill").foregroundColor(client.visited ? .blue : .red)
                }
                Spacer()
            }.padding()
        }.fixedSize()
    }
}

