//
//  NavigationBar.swift
//  Hawarayi
//
//  Created by Waris on 2022/08/02.
//

import SwiftUI

struct NavigationBar: View {
    @Environment(\.dismiss) var dismiss
    @Binding var searchText: String
    
    var body: some View {
        VStack(spacing: 8) {
            HStack {
                // MARK: BACK BUTTON
                Button{
                    dismiss()
                } label: {
                    HStack(spacing: 5) {
                        //MARK: BACK BUTTON ICON
                        Image(systemName: "chevron.left")
                            .font(.system(size: 23).weight(.medium))
                        .foregroundColor(.secondary)
                        //MARK: Back Button Label
                        Text("ھاۋارايى")
                            .font(.custom("UKIJ Kufi", size: 30))
                            .foregroundColor(.primary)
                    }
                    .frame(height: 44)
                   
                }
                
                Spacer()

                //MARK: MORE BUTTON
                Image(systemName: "ellipsis.circle")
                    .font(.system(size: 28))
                    .frame(width: 44, height: 44, alignment: .trailing)
                
            }
            .frame(height: 52)
            
            // MARK: Search Bar
            HStack(spacing: 2){
                TextField("ئىزدىمەكچى بولغان شەھەرنى كىرگۈزۈڭ",text: $searchText)
                Image(systemName: "magnifyingglass")
            }
            .foregroundColor(.secondary)
            .font(.custom("UKIJ Qolyazma Tuz", size: 12))
            .multilineTextAlignment(.trailing)
                .padding(.horizontal, 6)
                .padding(.vertical, 7)
                .frame(height: 36, alignment: .trailing)
                .background(Color.bottomSheetBackground, in: RoundedRectangle(cornerRadius: 10))
                .innerShadow(shape: RoundedRectangle(cornerRadius: 10), color: .black.opacity(0.25), lineWidth: 2, offsetX: 0, offsetY: 2, blur: 2)

        }
        .frame(height: 106, alignment: .topLeading)
        .padding(.horizontal, 16)
        .backgroundBlur(radius: 20, opaque: true)
        .padding(.top, 49)
        .background(Color.navBarBackground)
        .frame(maxHeight: .infinity, alignment: .top)
        .ignoresSafeArea()
    }
}

struct NavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBar(searchText: .constant(""))
    }
}
