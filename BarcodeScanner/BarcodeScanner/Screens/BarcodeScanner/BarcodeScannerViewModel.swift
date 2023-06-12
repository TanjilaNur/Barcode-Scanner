//
//  BarcodeScannerViewModel.swift
//  BarcodeScanner
//
//  Created by TanjilaNur-00115 on 17/4/23.
//

import SwiftUI

final class BarcodeScannerViewModel: ObservableObject{
    @Published var scannedCode = ""
    @Published var alertItem : AlertItem?
//    @Published var isShowingAlert = false
    
    var statusText: String {
        scannedCode.isEmpty ? "Not Yet Scanned" : scannedCode
    }
    
    var statusTextColor: Color {
        scannedCode.isEmpty ? .red : .green
    }
}


