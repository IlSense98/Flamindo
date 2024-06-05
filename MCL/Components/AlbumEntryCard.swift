//
//  AlbumEntryCard.swift
//  MCL
//
//  Created by Eduardo Gonzalez Melgoza on 27/05/24.
//

import SwiftUI
import SwiftData

struct AlbumEntryCard: View {
    @Environment(\.modelContext) private var context
    
    let entry: Entry
    
    var body: some View {
        ZStack {
            GeometryReader { geometry in
                RoundedRectangle(cornerRadius: 5)
//                    .foregroundColor(.white)
                    .foregroundStyle(Color("AlbumEntryCardColor"))
                    .shadow(color: Color.black.opacity(0.15), radius: 20)
                    .frame(height: geometry.size.height)
            }
            .frame(width: UIScreen.main.bounds.width / 1.1)
            VStack {
                if entry.prompt != "" {
                    Text(entry.prompt ?? "")
                        .padding([.top, .leading, .trailing])
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .bold()
                    Divider()
                        .padding(.horizontal)
                }
                Text(entry.entryText)
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
        }
    }
}
