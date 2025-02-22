//
//  SettingsViewModel.swift
//  NextStop
//
//  Created by Вадим Игнатенко on 21.02.25.
//

import SwiftUI
import Combine


final class SettingsViewModel: ObservableObject {
    
    @Published var adresses: [String] = []
    @Published var isOn: Bool = true
    private var cancellables = Set<AnyCancellable>()
    var textTogle: String { isOn ? "Цвет синий" : "Цвет красный" }
    var backgroundColor: Color { isOn ? .blue : .red }
    let adressInput = CurrentValueSubject<String, Never>("")
    
    init() {
        adressInput
            .debounce(for: .seconds(0.5), scheduler: RunLoop.main)
            .sink { [weak self] newValue in
                guard let self = self, !newValue.isEmpty  else { return }
                self.adresses.append(newValue)
                self.adressInput.send("")
            }
            .store(in: &cancellables)
    }
}
