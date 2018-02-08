//
// ACreditMemoRequestItemDetailViewController.swift
// sapvndemo
//
// Created by SAP Cloud Platform SDK for iOS Assistant application on 08/02/18
//

import Foundation
import SAPFoundation
import SAPOData
import SAPFiori
import SAPCommon

class ACreditMemoRequestItemDetailViewController: FUIFormTableViewController, SAPFioriLoadingIndicator {
    private let appDelegate = UIApplication.shared.delegate as! AppDelegate
    private var apicreditmemorequestsrvEntities: APICREDITMEMOREQUESTSRVEntities<OnlineODataProvider> {
        return self.appDelegate.apicreditmemorequestsrvEntities
    }

    private var validity = [String: Bool]()
    private var _entity: ACreditMemoRequestItemType?
    var allowsEditableCells = false
    var entity: ACreditMemoRequestItemType {
        get {
            if self._entity == nil {
                self._entity = self.createEntityWithDefaultValues()
            }
            return self._entity!
        }
        set {
            self._entity = newValue
        }
    }

    private let logger = Logger.shared(named: "ACreditMemoRequestItemMasterViewControllerLogger")
    var loadingIndicator: FUILoadingIndicatorView?
    var entityUpdater: EntityUpdaterDelegate?
    var tableUpdater: EntitySetUpdaterDelegate?
    private let okTitle = NSLocalizedString("keyOkButtonTitle",
                                            value: "OK",
                                            comment: "XBUT: Title of OK button.")

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.rowHeight = UITableViewAutomaticDimension
        self.tableView.estimatedRowHeight = 44
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Segues

    override func prepare(for segue: UIStoryboardSegue, sender _: Any?) {
        if segue.identifier == "updateEntity" {
            // Show the Detail view with the current entity, where the properties scan be edited and updated
            self.logger.info("Showing a view to update the selected entity.")
            let dest = segue.destination as! UINavigationController
            let detailViewController = dest.viewControllers[0] as! ACreditMemoRequestItemDetailViewController
            detailViewController.title = NSLocalizedString("keyUpdateEntityTitle", value: "Update Entity", comment: "XTIT: Title of update selected entity screen.")
            detailViewController.entity = self.entity
            let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: detailViewController, action: #selector(detailViewController.updateEntity))
            detailViewController.navigationItem.rightBarButtonItem = doneButton
            let cancelButton = UIBarButtonItem(title: NSLocalizedString("keyCancelButtonToGoPreviousScreen", value: "Cancel", comment: "XBUT: Title of Cancel button."), style: .plain, target: detailViewController, action: #selector(detailViewController.cancel))
            detailViewController.navigationItem.leftBarButtonItem = cancelButton
            detailViewController.allowsEditableCells = true
            detailViewController.entityUpdater = self
        }
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0:
            return self.cellForCreditMemoRequest(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoRequestItemType.creditMemoRequest)
        case 1:
            return self.cellForCreditMemoRequestItem(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoRequestItemType.creditMemoRequestItem)
        case 2:
            return self.cellForHigherLevelItem(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoRequestItemType.higherLevelItem)
        case 3:
            return self.cellForCreditMemoRequestItemCategory(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoRequestItemType.creditMemoRequestItemCategory)
        case 4:
            return self.cellForCreditMemoRequestItemText(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoRequestItemType.creditMemoRequestItemText)
        case 5:
            return self.cellForPurchaseOrderByCustomer(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoRequestItemType.purchaseOrderByCustomer)
        case 6:
            return self.cellForMaterial(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoRequestItemType.material)
        case 7:
            return self.cellForMaterialByCustomer(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoRequestItemType.materialByCustomer)
        case 8:
            return self.cellForPricingDate(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoRequestItemType.pricingDate)
        case 9:
            return self.cellForRequestedQuantity(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoRequestItemType.requestedQuantity)
        case 10:
            return self.cellForRequestedQuantityUnit(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoRequestItemType.requestedQuantityUnit)
        case 11:
            return self.cellForItemGrossWeight(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoRequestItemType.itemGrossWeight)
        case 12:
            return self.cellForItemNetWeight(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoRequestItemType.itemNetWeight)
        case 13:
            return self.cellForItemWeightUnit(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoRequestItemType.itemWeightUnit)
        case 14:
            return self.cellForItemVolume(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoRequestItemType.itemVolume)
        case 15:
            return self.cellForItemVolumeUnit(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoRequestItemType.itemVolumeUnit)
        case 16:
            return self.cellForTransactionCurrency(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoRequestItemType.transactionCurrency)
        case 17:
            return self.cellForNetAmount(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoRequestItemType.netAmount)
        case 18:
            return self.cellForMaterialGroup(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoRequestItemType.materialGroup)
        case 19:
            return self.cellForBatch(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoRequestItemType.batch)
        case 20:
            return self.cellForIncotermsClassification(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoRequestItemType.incotermsClassification)
        case 21:
            return self.cellForIncotermsTransferLocation(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoRequestItemType.incotermsTransferLocation)
        case 22:
            return self.cellForIncotermsLocation1(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoRequestItemType.incotermsLocation1)
        case 23:
            return self.cellForIncotermsLocation2(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoRequestItemType.incotermsLocation2)
        case 24:
            return self.cellForCustomerPaymentTerms(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoRequestItemType.customerPaymentTerms)
        case 25:
            return self.cellForItemBillingBlockReason(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoRequestItemType.itemBillingBlockReason)
        case 26:
            return self.cellForSalesDocumentRjcnReason(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoRequestItemType.salesDocumentRjcnReason)
        case 27:
            return self.cellForSdProcessStatus(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoRequestItemType.sdProcessStatus)
        case 28:
            return self.cellForOrderRelatedBillingStatus(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoRequestItemType.orderRelatedBillingStatus)
        default:
            return CellCreationHelper.cellForDefault(tableView: tableView, indexPath: indexPath, editingIsAllowed: allowsEditableCells)
        }
    }

