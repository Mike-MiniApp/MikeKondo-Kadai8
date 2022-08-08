//
//  ViewController.swift
//  MikeKondo-Kadai8
//
//  Created by 近藤米功 on 2022/08/08.
//

import UIKit

final class RedViewController: UIViewController {
    // MARK: - UI Parts
    @IBOutlet private weak var sliderLabel: UILabel!
    @IBOutlet private weak var slider: UISlider!
    private var sliderValue: Float = 0

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setupSlider()
    }

    @IBAction private func didSlideSlider(_ sender: Any) {
        updateSliderValue()
    }

    private func setupSlider() {
        guard let sliderValue = UserDefaults.standard.object(forKey: "sliderValueKey") as? Float else { return }
        slider.value = sliderValue
        sliderLabel.text = String(sliderValue)
    }

    private func updateSliderValue() {
        sliderValue = slider.value
        sliderLabel.text = String(sliderValue)
        UserDefaults.standard.setValue(sliderValue, forKey: "sliderValueKey")
    }
}
