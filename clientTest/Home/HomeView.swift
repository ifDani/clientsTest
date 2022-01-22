//
//  HomeView.swift
//  clientTest
//
//  Created by Ivan on 22/1/22.
//

import SwiftUI

struct HomeView: View {
    @State var visited = true
    @State var noVisited = true
    @State var clientList = DataHolder.shared.clients
    @State var showNoData = false
    @State var sortByName = false
    @State var sortByCode = true
    var body: some View {
        ZStack {
            Color.gray.ignoresSafeArea()
            
            VStack {
                
                HStack(spacing: 0) {
                    Button {
                        visited.toggle()
                        sortVisited()
                    } label: {
                        Text("Visited")
                        Image(systemName: visited ? "checkmark.square.fill" : "checkmark.square").foregroundColor(visited ? .blue : .black)
                    }
                    
                    Spacer()
                    ZStack {
                        Rectangle()
                            .fill(Color.white)
                            .cornerRadius(10.0)
                        Menu {
                            Button {
                                sortByName = false
                                sortByCode = true
                                sort()
                            } label: {
                                if sortByCode {
                                    Image(systemName: "checkmark")
                                }
                                Text("Code")
                            }
                            Button {
                                sortByCode = false
                                sortByName = true

                                sort()
                            } label: {
                                if sortByName {
                                    Image(systemName: "checkmark")
                                }
                                Text("Name")
                            }
                        } label: {
                            HStack(spacing: 0) {
                                Image(systemName: "slider.horizontal.3").foregroundColor(.black)
                                Text("Sort").foregroundColor(.black)
                            }
                            
                        }
                    }.frame(width:110, height:34)
                    Spacer()
                    Button {
                        noVisited.toggle()
                        sortVisited()
                    } label: {
                        Image(systemName: noVisited ? "checkmark.square.fill" : "checkmark.square").foregroundColor(noVisited ? .blue : .black)
                        Text("!Visited")
                    }
                    
                    
                }.padding(.horizontal,25)
                if !showNoData {
                    ScrollView(.vertical, showsIndicators: false) {
                        ForEach(clientList, id: \.code) { client in
                            ClientItem(client: client).padding(.horizontal)
                        }.padding(.top)
                        
                    }
                } else {
                    Spacer()
                    
                    Text("Lo sentimos")
                    Text("No hay datos disponibles")
                    
                    Spacer()
                }
            }
            
        }
    }
    func sortVisited() {
        let list = DataHolder.shared.clients
        
        showNoData = false
        
        if visited && noVisited {
            clientList = list
            sort()
        } else if visited && !noVisited {
            clientList = list.filter { (client) -> Bool in
                (client.visited == true)
            }
            sort()
        } else if !visited && noVisited {
            clientList = list.filter { (client) -> Bool in
                (client.visited == false)
            }
            sort()
        } else if !visited && !noVisited {
            showNoData = true
            clientList = []
        }
    }
    func sort() {
        if sortByName {
            clientList.sort {
                $0.name < $1.name
            }
        } else {
            clientList.sort {
                $0.code < $1.code
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
