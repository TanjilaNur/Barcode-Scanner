//
//  ContentView.swift
//  BarcodeScanner
//
//  Created by TanjilaNur-00115 on 4/4/23.
//

import SwiftUI

struct BarcodeScannerView: View {
    
    @StateObject var viewModel = BarcodeScannerViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                ScannerView(scannedCode: $viewModel.scannedCode,
                            alertItem: $viewModel.alertItem)
                    .frame(maxWidth: .infinity, maxHeight: 300)
                
                Spacer().frame(height: 60)
                
                Label("Scanned Barcode:", systemImage: "barcode.viewfinder")
                    .font(.title)
                
                Text(viewModel.statusText)
                    .bold()
                    .foregroundColor(viewModel.statusTextColor)
                    .font(.largeTitle)
                    .padding()
                
//                Button {
//                    isShowingAlert = true
//                } label: {
//                    Text("Tap me")
//                }
            }
            .navigationTitle("Barcode Scanner")
            .alert(item: $viewModel.alertItem) { alertItem in
                Alert(title: Text(alertItem.title),
                      message: Text(alertItem.message),
                      dismissButton: alertItem.dismissButton)
            }
//            .alert(isPresented: $isShowingAlert) {
//                Alert(title: Text("Test"), message: Text("This is a test"), dismissButton: .default(Text("Ok")))
//            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        BarcodeScannerView()
    }
}
