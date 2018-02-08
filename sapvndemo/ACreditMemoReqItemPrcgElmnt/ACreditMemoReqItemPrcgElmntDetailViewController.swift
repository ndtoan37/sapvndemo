//
// ACreditMemoReqItemPrcgElmntDetailViewController.swift
// sapvndemo
//
// Created by SAP Cloud Platform SDK for iOS Assistant application on 08/02/18
//

import Foundation
import SAPFoundation
import SAPOData
import SAPFiori
import SAPCommon

class ACreditMemoReqItemPrcgElmntDetailViewController: FUIFormTableViewController, SAPFioriLoadingIndicator {
    private let appDelegate = UIApplication.shared.delegate as! AppDelegate
    private var apicreditmemorequestsrvEntities: APICREDITMEMOREQUESTSRVEntities<OnlineODataProvider> {
        return self.appDelegate.apicreditmemorequestsrvEntities
    }

    private var validity = [String: Bool]()
    private var _entity: ACreditMemoReqItemPrcgElmntType?
    var allowsEditableCells = false
    var entity: ACreditMemoReqItemPrcgElmntType {
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

    private let logger = Logger.shared(named: "ACreditMemoReqItemPrcgElmntMasterViewControllerLogger")
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
            let detailViewController = dest.viewControllers[0] as! ACreditMemoReqItemPrcgElmntDetailViewController
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
            return self.cellForCreditMemoRequest(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoReqItemPrcgElmntType.creditMemoRequest)
        case 1:
            return self.cellForCreditMemoRequestItem(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoReqItemPrcgElmntType.creditMemoRequestItem)
        case 2:
            return self.cellForPricingProcedureStep(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoReqItemPrcgElmntType.pricingProcedureStep)
        case 3:
            return self.cellForPricingProcedureCounter(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoReqItemPrcgElmntType.pricingProcedureCounter)
        case 4:
            return self.cellForConditionApplication(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoReqItemPrcgElmntType.conditionApplication)
        case 5:
            return self.cellForConditionType(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoReqItemPrcgElmntType.conditionType)
        case 6:
            return self.cellForPricingDateTime(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoReqItemPrcgElmntType.pricingDateTime)
        case 7:
            return self.cellForConditionCalculationType(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoReqItemPrcgElmntType.conditionCalculationType)
        case 8:
            return self.cellForConditionBaseValue(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoReqItemPrcgElmntType.conditionBaseValue)
        case 9:
            return self.cellForConditionRateValue(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoReqItemPrcgElmntType.conditionRateValue)
        case 10:
            return self.cellForConditionCurrency(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoReqItemPrcgElmntType.conditionCurrency)
        case 11:
            return self.cellForConditionQuantity(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoReqItemPrcgElmntType.conditionQuantity)
        case 12:
            return self.cellForConditionQuantityUnit(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoReqItemPrcgElmntType.conditionQuantityUnit)
        case 13:
            return self.cellForConditionToBaseQtyNmrtr(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoReqItemPrcgElmntType.conditionToBaseQtyNmrtr)
        case 14:
            return self.cellForConditionToBaseQtyDnmntr(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoReqItemPrcgElmntType.conditionToBaseQtyDnmntr)
        case 15:
            return self.cellForConditionCategory(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoReqItemPrcgElmntType.conditionCategory)
        case 16:
            return self.cellForConditionIsForStatistics(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoReqItemPrcgElmntType.conditionIsForStatistics)
        case 17:
            return self.cellForPricingScaleType(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoReqItemPrcgElmntType.pricingScaleType)
        case 18:
            return self.cellForIsRelevantForAccrual(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoReqItemPrcgElmntType.isRelevantForAccrual)
        case 19:
            return self.cellForCndnIsRelevantForInvoiceList(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoReqItemPrcgElmntType.cndnIsRelevantForInvoiceList)
        case 20:
            return self.cellForConditionOrigin(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoReqItemPrcgElmntType.conditionOrigin)
        case 21:
            return self.cellForIsGroupCondition(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoReqItemPrcgElmntType.isGroupCondition)
        case 22:
            return self.cellForAccessNumberOfAccessSequence(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoReqItemPrcgElmntType.accessNumberOfAccessSequence)
        case 23:
            return self.cellForConditionRecord(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoReqItemPrcgElmntType.conditionRecord)
        case 24:
            return self.cellForConditionSequentialNumber(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoReqItemPrcgElmntType.conditionSequentialNumber)
        case 25:
            return self.cellForTaxCode(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoReqItemPrcgElmntType.taxCode)
        case 26:
            return self.cellForWithholdingTaxCode(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoReqItemPrcgElmntType.withholdingTaxCode)
        case 27:
            return self.cellForCndnRoundingOffDiffAmount(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoReqItemPrcgElmntType.cndnRoundingOffDiffAmount)
        case 28:
            return self.cellForConditionAmount(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoReqItemPrcgElmntType.conditionAmount)
        case 29:
            return self.cellForTransactionCurrency(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoReqItemPrcgElmntType.transactionCurrency)
        case 30:
            return self.cellForConditionControl(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoReqItemPrcgElmntType.conditionControl)
        case 31:
            return self.cellForConditionInactiveReason(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoReqItemPrcgElmntType.conditionInactiveReason)
        case 32:
            return self.cellForConditionClass(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoReqItemPrcgElmntType.conditionClass)
        case 33:
            return self.cellForPrcgProcedureCounterForHeader(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoReqItemPrcgElmntType.prcgProcedureCounterForHeader)
        case 34:
            return self.cellForFactorForConditionBasisValue(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoReqItemPrcgElmntType.factorForConditionBasisValue)
        case 35:
            return self.cellForStructureCondition(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoReqItemPrcgElmntType.structureCondition)
        case 36:
            return self.cellForPeriodFactorForCndnBasisValue(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoReqItemPrcgElmntType.periodFactorForCndnBasisValue)
        case 37:
            return self.cellForPricingScaleBasis(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoReqItemPrcgElmntType.pricingScaleBasis)
        case 38:
            return self.cellForConditionScaleBasisValue(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoReqItemPrcgElmntType.conditionScaleBasisValue)
        case 39:
            return self.cellForConditionScaleBasisUnit(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoReqItemPrcgElmntType.conditionScaleBasisUnit)
        case 40:
            return self.cellForConditionScaleBasisCurrency(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoReqItemPrcgElmntType.conditionScaleBasisCurrency)
        case 41:
            return self.cellForConditionAlternativeCurrency(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoReqItemPrcgElmntType.conditionAlternativeCurrency)
        case 42:
            return self.cellForConditionAmountInLocalCrcy(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoReqItemPrcgElmntType.conditionAmountInLocalCrcy)
        case 43:
            return self.cellForCndnIsRelevantForIntcoBilling(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoReqItemPrcgElmntType.cndnIsRelevantForIntcoBilling)
        case 44:
            return self.cellForConditionIsManuallyChanged(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoReqItemPrcgElmntType.conditionIsManuallyChanged)
        case 45:
            return self.cellForCumulatedConditionBasisValue(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoReqItemPrcgElmntType.cumulatedConditionBasisValue)
        case 46:
            return self.cellForConditionIsForConfiguration(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoReqItemPrcgElmntType.conditionIsForConfiguration)
        case 47:
            return self.cellForVariantCondition(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoReqItemPrcgElmntType.variantCondition)
        default:
            return CellCreationHelper.cellForDefault(tableView: tableView, indexPath: indexPath, editingIsAllowed: allowsEditableCells)
        }
    }

    override func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        return 48
    }

    override func tableView(_: UITableView, canEditRowAt _: IndexPath) -> Bool {
        return true
    }

    // MARK: - OData property specific cell creators

    private func cellForCreditMemoRequest(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoReqItemPrcgElmntType, property: Property) -> UITableViewCell {
        var value = ""
        value = "\(currentEntity.creditMemoRequest ?? "")"
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            if ACreditMemoReqItemPrcgElmntType.creditMemoRequest.isOptional || newValue != "" {
                currentEntity.creditMemoRequest = newValue
                isNewValueValid = true
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForCreditMemoRequestItem(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoReqItemPrcgElmntType, property: Property) -> UITableViewCell {
        var value = ""
        value = "\(currentEntity.creditMemoRequestItem ?? "")"
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            if ACreditMemoReqItemPrcgElmntType.creditMemoRequestItem.isOptional || newValue != "" {
                currentEntity.creditMemoRequestItem = newValue
                isNewValueValid = true
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForPricingProcedureStep(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoReqItemPrcgElmntType, property: Property) -> UITableViewCell {
        var value = ""
        value = "\(currentEntity.pricingProcedureStep ?? "")"
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            if ACreditMemoReqItemPrcgElmntType.pricingProcedureStep.isOptional || newValue != "" {
                currentEntity.pricingProcedureStep = newValue
                isNewValueValid = true
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForPricingProcedureCounter(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoReqItemPrcgElmntType, property: Property) -> UITableViewCell {
        var value = ""
        value = "\(currentEntity.pricingProcedureCounter ?? "")"
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            if ACreditMemoReqItemPrcgElmntType.pricingProcedureCounter.isOptional || newValue != "" {
                currentEntity.pricingProcedureCounter = newValue
                isNewValueValid = true
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForConditionApplication(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoReqItemPrcgElmntType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.conditionApplication {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.conditionApplication = nil
                isNewValueValid = true
            } else {
                if ACreditMemoReqItemPrcgElmntType.conditionApplication.isOptional || newValue != "" {
                    currentEntity.conditionApplication = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForConditionType(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoReqItemPrcgElmntType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.conditionType {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.conditionType = nil
                isNewValueValid = true
            } else {
                if ACreditMemoReqItemPrcgElmntType.conditionType.isOptional || newValue != "" {
                    currentEntity.conditionType = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForPricingDateTime(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoReqItemPrcgElmntType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.pricingDateTime {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.pricingDateTime = nil
                isNewValueValid = true
            } else {
                if ACreditMemoReqItemPrcgElmntType.pricingDateTime.isOptional || newValue != "" {
                    currentEntity.pricingDateTime = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForConditionCalculationType(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoReqItemPrcgElmntType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.conditionCalculationType {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.conditionCalculationType = nil
                isNewValueValid = true
            } else {
                if ACreditMemoReqItemPrcgElmntType.conditionCalculationType.isOptional || newValue != "" {
                    currentEntity.conditionCalculationType = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForConditionBaseValue(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoReqItemPrcgElmntType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.conditionBaseValue {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.conditionBaseValue = nil
                isNewValueValid = true
            } else {
                if let validValue = BigDecimal.parse(newValue) {
                    currentEntity.conditionBaseValue = validValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForConditionRateValue(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoReqItemPrcgElmntType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.conditionRateValue {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.conditionRateValue = nil
                isNewValueValid = true
            } else {
                if let validValue = BigDecimal.parse(newValue) {
                    currentEntity.conditionRateValue = validValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForConditionCurrency(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoReqItemPrcgElmntType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.conditionCurrency {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.conditionCurrency = nil
                isNewValueValid = true
            } else {
                if ACreditMemoReqItemPrcgElmntType.conditionCurrency.isOptional || newValue != "" {
                    currentEntity.conditionCurrency = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForConditionQuantity(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoReqItemPrcgElmntType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.conditionQuantity {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.conditionQuantity = nil
                isNewValueValid = true
            } else {
                if let validValue = BigInteger.parse(newValue) {
                    currentEntity.conditionQuantity = validValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForConditionQuantityUnit(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoReqItemPrcgElmntType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.conditionQuantityUnit {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.conditionQuantityUnit = nil
                isNewValueValid = true
            } else {
                if ACreditMemoReqItemPrcgElmntType.conditionQuantityUnit.isOptional || newValue != "" {
                    currentEntity.conditionQuantityUnit = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForConditionToBaseQtyNmrtr(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoReqItemPrcgElmntType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.conditionToBaseQtyNmrtr {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.conditionToBaseQtyNmrtr = nil
                isNewValueValid = true
            } else {
                if let validValue = BigInteger.parse(newValue) {
                    currentEntity.conditionToBaseQtyNmrtr = validValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForConditionToBaseQtyDnmntr(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoReqItemPrcgElmntType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.conditionToBaseQtyDnmntr {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.conditionToBaseQtyDnmntr = nil
                isNewValueValid = true
            } else {
                if let validValue = BigInteger.parse(newValue) {
                    currentEntity.conditionToBaseQtyDnmntr = validValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForConditionCategory(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoReqItemPrcgElmntType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.conditionCategory {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.conditionCategory = nil
                isNewValueValid = true
            } else {
                if ACreditMemoReqItemPrcgElmntType.conditionCategory.isOptional || newValue != "" {
                    currentEntity.conditionCategory = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForConditionIsForStatistics(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoReqItemPrcgElmntType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.conditionIsForStatistics {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.conditionIsForStatistics = nil
                isNewValueValid = true
            } else {
                if let validValue = Bool(newValue) {
                    currentEntity.conditionIsForStatistics = validValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForPricingScaleType(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoReqItemPrcgElmntType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.pricingScaleType {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.pricingScaleType = nil
                isNewValueValid = true
            } else {
                if ACreditMemoReqItemPrcgElmntType.pricingScaleType.isOptional || newValue != "" {
                    currentEntity.pricingScaleType = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForIsRelevantForAccrual(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoReqItemPrcgElmntType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.isRelevantForAccrual {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.isRelevantForAccrual = nil
                isNewValueValid = true
            } else {
                if let validValue = Bool(newValue) {
                    currentEntity.isRelevantForAccrual = validValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForCndnIsRelevantForInvoiceList(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoReqItemPrcgElmntType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.cndnIsRelevantForInvoiceList {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.cndnIsRelevantForInvoiceList = nil
                isNewValueValid = true
            } else {
                if ACreditMemoReqItemPrcgElmntType.cndnIsRelevantForInvoiceList.isOptional || newValue != "" {
                    currentEntity.cndnIsRelevantForInvoiceList = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForConditionOrigin(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoReqItemPrcgElmntType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.conditionOrigin {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.conditionOrigin = nil
                isNewValueValid = true
            } else {
                if ACreditMemoReqItemPrcgElmntType.conditionOrigin.isOptional || newValue != "" {
                    currentEntity.conditionOrigin = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForIsGroupCondition(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoReqItemPrcgElmntType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.isGroupCondition {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.isGroupCondition = nil
                isNewValueValid = true
            } else {
                if ACreditMemoReqItemPrcgElmntType.isGroupCondition.isOptional || newValue != "" {
                    currentEntity.isGroupCondition = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForAccessNumberOfAccessSequence(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoReqItemPrcgElmntType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.accessNumberOfAccessSequence {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.accessNumberOfAccessSequence = nil
                isNewValueValid = true
            } else {
                if ACreditMemoReqItemPrcgElmntType.accessNumberOfAccessSequence.isOptional || newValue != "" {
                    currentEntity.accessNumberOfAccessSequence = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForConditionRecord(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoReqItemPrcgElmntType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.conditionRecord {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.conditionRecord = nil
                isNewValueValid = true
            } else {
                if ACreditMemoReqItemPrcgElmntType.conditionRecord.isOptional || newValue != "" {
                    currentEntity.conditionRecord = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForConditionSequentialNumber(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoReqItemPrcgElmntType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.conditionSequentialNumber {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.conditionSequentialNumber = nil
                isNewValueValid = true
            } else {
                if ACreditMemoReqItemPrcgElmntType.conditionSequentialNumber.isOptional || newValue != "" {
                    currentEntity.conditionSequentialNumber = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForTaxCode(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoReqItemPrcgElmntType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.taxCode {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.taxCode = nil
                isNewValueValid = true
            } else {
                if ACreditMemoReqItemPrcgElmntType.taxCode.isOptional || newValue != "" {
                    currentEntity.taxCode = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForWithholdingTaxCode(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoReqItemPrcgElmntType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.withholdingTaxCode {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.withholdingTaxCode = nil
                isNewValueValid = true
            } else {
                if ACreditMemoReqItemPrcgElmntType.withholdingTaxCode.isOptional || newValue != "" {
                    currentEntity.withholdingTaxCode = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForCndnRoundingOffDiffAmount(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoReqItemPrcgElmntType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.cndnRoundingOffDiffAmount {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.cndnRoundingOffDiffAmount = nil
                isNewValueValid = true
            } else {
                if let validValue = BigDecimal.parse(newValue) {
                    currentEntity.cndnRoundingOffDiffAmount = validValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForConditionAmount(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoReqItemPrcgElmntType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.conditionAmount {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.conditionAmount = nil
                isNewValueValid = true
            } else {
                if let validValue = BigDecimal.parse(newValue) {
                    currentEntity.conditionAmount = validValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForTransactionCurrency(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoReqItemPrcgElmntType, property: Property) -> UITableViewCell {
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
                if ACreditMemoReqItemPrcgElmntType.transactionCurrency.isOptional || newValue != "" {
                    currentEntity.transactionCurrency = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForConditionControl(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoReqItemPrcgElmntType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.conditionControl {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.conditionControl = nil
                isNewValueValid = true
            } else {
                if ACreditMemoReqItemPrcgElmntType.conditionControl.isOptional || newValue != "" {
                    currentEntity.conditionControl = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForConditionInactiveReason(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoReqItemPrcgElmntType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.conditionInactiveReason {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.conditionInactiveReason = nil
                isNewValueValid = true
            } else {
                if ACreditMemoReqItemPrcgElmntType.conditionInactiveReason.isOptional || newValue != "" {
                    currentEntity.conditionInactiveReason = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForConditionClass(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoReqItemPrcgElmntType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.conditionClass {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.conditionClass = nil
                isNewValueValid = true
            } else {
                if ACreditMemoReqItemPrcgElmntType.conditionClass.isOptional || newValue != "" {
                    currentEntity.conditionClass = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForPrcgProcedureCounterForHeader(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoReqItemPrcgElmntType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.prcgProcedureCounterForHeader {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.prcgProcedureCounterForHeader = nil
                isNewValueValid = true
            } else {
                if ACreditMemoReqItemPrcgElmntType.prcgProcedureCounterForHeader.isOptional || newValue != "" {
                    currentEntity.prcgProcedureCounterForHeader = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForFactorForConditionBasisValue(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoReqItemPrcgElmntType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.factorForConditionBasisValue {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.factorForConditionBasisValue = nil
                isNewValueValid = true
            } else {
                if let validValue = Double(newValue) {
                    currentEntity.factorForConditionBasisValue = validValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForStructureCondition(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoReqItemPrcgElmntType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.structureCondition {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.structureCondition = nil
                isNewValueValid = true
            } else {
                if ACreditMemoReqItemPrcgElmntType.structureCondition.isOptional || newValue != "" {
                    currentEntity.structureCondition = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForPeriodFactorForCndnBasisValue(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoReqItemPrcgElmntType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.periodFactorForCndnBasisValue {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.periodFactorForCndnBasisValue = nil
                isNewValueValid = true
            } else {
                if let validValue = Double(newValue) {
                    currentEntity.periodFactorForCndnBasisValue = validValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForPricingScaleBasis(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoReqItemPrcgElmntType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.pricingScaleBasis {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.pricingScaleBasis = nil
                isNewValueValid = true
            } else {
                if ACreditMemoReqItemPrcgElmntType.pricingScaleBasis.isOptional || newValue != "" {
                    currentEntity.pricingScaleBasis = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForConditionScaleBasisValue(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoReqItemPrcgElmntType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.conditionScaleBasisValue {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.conditionScaleBasisValue = nil
                isNewValueValid = true
            } else {
                if let validValue = BigDecimal.parse(newValue) {
                    currentEntity.conditionScaleBasisValue = validValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForConditionScaleBasisUnit(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoReqItemPrcgElmntType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.conditionScaleBasisUnit {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.conditionScaleBasisUnit = nil
                isNewValueValid = true
            } else {
                if ACreditMemoReqItemPrcgElmntType.conditionScaleBasisUnit.isOptional || newValue != "" {
                    currentEntity.conditionScaleBasisUnit = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForConditionScaleBasisCurrency(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoReqItemPrcgElmntType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.conditionScaleBasisCurrency {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.conditionScaleBasisCurrency = nil
                isNewValueValid = true
            } else {
                if ACreditMemoReqItemPrcgElmntType.conditionScaleBasisCurrency.isOptional || newValue != "" {
                    currentEntity.conditionScaleBasisCurrency = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForConditionAlternativeCurrency(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoReqItemPrcgElmntType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.conditionAlternativeCurrency {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.conditionAlternativeCurrency = nil
                isNewValueValid = true
            } else {
                if ACreditMemoReqItemPrcgElmntType.conditionAlternativeCurrency.isOptional || newValue != "" {
                    currentEntity.conditionAlternativeCurrency = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForConditionAmountInLocalCrcy(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoReqItemPrcgElmntType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.conditionAmountInLocalCrcy {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.conditionAmountInLocalCrcy = nil
                isNewValueValid = true
            } else {
                if let validValue = BigDecimal.parse(newValue) {
                    currentEntity.conditionAmountInLocalCrcy = validValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForCndnIsRelevantForIntcoBilling(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoReqItemPrcgElmntType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.cndnIsRelevantForIntcoBilling {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.cndnIsRelevantForIntcoBilling = nil
                isNewValueValid = true
            } else {
                if let validValue = Bool(newValue) {
                    currentEntity.cndnIsRelevantForIntcoBilling = validValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForConditionIsManuallyChanged(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoReqItemPrcgElmntType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.conditionIsManuallyChanged {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.conditionIsManuallyChanged = nil
                isNewValueValid = true
            } else {
                if let validValue = Bool(newValue) {
                    currentEntity.conditionIsManuallyChanged = validValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForCumulatedConditionBasisValue(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoReqItemPrcgElmntType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.cumulatedConditionBasisValue {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.cumulatedConditionBasisValue = nil
                isNewValueValid = true
            } else {
                if let validValue = BigDecimal.parse(newValue) {
                    currentEntity.cumulatedConditionBasisValue = validValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForConditionIsForConfiguration(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoReqItemPrcgElmntType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.conditionIsForConfiguration {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.conditionIsForConfiguration = nil
                isNewValueValid = true
            } else {
                if let validValue = Bool(newValue) {
                    currentEntity.conditionIsForConfiguration = validValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForVariantCondition(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoReqItemPrcgElmntType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.variantCondition {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.variantCondition = nil
                isNewValueValid = true
            } else {
                if ACreditMemoReqItemPrcgElmntType.variantCondition.isOptional || newValue != "" {
                    currentEntity.variantCondition = newValue
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

    func createEntityWithDefaultValues() -> ACreditMemoReqItemPrcgElmntType {
        let newEntity = ACreditMemoReqItemPrcgElmntType()
        // Fill the mandatory properties with default values
        newEntity.creditMemoRequest = CellCreationHelper.defaultValueFor(ACreditMemoReqItemPrcgElmntType.creditMemoRequest)
        newEntity.creditMemoRequestItem = CellCreationHelper.defaultValueFor(ACreditMemoReqItemPrcgElmntType.creditMemoRequestItem)
        newEntity.pricingProcedureStep = CellCreationHelper.defaultValueFor(ACreditMemoReqItemPrcgElmntType.pricingProcedureStep)
        newEntity.pricingProcedureCounter = CellCreationHelper.defaultValueFor(ACreditMemoReqItemPrcgElmntType.pricingProcedureCounter)

        // Key properties without default value should be invalid by default for Create scenario
        if newEntity.creditMemoRequest == nil || newEntity.creditMemoRequest!.isEmpty {
            self.validity["CreditMemoRequest"] = false
        }
        if newEntity.creditMemoRequestItem == nil || newEntity.creditMemoRequestItem!.isEmpty {
            self.validity["CreditMemoRequestItem"] = false
        }
        if newEntity.pricingProcedureStep == nil || newEntity.pricingProcedureStep!.isEmpty {
            self.validity["PricingProcedureStep"] = false
        }
        if newEntity.pricingProcedureCounter == nil || newEntity.pricingProcedureCounter!.isEmpty {
            self.validity["PricingProcedureCounter"] = false
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

extension ACreditMemoReqItemPrcgElmntDetailViewController: EntityUpdaterDelegate {
    func entityHasChanged(_ entityValue: EntityValue?) {
        if let entity = entityValue {
            let currentEntity = entity as! ACreditMemoReqItemPrcgElmntType
            self.entity = currentEntity
            DispatchQueue.main.async { [weak self] in
                self?.tableView.reloadData()
            }
        }
    }
}
