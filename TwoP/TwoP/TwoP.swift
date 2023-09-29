//
//  VideoCall.swift
//  TwoP
//
//  Created by admin on 29.09.2023.
//
/*
import Foundation
import SwiftUI
import StreamVideo
import StreamVideoSwiftUI

@main
struct VideoCallApp: App {
    @State var call: Call
    @ObservedObject var state: CallState
    @State var callCreated: Bool = false

    private var client: StreamVideo
    private let apiKey: String = "mmhfdzb5evj2" // The API key can be found in the Credentials section
    private let userId: String = "Visas_Marr" // The User Id can be found in the Credentials section
    private let token: String = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoiVmlzYXNfTWFyciIsImlzcyI6InByb250byIsInN1YiI6InVzZXIvVmlzYXNfTWFyciIsImlhdCI6MTY5NTk4NTg1NCwiZXhwIjoxNjk2NTkwNjU5fQ.4muRU97Jacr7sxfS0TXID44HpWBBqfsX54AzCCdzwEg" // The Token can be found in the Credentials section
    private let callId: String = "2AHEPWCzreoF" // The CallId can be found in the Credentials section

    init() {
        let user = User(
            id: userId,
            name: "Martin", // name and imageURL are used in the UI
            imageURL: .init(string: "https://getstream.io/static/2796a305dd07651fcceb4721a94f4505/a3911/martin-mitrevski.webp")
        )

        // Initialize Stream Video client
        self.client = StreamVideo(
            apiKey: apiKey,
            user: user,
            token: .init(stringLiteral: token)
        )

        // Initialize the call object
        let call = client.call(callType: "default", callId: callId)

        self.call = call
        self.state = call.state
    }

    var body: some Scene {
        WindowGroup {
            VStack {
                if callCreated {
                    ZStack {
                        ParticipantsView(
                            call: call,
                            participants: call.state.remoteParticipants,
                            onChangeTrackVisibility: changeTrackVisibility(_:isVisible:)
                        )
                        FloatingParticipantView(participant: call.state.localParticipant)
                    }
                } else {
                    Text("loading...")
                }
            }.onAppear {
                Task {
                    guard callCreated == false else { return }
                    try await call.join(create: true)
                    callCreated = true
                }
            }
        }
    }

    /// Changes the track visibility for a participant (not visible if they go off-screen).
    /// - Parameters:
    ///  - participant: the participant whose track visibility would be changed.
    ///  - isVisible: whether the track should be visible.
    private func changeTrackVisibility(_ participant: CallParticipant?, isVisible: Bool) {
        guard let participant else { return }
        Task {
            await call.changeTrackVisibility(for: participant, isVisible: isVisible)
        }
    }
}
*/



import SwiftUI
import StreamVideo
import StreamVideoSwiftUI

@main
struct VideoCallApp: App {
    @ObservedObject var viewModel: CallViewModel

    private var client: StreamVideo
    private let apiKey: String = "mmhfdzb5evj2" // The API key can be found in the Credentials section
    private let userId: String = "ciftçi kamal" // The User Id can be found in the Credentials section
    private let token: String = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoiT2JpLVdhbl9LZW5vYmkiLCJpc3MiOiJwcm9udG8iLCJzdWIiOiJ1c2VyL09iaS1XYW5fS2Vub2JpIiwiaWF0IjoxNjk2MDA4OTQzLCJleHAiOjE2OTY2MTM3NDh9.wTkP1IV6IiLkStiXwjEQBxaLvIoiO6PjEcjN6vsZ3r0" // The Token can be found in the Credentials section
    private let callId: String = "4m0q7Fvxs7kT" // The CallId can be found in the Credentials section


    init() {
        let user = User(
            id: userId,
            name: "Martin", // name and imageURL are used in the UI
            imageURL: .init(string: "https://getstream.io/static/2796a305dd07651fcceb4721a94f4505/a3911/martin-mitrevski.webp")
        )

        // Initialize Stream Video client
        self.client = StreamVideo(
            apiKey: apiKey,
            user: user,
            token: .init(stringLiteral: token)
        )

        self.viewModel = .init()
    }

    var body: some Scene {
        WindowGroup {
            VStack {
                if viewModel.call != nil {
                    CallContainer(viewFactory: DefaultViewFactory.shared, viewModel: viewModel)
                } else {
                    Text("loading...")
                }
            }.onAppear {
                Task {
                    guard viewModel.call == nil else { return }
                    viewModel.joinCall(callType: .default, callId: callId)
                }
            }
        }
    }
}
