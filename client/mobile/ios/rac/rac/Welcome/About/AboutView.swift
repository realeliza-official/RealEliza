//
//  AboutView.swift
//  rac
//
//  Created by ZongZiWang on 7/9/23.
//

import SwiftUI

struct AboutView: View {

    var body: some View {
        GeometryReader { geometry in
            VStack(alignment: .leading, spacing: 20) {
                ScrollView(showsIndicators: false) {
                    VStack(alignment: .leading) {

                        Spacer(minLength: 24)

                        Text("RealEliza")
                            .font(
                                Font.custom("Prompt", size: 16).weight(.semibold)
                            )
                            .foregroundColor(Color(red: 0.4, green: 0.52, blue: 0.83))
                        + Text(" is a revolutionary project enabling dynamic audio-visual interactions between humans and AI.\n\nPowered by Large Language Model (LLM), it offers instant, natural, and context-aware responses, paving the way for a new era of interactive AI experiences.\n\nDisclaimer: Fictional characters for entertainment purposes only.")
                            .font(
                                Font.custom("Prompt", size: 16).weight(.regular)
                            )

                        Spacer(minLength: 40)

                        Text("Authors")
                            .font(
                                Font.custom("Prompt", size: 16).weight(.semibold)
                            )
                            .foregroundColor(Color(red: 0.4, green: 0.52, blue: 0.83))

                        Text("realeliza-official, lynchee-owo, ZongZiWang, pycui")
                            .font(
                                Font.custom("Prompt", size: 16).weight(.regular)
                            )

                        Spacer(minLength: 40)

                        Text("RealEliza is Open Source")
                            .font(
                                Font.custom("Prompt", size: 16).weight(.semibold)
                            )
                            .foregroundColor(Color(red: 0.4, green: 0.52, blue: 0.83))
                            // TODO: Add for debugging
                            .onTapGesture {
                                UIApplication.shared.open(webUrl)
                            }
                    }
                }

                CtaButton(style: .primary, action: {
                    UIApplication.shared.open(URL(string: "https://github.com/realeliza-official/RealEliza")!)
                }, text: "Contribute")
            }
            .padding(.bottom, geometry.safeAreaInsets.bottom > 0 ? 0 : 20)
        }
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
            .frame(width: 310)
    }
}
