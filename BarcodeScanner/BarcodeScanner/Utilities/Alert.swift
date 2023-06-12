//
//  Alert.swift
//  BarcodeScanner
//
//  Created by TanjilaNur-00115 on 17/4/23.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: String
    let message: String
    let dismissButton: Alert.Button
}

struct AlertContext {
    static let invalidDeviceInput = AlertItem(title: "Invalid Device Input",
                                              message: "Something is wrong with the camera. Unable to capture input.", dismissButton: .default(Text("Ok")))
    static let invalidScannedType = AlertItem(title: "Invalid Scan Type",
                                              message: "The value scanned is not valid. This app scans EAN-8 & EAN-13 only", dismissButton: .default(Text("Ok")))
}
