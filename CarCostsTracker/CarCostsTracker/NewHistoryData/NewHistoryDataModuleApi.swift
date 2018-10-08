//
//  NewHistoryDataModuleApi.swift
//  CarCostsTracker
//
//  Created by pavels.vetlugins on 03/10/2018.
//Copyright © 2018 Ilyas-Karshigabekov. All rights reserved.
//

import Viperit

//MARK: - NewHistoryDataRouter API
protocol NewHistoryDataRouterApi: RouterProtocol {
    func showNewHistoryData(from view: UserInterface)
    func showNewHistoryDataEdit(from view: UserInterface, edit data: HistoryCellData)
}

//MARK: - NewHistoryDataView API
protocol NewHistoryDataViewApi: UserInterfaceProtocol {
    
    var costType: UIButton! {get}
    var costPrice: UITextField! {get}
    var milage: UITextField! {get}
    var date: UITextField! {get set}
    var costDescription: UITextView! {get}
}

//MARK: - NewHistoryDataPresenter API
protocol NewHistoryDataPresenterApi: PresenterProtocol {
    func updateEditView()
    func isEditMode()->Bool
    func submitData()
    func fillEditData(edit data: HistoryCellData)
}

//MARK: - NewHistoryDataInteractor API
protocol NewHistoryDataInteractorApi: InteractorProtocol {
    
    func storeData(type: String, price: Double, milage: Int, date: String, costDescription: String)
}
