//
// ACreditMemoRequestDetailViewController.swift
// sapvndemo
//
// Created by SAP Cloud Platform SDK for iOS Assistant application on 08/02/18
//

import Foundation
import SAPFoundation
import SAPOData
import SAPFiori
import SAPCommon

class ACreditMemoRequestDetailViewController: FUIFormTableViewController, SAPFioriLoadingIndicator {
    private let appDelegate = UIApplication.shared.delegate as! AppDelegate
    private var apicreditmemorequestsrvEntities: APICREDITMEMOREQUESTSRVEntities<OnlineODataProvider> {
        return self.appDelegate.apicreditmemorequestsrvEntities
    }

    private var validity = [String: Bool]()
    private var _entity: ACreditMemoRequestType?
    var allowsEditableCells = false
    var entity: ACreditMemoRequestType {
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

    private let logger = Logger.shared(named: "ACreditMemoRequestMasterViewControllerLogger")
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
            let detailViewController = dest.viewControllers[0] as! ACreditMemoRequestDetailViewController
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
            return self.cellForCreditMemoRequest(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoRequestType.creditMemoRequest)
        case 1:
            return self.cellForCreditMemoRequestType(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoRequestType.creditMemoRequestType)
        case 2:
            return self.cellForSalesOrganization(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoRequestType.salesOrganization)
        case 3:
            return self.cellForDistributionChannel(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoRequestType.distributionChannel)
        case 4:
            return self.cellForOrganizationDivision(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoRequestType.organizationDivision)
        case 5:
            return self.cellForSalesGroup(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoRequestType.salesGroup)
        case 6:
            return self.cellForSalesOffice(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoRequestType.salesOffice)
        case 7:
            return self.cellForSalesDistrict(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoRequestType.salesDistrict)
        case 8:
            return self.cellForSoldToParty(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoRequestType.soldToParty)
        case 9:
            return self.cellForCreationDate(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoRequestType.creationDate)
        case 10:
            return self.cellForCreatedByUser(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoRequestType.createdByUser)
        case 11:
            return self.cellForLastChangeDate(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoRequestType.lastChangeDate)
        case 12:
            return self.cellForLastChangeDateTime(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoRequestType.lastChangeDateTime)
        case 13:
            return self.cellForPurchaseOrderByCustomer(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoRequestType.purchaseOrderByCustomer)
        case 14:
            return self.cellForCustomerPurchaseOrderType(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoRequestType.customerPurchaseOrderType)
        case 15:
            return self.cellForCustomerPurchaseOrderDate(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoRequestType.customerPurchaseOrderDate)
        case 16:
            return self.cellForCreditMemoRequestDate(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoRequestType.creditMemoRequestDate)
        case 17:
            return self.cellForTotalNetAmount(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoRequestType.totalNetAmount)
        case 18:
            return self.cellForTransactionCurrency(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoRequestType.transactionCurrency)
        case 19:
            return self.cellForSdDocumentReason(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoRequestType.sdDocumentReason)
        case 20:
            return self.cellForPricingDate(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoRequestType.pricingDate)
        case 21:
            return self.cellForHeaderBillingBlockReason(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoRequestType.headerBillingBlockReason)
        case 22:
            return self.cellForIncotermsClassification(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoRequestType.incotermsClassification)
        case 23:
            return self.cellForIncotermsTransferLocation(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoRequestType.incotermsTransferLocation)
        case 24:
            return self.cellForIncotermsLocation1(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoRequestType.incotermsLocation1)
        case 25:
            return self.cellForIncotermsLocation2(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoRequestType.incotermsLocation2)
        case 26:
            return self.cellForIncotermsVersion(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoRequestType.incotermsVersion)
        case 27:
            return self.cellForCustomerPaymentTerms(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoRequestType.customerPaymentTerms)
        case 28:
            return self.cellForPaymentMethod(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoRequestType.paymentMethod)
        case 29:
            return self.cellForBillingDocumentDate(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoRequestType.billingDocumentDate)
        case 30:
            return self.cellForServicesRenderedDate(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoRequestType.servicesRenderedDate)
        case 31:
            return self.cellForOverallSDProcessStatus(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoRequestType.overallSDProcessStatus)
        case 32:
            return self.cellForTotalCreditCheckStatus(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoRequestType.totalCreditCheckStatus)
        case 33:
            return self.cellForOverallSDDocumentRejectionSts(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoRequestType.overallSDDocumentRejectionSts)
        case 34:
            return self.cellForOverallOrdReltdBillgStatus(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoRequestType.overallOrdReltdBillgStatus)
        default:
            return CellCreationHelper.cellForDefault(tableView: tableView, indexPath: indexPath, editingIsAllowed: allowsEditableCells)
        }
    }

    override func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        return 35
    }

    override func tableView(_: UITableView, canEditRowAt _: IndexPath) -> Bool {
        return true
    }

    // MARK: - OData property specific cell creators

    private func cellForCreditMemoRequest(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoRequestType, property: Property) -> UITableViewCell {
        var value = ""
        value = "\(currentEntity.creditMemoRequest ?? "")"
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            if ACreditMemoRequestType.creditMemoRequest.isOptional || newValue != "" {
                currentEntity.creditMemoRequest = newValue
                isNewValueValid = true
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForCreditMemoRequestType(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoRequestType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.creditMemoRequestType {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.creditMemoRequestType = nil
                isNewValueValid = true
            } else {
                if ACreditMemoRequestType.creditMemoRequestType.isOptional || newValue != "" {
                    currentEntity.creditMemoRequestType = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForSalesOrganization(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoRequestType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.salesOrganization {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.salesOrganization = nil
                isNewValueValid = true
            } else {
                if ACreditMemoRequestType.salesOrganization.isOptional || newValue != "" {
                    currentEntity.salesOrganization = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForDistributionChannel(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoRequestType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.distributionChannel {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.distributionChannel = nil
                isNewValueValid = true
            } else {
                if ACreditMemoRequestType.distributionChannel.isOptional || newValue != "" {
                    currentEntity.distributionChannel = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForOrganizationDivision(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoRequestType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.organizationDivision {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.organizationDivision = nil
                isNewValueValid = true
            } else {
                if ACreditMemoRequestType.organizationDivision.isOptional || newValue != "" {
                    currentEntity.organizationDivision = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForSalesGroup(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoRequestType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.salesGroup {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.salesGroup = nil
                isNewValueValid = true
            } else {
                if ACreditMemoRequestType.salesGroup.isOptional || newValue != "" {
                    currentEntity.salesGroup = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForSalesOffice(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoRequestType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.salesOffice {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.salesOffice = nil
                isNewValueValid = true
            } else {
                if ACreditMemoRequestType.salesOffice.isOptional || newValue != "" {
                    currentEntity.salesOffice = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForSalesDistrict(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoRequestType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.salesDistrict {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.salesDistrict = nil
                isNewValueValid = true
            } else {
                if ACreditMemoRequestType.salesDistrict.isOptional || newValue != "" {
                    currentEntity.salesDistrict = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForSoldToParty(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoRequestType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.soldToParty {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.soldToParty = nil
                isNewValueValid = true
            } else {
                if ACreditMemoRequestType.soldToParty.isOptional || newValue != "" {
                    currentEntity.soldToParty = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForCreationDate(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoRequestType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.creationDate {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.creationDate = nil
                isNewValueValid = true
            } else {
                if let validValue = LocalDateTime.parse(newValue) { // This is just a simple solution to handle UTC only
                    currentEntity.creationDate = validValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForCreatedByUser(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoRequestType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.createdByUser {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.createdByUser = nil
                isNewValueValid = true
            } else {
                if ACreditMemoRequestType.createdByUser.isOptional || newValue != "" {
                    currentEntity.createdByUser = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForLastChangeDate(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoRequestType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.lastChangeDate {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.lastChangeDate = nil
                isNewValueValid = true
            } else {
                if let validValue = LocalDateTime.parse(newValue) { // This is just a simple solution to handle UTC only
                    currentEntity.lastChangeDate = validValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForLastChangeDateTime(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoRequestType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.lastChangeDateTime {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.lastChangeDateTime = nil
                isNewValueValid = true
            } else {
                if let validValue = GlobalDateTime.parse(newValue) { // This is just a simple solution to handle UTC only
                    currentEntity.lastChangeDateTime = validValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForPurchaseOrderByCustomer(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoRequestType, property: Property) -> UITableViewCell {
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
                if ACreditMemoRequestType.purchaseOrderByCustomer.isOptional || newValue != "" {
                    currentEntity.purchaseOrderByCustomer = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForCustomerPurchaseOrderType(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoRequestType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.customerPurchaseOrderType {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.customerPurchaseOrderType = nil
                isNewValueValid = true
            } else {
                if ACreditMemoRequestType.customerPurchaseOrderType.isOptional || newValue != "" {
                    currentEntity.customerPurchaseOrderType = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForCustomerPurchaseOrderDate(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoRequestType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.customerPurchaseOrderDate {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.customerPurchaseOrderDate = nil
                isNewValueValid = true
            } else {
                if let validValue = LocalDateTime.parse(newValue) { // This is just a simple solution to handle UTC only
                    currentEntity.customerPurchaseOrderDate = validValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForCreditMemoRequestDate(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoRequestType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.creditMemoRequestDate {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.creditMemoRequestDate = nil
                isNewValueValid = true
            } else {
                if let validValue = LocalDateTime.parse(newValue) { // This is just a simple solution to handle UTC only
                    currentEntity.creditMemoRequestDate = validValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForTotalNetAmount(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoRequestType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.totalNetAmount {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.totalNetAmount = nil
                isNewValueValid = true
            } else {
                if let validValue = BigDecimal.parse(newValue) {
                    currentEntity.totalNetAmount = validValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForTransactionCurrency(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoRequestType, property: Property) -> UITableViewCell {
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
                if ACreditMemoRequestType.transactionCurrency.isOptional || newValue != "" {
                    currentEntity.transactionCurrency = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForSdDocumentReason(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoRequestType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.sdDocumentReason {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.sdDocumentReason = nil
                isNewValueValid = true
            } else {
                if ACreditMemoRequestType.sdDocumentReason.isOptional || newValue != "" {
                    currentEntity.sdDocumentReason = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForPricingDate(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoRequestType, property: Property) -> UITableViewCell {
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

    private func cellForHeaderBillingBlockReason(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoRequestType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.headerBillingBlockReason {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.headerBillingBlockReason = nil
                isNewValueValid = true
            } else {
                if ACreditMemoRequestType.headerBillingBlockReason.isOptional || newValue != "" {
                    currentEntity.headerBillingBlockReason = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForIncotermsClassification(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoRequestType, property: Property) -> UITableViewCell {
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
                if ACreditMemoRequestType.incotermsClassification.isOptional || newValue != "" {
                    currentEntity.incotermsClassification = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForIncotermsTransferLocation(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoRequestType, property: Property) -> UITableViewCell {
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
                if ACreditMemoRequestType.incotermsTransferLocation.isOptional || newValue != "" {
                    currentEntity.incotermsTransferLocation = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForIncotermsLocation1(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoRequestType, property: Property) -> UITableViewCell {
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
                if ACreditMemoRequestType.incotermsLocation1.isOptional || newValue != "" {
                    currentEntity.incotermsLocation1 = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForIncotermsLocation2(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoRequestType, property: Property) -> UITableViewCell {
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
                if ACreditMemoRequestType.incotermsLocation2.isOptional || newValue != "" {
                    currentEntity.incotermsLocation2 = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForIncotermsVersion(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoRequestType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.incotermsVersion {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.incotermsVersion = nil
                isNewValueValid = true
            } else {
                if ACreditMemoRequestType.incotermsVersion.isOptional || newValue != "" {
                    currentEntity.incotermsVersion = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForCustomerPaymentTerms(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoRequestType, property: Property) -> UITableViewCell {
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
                if ACreditMemoRequestType.customerPaymentTerms.isOptional || newValue != "" {
                    currentEntity.customerPaymentTerms = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForPaymentMethod(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoRequestType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.paymentMethod {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.paymentMethod = nil
                isNewValueValid = true
            } else {
                if ACreditMemoRequestType.paymentMethod.isOptional || newValue != "" {
                    currentEntity.paymentMethod = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForBillingDocumentDate(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoRequestType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.billingDocumentDate {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.billingDocumentDate = nil
                isNewValueValid = true
            } else {
                if let validValue = LocalDateTime.parse(newValue) { // This is just a simple solution to handle UTC only
                    currentEntity.billingDocumentDate = validValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForServicesRenderedDate(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoRequestType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.servicesRenderedDate {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.servicesRenderedDate = nil
                isNewValueValid = true
            } else {
                if let validValue = LocalDateTime.parse(newValue) { // This is just a simple solution to handle UTC only
                    currentEntity.servicesRenderedDate = validValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForOverallSDProcessStatus(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoRequestType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.overallSDProcessStatus {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.overallSDProcessStatus = nil
                isNewValueValid = true
            } else {
                if ACreditMemoRequestType.overallSDProcessStatus.isOptional || newValue != "" {
                    currentEntity.overallSDProcessStatus = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForTotalCreditCheckStatus(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoRequestType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.totalCreditCheckStatus {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.totalCreditCheckStatus = nil
                isNewValueValid = true
            } else {
                if ACreditMemoRequestType.totalCreditCheckStatus.isOptional || newValue != "" {
                    currentEntity.totalCreditCheckStatus = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForOverallSDDocumentRejectionSts(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoRequestType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.overallSDDocumentRejectionSts {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.overallSDDocumentRejectionSts = nil
                isNewValueValid = true
            } else {
                if ACreditMemoRequestType.overallSDDocumentRejectionSts.isOptional || newValue != "" {
                    currentEntity.overallSDDocumentRejectionSts = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForOverallOrdReltdBillgStatus(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoRequestType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.overallOrdReltdBillgStatus {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.overallOrdReltdBillgStatus = nil
                isNewValueValid = true
            } else {
                if ACreditMemoRequestType.overallOrdReltdBillgStatus.isOptional || newValue != "" {
                    currentEntity.overallOrdReltdBillgStatus = newValue
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

    func createEntityWithDefaultValues() -> ACreditMemoRequestType {
        let newEntity = ACreditMemoRequestType()
        // Fill the mandatory properties with default values
        newEntity.creditMemoRequest = CellCreationHelper.defaultValueFor(ACreditMemoRequestType.creditMemoRequest)

        // Key properties without default value should be invalid by default for Create scenario
        if newEntity.creditMemoRequest == nil || newEntity.creditMemoRequest!.isEmpty {
            self.validity["CreditMemoRequest"] = false
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

extension ACreditMemoRequestDetailViewController: EntityUpdaterDelegate {
    func entityHasChanged(_ entityValue: EntityValue?) {
        if let entity = entityValue {
            let currentEntity = entity as! ACreditMemoRequestType
            self.entity = currentEntity
            DispatchQueue.main.async { [weak self] in
                self?.tableView.reloadData()
            }
        }
    }
}
