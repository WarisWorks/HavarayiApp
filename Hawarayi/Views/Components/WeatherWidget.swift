//
//  WeatherWidget.swift
//  Hawarayi
//
//  Created by Waris on 2022/08/02.
//

import SwiftUI

struct WeatherWidget: View {
    var forecast: Forecast
    
    var body: some View {
        ZStack(alignment: .bottom) {
            //MARK: Trapezoid
            Trapezoid()
                .fill(Color.weatherWidgetBackground)
                .frame(width: 342, height: 174)
            //MARK: HSTACK
            
            
            HStack(alignment: .bottom) {
                
                VStack(alignment: .trailing, spacing: 8) {
                    Image("\(forecast.icon) large")
                        .padding(.leading, 4)
                    
                    //MARK: Weather
                    Text(forecast.weather.rawValue)
                        .font(.custom("UKIJ Qolyazma Tuz", size: 25))
                        .padding(.trailing, 24)
                }
                
                Spacer()
                
                VStack(alignment: .trailing, spacing: 2) {
                    //MARK: forecast temperature
                    Text("\(forecast.temperature)°")
                        .font(.system(size: 64))
                    
                    VStack(alignment: .trailing, spacing: 8) {
                        Text("يۇقىرى:°\(forecast.high)  تۆۋەن:°\(forecast.low)")
                            .font(.custom("UKIJ Kufi", size: 20))
                    }
                    //MARK: FORECAST LOCATION
                    Text(forecast.location)
                        .font(.custom("UKIJ Kufi", size: 24))
                        .lineLimit(1)
                }
            }
            .foregroundColor(.brown)
            .padding(.bottom, 20)
            .padding(.trailing, 20)
            
            LottieView(
                filename: "launch", loopMode: .loop
            )
            .frame(width: 100, height: 100)
            .padding(.bottom, 70)
           
        }
        .frame(width: 342, height: 184, alignment: .bottom)
    }
}

struct WeatherWidget_Previews: PreviewProvider {
    static var previews: some View {
        WeatherWidget(forecast: Forecast.cities[0])
            .preferredColorScheme(.dark)
    }
}
