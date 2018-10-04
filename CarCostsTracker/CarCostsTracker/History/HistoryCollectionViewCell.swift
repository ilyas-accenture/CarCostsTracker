//
//  HistoryCollectionViewCell.swift
//  CarCostsTracker
//
//  Created by pavels.vetlugins on 02/10/2018.
//  Copyright © 2018 Ilyas-Karshigabekov. All rights reserved.
//

import UIKit

class HistoryCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var costsLogo: UIImageView!
    @IBOutlet weak var costsType: UILabel!
    @IBOutlet weak var milage: UILabel!
    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var detailedDescription: UILabel!
    @IBOutlet weak var price: UILabel!
    
    
    func fillCellData(historyData: HistoryCellData){
        
        costsLogo.image = historyData.costType.image()
        costsType.text = historyData.costType.name()
        milage.text = historyData.mileage
        date.text = historyData.costDate
        price.text = historyData.price
        
    }
}

fileprivate extension CostType {
    func name() -> String {
        switch self {
        case .fuel:
            return "Fuel"
        case .repair:
            return "Repair"
        case .other:
            return "Other"
        }
    }
    
    func image() -> UIImage? {
        switch self {
        case .fuel:
            return UIImage(imageLiteralResourceName: "fuel_icon")		
        case .repair:
            return UIImage(imageLiteralResourceName: "repair_icon")
        case .other:
            return UIImage(imageLiteralResourceName: "other_icon")
        }
    }

}
