//
//  HomeView.swift
//  Hawarayi
//
//  Created by Waris Ruzi on 2022/08/02.
//

import SwiftUI
import BottomSheet

enum BottomSheetPosition: CGFloat, CaseIterable{
    case top = 0.83
    case middle = 0.385
}

struct HomeView: View {
    @State var bottomSheetPosition: BottomSheetPosition = .middle
    @State var bottomSheetTranslation: CGFloat = BottomSheetPosition.middle.rawValue
    @State var hasDragged: Bool = false
    
    var bottomSheetTranslationProrated: CGFloat {
        (bottomSheetTranslation - BottomSheetPosition.middle.rawValue) / (BottomSheetPosition.top.rawValue - BottomSheetPosition.middle.rawValue)
    }
    
    var body: some View {
        NavigationView {
            GeometryReader { geometry in
                let screenHeight = geometry.size.height + geometry.safeAreaInsets.top + geometry.safeAreaInsets.bottom
                let imageOffset = screenHeight + 36
                
                ZStack{
                    // MARK: Background Color
                    Color.background
                        .ignoresSafeArea()
                    
                    //MARK: Background Image
                    Image("Background")
                        .resizable()
                        .ignoresSafeArea()
                        .offset(y: -bottomSheetTranslationProrated * imageOffset)
                    //Lottie iOS
                    LottieView(
                        filename: "airplane", loopMode: .loop

                    )
                    .frame(width: 80, height: 80)
                    .padding(.top, -180)
                    
                    //MARK: House Image
                    Image("House")
                        .frame(maxHeight: .infinity, alignment: .top)
                        .padding(.top, 160)
                        .offset(y: -bottomSheetTranslationProrated * imageOffset)
                    //MARK: Current Weather
                    VStack(spacing: -10 * (1 - bottomSheetTranslationProrated)) {
                        Text("قەشقەر")
                            .font(.custom("UKIJ Tuz Tom", size: 50))
                        
                        VStack {
                            Text(attributedString)
                            
                            Text("يۇقىرى : °29 تۆۋەن : °17")
                                .font(.custom("UKIJ TUZ TOM", size: 18))
                                .opacity(1 - bottomSheetTranslationProrated)

                        }
                        Spacer()
                    }
                    .padding(.top, 51)
                    .offset(y: -bottomSheetTranslationProrated * 46)
                    
                   //MARK: Bottom Sheet
                    BottomSheetView(position: $bottomSheetPosition) {
//                        Text(bottomSheetTranslationProrated.formatted())
                    } content: {
                        ForecastView(bottomSheetTranslationProrated: bottomSheetTranslationProrated)
                    }
                    .onBottomSheetDrag { translation in
                        bottomSheetTranslation = translation / screenHeight
                        withAnimation(.easeInOut) {
                            if bottomSheetPosition == BottomSheetPosition.top {
                                hasDragged = true
                            } else {
                                hasDragged = false
                            }
                        }
                    }
                    //MARK: Tab bar
                    TabBar(action: {
                        bottomSheetPosition = .top
                    })
                    .offset(y: bottomSheetTranslationProrated * 115)
                }
                
            }
            .navigationBarHidden(true)
        }
    }
    //shift + option + 8
    private var attributedString: AttributedString {
        var string = AttributedString("23°"  +  (hasDragged ? " | " : "\n ")  + "ھاۋا ئوچۇق")
        
        if let temp = string.range(of: "23°") {
            string[temp].font = .custom("UKIJ TUZ TOM", size: (70 - (bottomSheetTranslationProrated * (70 - 30))))
            string[temp].foregroundColor = .primary
        }
        
        if let pipe = string.range(of: " | ") {
            string[pipe].font = .title3.weight(.semibold)
            string[pipe].foregroundColor = .secondary.opacity(bottomSheetTranslationProrated)
        }
        
        if let weather = string .range(of: "ھاۋا ئوچۇق"){
            string[weather].font = .custom("UKIJ TUZ TOM", size: 20)
        }
        
        return string
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