    override func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        return 29
    }

    override func tableView(_: UITableView, canEditRowAt _: IndexPath) -> Bool {
        return true
    }

    // MARK: - OData property specific cell creators

    private func cellForCreditMemoRequest(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoRequestItemType, property: Property) -> UITableViewCell {
        var value = ""
        value = "\(currentEntity.creditMemoRequest ?? "")"
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            if ACreditMemoRequestItemType.creditMemoRequest.isOptional || newValue != "" {
                currentEntity.creditMemoRequest = newValue
                isNewValueValid = true
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForCreditMemoRequestItem(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoRequestItemType, property: Property) -> UITableViewCell {
        var value = ""
        value = "\(currentEntity.creditMemoRequestItem ?? "")"
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            if ACreditMemoRequestItemType.creditMemoRequestItem.isOptional || newValue != "" {
                currentEntity.creditMemoRequestItem = newValue
                isNewValueValid = true
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForHigherLevelItem(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoRequestItemType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.higherLevelItem {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.higherLevelItem = nil
                isNewValueValid = true
            } else {
                if ACreditMemoRequestItemType.higherLevelItem.isOptional || newValue != "" {
                    currentEntity.higherLevelItem = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForCreditMemoRequestItemCategory(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoRequestItemType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.creditMemoRequestItemCategory {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.creditMemoRequestItemCategory = nil
                isNewValueValid = true
            } else {
                if ACreditMemoRequestItemType.creditMemoRequestItemCategory.isOptional || newValue != "" {
                    currentEntity.creditMemoRequestItemCategory = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForCreditMemoRequestItemText(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoRequestItemType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.creditMemoRequestItemText {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.creditMemoRequestItemText = nil
                isNewValueValid = true
            } else {
                if ACreditMemoRequestItemType.creditMemoRequestItemText.isOptional || newValue != "" {
                    currentEntity.creditMemoRequestItemText = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForPurchaseOrderByCustomer(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoRequestItemType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.purchaseOrderByCustomer {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.purchaseOrderByCustomer = nil
                isNewValueValid = true
            } else {
                if ACreditMemoRequestItemType.purchaseOrderByCustomer.isOptional || newValue != "" {
                    currentEntity.purchaseOrderByCustomer = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForMaterial(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoRequestItemType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.material {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.material = nil
                isNewValueValid = true
            } else {
                if ACreditMemoRequestItemType.material.isOptional || newValue != "" {
                    currentEntity.material = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForMaterialByCustomer(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoRequestItemType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.materialByCustomer {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.materialByCustomer = nil
                isNewValueValid = true
            } else {
                if ACreditMemoRequestItemType.materialByCustomer.isOptional || newValue != "" {
                    currentEntity.materialByCustomer = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForPricingDate(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoRequestItemType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.pricingDate {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.pricingDate = nil
                isNewValueValid = true
            } else {
                if let validValue = LocalDateTime.parse(newValue) { // This is just a simple solution to handle UTC only
                    currentEntity.pricingDate = validValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForRequestedQuantity(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoRequestItemType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.requestedQuantity {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.requestedQuantity = nil
                isNewValueValid = true
            } else {
                if let validValue = BigDecimal.parse(newValue) {
                    currentEntity.requestedQuantity = validValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForRequestedQuantityUnit(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoRequestItemType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.requestedQuantityUnit {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.requestedQuantityUnit = nil
                isNewValueValid = true
            } else {
                if ACreditMemoRequestItemType.requestedQuantityUnit.isOptional || newValue != "" {
                    currentEntity.requestedQuantityUnit = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForItemGrossWeight(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoRequestItemType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.itemGrossWeight {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.itemGrossWeight = nil
                isNewValueValid = true
            } else {
                if let validValue = BigDecimal.parse(newValue) {
                    currentEntity.itemGrossWeight = validValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForItemNetWeight(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoRequestItemType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.itemNetWeight {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.itemNetWeight = nil
                isNewValueValid = true
            } else {
                if let validValue = BigDecimal.parse(newValue) {
                    currentEntity.itemNetWeight = validValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForItemWeightUnit(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoRequestItemType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.itemWeightUnit {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.itemWeightUnit = nil
                isNewValueValid = true
            } else {
                if ACreditMemoRequestItemType.itemWeightUnit.isOptional || newValue != "" {
                    currentEntity.itemWeightUnit = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForItemVolume(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoRequestItemType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.itemVolume {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.itemVolume = nil
                isNewValueValid = true
            } else {
                if let validValue = BigDecimal.parse(newValue) {
                    currentEntity.itemVolume = validValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForItemVolumeUnit(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoRequestItemType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.itemVolumeUnit {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.itemVolumeUnit = nil
                isNewValueValid = true
            } else {
                if ACreditMemoRequestItemType.itemVolumeUnit.isOptional || newValue != "" {
                    currentEntity.itemVolumeUnit = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForTransactionCurrency(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoRequestItemType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.transactionCurrency {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.transactionCurrency = nil
                isNewValueValid = true
            } else {
                if ACreditMemoRequestItemType.transactionCurrency.isOptional || newValue != "" {
                    currentEntity.transactionCurrency = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForNetAmount(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoRequestItemType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.netAmount {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.netAmount = nil
                isNewValueValid = true
            } else {
                if let validValue = BigDecimal.parse(newValue) {
                    currentEntity.netAmount = validValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForMaterialGroup(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoRequestItemType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.materialGroup {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.materialGroup = nil
                isNewValueValid = true
            } else {
                if ACreditMemoRequestItemType.materialGroup.isOptional || newValue != "" {
                    currentEntity.materialGroup = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForBatch(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoRequestItemType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.batch {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.batch = nil
                isNewValueValid = true
            } else {
                if ACreditMemoRequestItemType.batch.isOptional || newValue != "" {
                    currentEntity.batch = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForIncotermsClassification(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoRequestItemType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.incotermsClassification {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.incotermsClassification = nil
                isNewValueValid = true
            } else {
                if ACreditMemoRequestItemType.incotermsClassification.isOptional || newValue != "" {
                    currentEntity.incotermsClassification = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForIncotermsTransferLocation(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoRequestItemType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.incotermsTransferLocation {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.incotermsTransferLocation = nil
                isNewValueValid = true
            } else {
                if ACreditMemoRequestItemType.incotermsTransferLocation.isOptional || newValue != "" {
                    currentEntity.incotermsTransferLocation = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForIncotermsLocation1(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoRequestItemType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.incotermsLocation1 {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.incotermsLocation1 = nil
                isNewValueValid = true
            } else {
                if ACreditMemoRequestItemType.incotermsLocation1.isOptional || newValue != "" {
                    currentEntity.incotermsLocation1 = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForIncotermsLocation2(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoRequestItemType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.incotermsLocation2 {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.incotermsLocation2 = nil
                isNewValueValid = true
            } else {
                if ACreditMemoRequestItemType.incotermsLocation2.isOptional || newValue != "" {
                    currentEntity.incotermsLocation2 = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForCustomerPaymentTerms(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoRequestItemType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.customerPaymentTerms {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.customerPaymentTerms = nil
                isNewValueValid = true
            } else {
                if ACreditMemoRequestItemType.customerPaymentTerms.isOptional || newValue != "" {
                    currentEntity.customerPaymentTerms = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForItemBillingBlockReason(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoRequestItemType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.itemBillingBlockReason {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.itemBillingBlockReason = nil
                isNewValueValid = true
            } else {
                if ACreditMemoRequestItemType.itemBillingBlockReason.isOptional || newValue != "" {
                    currentEntity.itemBillingBlockReason = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForSalesDocumentRjcnReason(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoRequestItemType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.salesDocumentRjcnReason {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.salesDocumentRjcnReason = nil
                isNewValueValid = true
            } else {
                if ACreditMemoRequestItemType.salesDocumentRjcnReason.isOptional || newValue != "" {
                    currentEntity.salesDocumentRjcnReason = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForSdProcessStatus(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoRequestItemType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.sdProcessStatus {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.sdProcessStatus = nil
                isNewValueValid = true
            } else {
                if ACreditMemoRequestItemType.sdProcessStatus.isOptional || newValue != "" {
                    currentEntity.sdProcessStatus = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForOrderRelatedBillingStatus(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoRequestItemType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.orderRelatedBillingStatus {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.orderRelatedBillingStatus = nil
                isNewValueValid = true
            } else {
                if ACreditMemoRequestItemType.orderRelatedBillingStatus.isOptional || newValue != "" {
                    currentEntity.orderRelatedBillingStatus = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    // MARK: - OData functionalities

    @objc func createEntity() {
        self.showFioriLoadingIndicator()
        self.view.endEditing(true)
        self.logger.info("Creating entity in backend.")
        self.apicreditmemorequestsrvEntities.createEntity(self.entity) { error in
            self.hideFioriLoadingIndicator()
            if let error = error {
                self.logger.error("Create entry failed. Error: \(error)", error: error)
                let alertController = UIAlertController(title: NSLocalizedString("keyErrorEntityCreationTitle", value: "Create entry failed", comment: "XTIT: Title of alert message about entity creation error."), message: error.localizedDescription, preferredStyle: .alert)
                alertController.addAction(UIAlertAction(title: self.okTitle, style: .default))
                OperationQueue.main.addOperation({
                    // Present the alertController
                    self.present(alertController, animated: true)
                })
                return
            }
            self.logger.info("Create entry finished successfully.")
            OperationQueue.main.addOperation({
                self.dismiss(animated: true) {
                    FUIToastMessage.show(message: NSLocalizedString("keyEntityCreationBody", value: "Created", comment: "XMSG: Title of alert message about successful entity creation."))
                    self.tableUpdater?.entitySetHasChanged()
                }
            })
        }
    }

    func createEntityWithDefaultValues() -> ACreditMemoRequestItemType {
        let newEntity = ACreditMemoRequestItemType()
        // Fill the mandatory properties with default values
        newEntity.creditMemoRequest = CellCreationHelper.defaultValueFor(ACreditMemoRequestItemType.creditMemoRequest)
        newEntity.creditMemoRequestItem = CellCreationHelper.defaultValueFor(ACreditMemoRequestItemType.creditMemoRequestItem)

        // Key properties without default value should be invalid by default for Create scenario
        if newEntity.creditMemoRequest == nil || newEntity.creditMemoRequest!.isEmpty {
            self.validity["CreditMemoRequest"] = false
        }
        if newEntity.creditMemoRequestItem == nil || newEntity.creditMemoRequestItem!.isEmpty {
            self.validity["CreditMemoRequestItem"] = false
        }
        self.barButtonShouldBeEnabled()
        return newEntity
    }

    @objc func updateEntity(_: AnyObject) {
        self.showFioriLoadingIndicator()
        self.view.endEditing(true)
        self.logger.info("Updating entity in backend.")
        self.apicreditmemorequestsrvEntities.updateEntity(self.entity) { error in
            self.hideFioriLoadingIndicator()
            if let error = error {
                self.logger.error("Update entry failed. Error: \(error)", error: error)
                let alertController = UIAlertController(title: NSLocalizedString("keyErrorEntityUpdateTitle", value: "Update entry failed", comment: "XTIT: Title of alert message about entity update failure."), message: error.localizedDescription, preferredStyle: .alert)
                alertController.addAction(UIAlertAction(title: self.okTitle, style: .default))
                OperationQueue.main.addOperation({
                    // Present the alertController
                    self.present(alertController, animated: true)
                })
                return
            }
            self.logger.info("Update entry finished successfully.")
            OperationQueue.main.addOperation({
                self.dismiss(animated: true) {
                    FUIToastMessage.show(message: NSLocalizedString("keyUpdateEntityFinishedTitle", value: "Updated", comment: "XTIT: Title of alert message about successful entity update."))
                    self.entityUpdater?.entityHasChanged(self.entity)
                }
            })
        }
    }

    // MARK: - other logic, helper

    @objc func cancel() {
        OperationQueue.main.addOperation({
            self.dismiss(animated: true)
        })
    }

    // Check if all text fields are valid
    private func barButtonShouldBeEnabled() {
        let anyFieldInvalid = self.validity.values.first { field in
            return field == false
        }
        self.navigationItem.rightBarButtonItem?.isEnabled = anyFieldInvalid == nil
    }
}

extension ACreditMemoRequestItemDetailViewController: EntityUpdaterDelegate {
    func entityHasChanged(_ entityValue: EntityValue?) {
        if let entity = entityValue {
            let currentEntity = entity as! ACreditMemoRequestItemType
            self.entity = currentEntity
            DispatchQueue.main.async { [weak self] in
                self?.tableView.reloadData()
            }
        }
    }
}
