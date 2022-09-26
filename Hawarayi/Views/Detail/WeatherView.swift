//
//  WeatherView.swift
//  Hawarayi
//
//  Created by Waris on 2022/08/02.
//

import SwiftUI

struct WeatherView: View {
    @State private var searchText = ""
    
    // 
    var searchResults: [Forecast] {
        if searchText.isEmpty {
            return Forecast.cities
        } else  {
            return Forecast.cities.filter { $0.location.contains(searchText) }
    }
    
    }
    var body: some View {
        ZStack {
            //MARK: Background
            Color.background
                .ignoresSafeArea()
            
            //MARK: Weather Widgets
            ScrollView(showsIndicators: false) {
                VStack(spacing: 20) {
                    ForEach(searchResults) { forecast in
                        WeatherWidget(forecast: forecast)
                    }
                }
            }
            .safeAreaInset(edge: .top) {
                EmptyView()
                    .frame(height: 110)
            }
        }
        .overlay {
            //MARK: NAVIGATION BAR
            NavigationBar(searchText: $searchText)
        }
       .navigationBarHidden(true)
//        .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always),prompt: "ئىزدىمەكچى بولغان شەھەرنىڭ ئىسمىنى كىرگۈۈزۈڭ")
    }
}

struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView()
            .preferredColorScheme(.dark)
    }
}
