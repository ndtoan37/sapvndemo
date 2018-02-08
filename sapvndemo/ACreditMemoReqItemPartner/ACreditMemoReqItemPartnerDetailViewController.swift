//
// ACreditMemoReqItemPartnerDetailViewController.swift
// sapvndemo
//
// Created by SAP Cloud Platform SDK for iOS Assistant application on 08/02/18
//

import Foundation
import SAPFoundation
import SAPOData
import SAPFiori
import SAPCommon

class ACreditMemoReqItemPartnerDetailViewController: FUIFormTableViewController, SAPFioriLoadingIndicator {
    private let appDelegate = UIApplication.shared.delegate as! AppDelegate
    private var apicreditmemorequestsrvEntities: APICREDITMEMOREQUESTSRVEntities<OnlineODataProvider> {
        return self.appDelegate.apicreditmemorequestsrvEntities
    }

    private var validity = [String: Bool]()
    private var _entity: ACreditMemoReqItemPartnerType?
    var allowsEditableCells = false
    var entity: ACreditMemoReqItemPartnerType {
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

    private let logger = Logger.shared(named: "ACreditMemoReqItemPartnerMasterViewControllerLogger")
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
            let detailViewController = dest.viewControllers[0] as! ACreditMemoReqItemPartnerDetailViewController
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
            return self.cellForCreditMemoRequest(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoReqItemPartnerType.creditMemoRequest)
        case 1:
            return self.cellForCreditMemoRequestItem(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoReqItemPartnerType.creditMemoRequestItem)
        case 2:
            return self.cellForPartnerFunction(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoReqItemPartnerType.partnerFunction)
        case 3:
            return self.cellForCustomer(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoReqItemPartnerType.customer)
        case 4:
            return self.cellForSupplier(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoReqItemPartnerType.supplier)
        case 5:
            return self.cellForPersonnel(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoReqItemPartnerType.personnel)
        case 6:
            return self.cellForContactPerson(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: ACreditMemoReqItemPartnerType.contactPerson)
        default:
            return CellCreationHelper.cellForDefault(tableView: tableView, indexPath: indexPath, editingIsAllowed: allowsEditableCells)
        }
    }

    override func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        return 7
    }

    override func tableView(_: UITableView, canEditRowAt _: IndexPath) -> Bool {
        return true
    }

    // MARK: - OData property specific cell creators

    private func cellForCreditMemoRequest(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoReqItemPartnerType, property: Property) -> UITableViewCell {
        var value = ""
        value = "\(currentEntity.creditMemoRequest ?? "")"
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            if ACreditMemoReqItemPartnerType.creditMemoRequest.isOptional || newValue != "" {
                currentEntity.creditMemoRequest = newValue
                isNewValueValid = true
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForCreditMemoRequestItem(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoReqItemPartnerType, property: Property) -> UITableViewCell {
        var value = ""
        value = "\(currentEntity.creditMemoRequestItem ?? "")"
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            if ACreditMemoReqItemPartnerType.creditMemoRequestItem.isOptional || newValue != "" {
                currentEntity.creditMemoRequestItem = newValue
                isNewValueValid = true
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForPartnerFunction(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoReqItemPartnerType, property: Property) -> UITableViewCell {
        var value = ""
        value = "\(currentEntity.partnerFunction ?? "")"
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            if ACreditMemoReqItemPartnerType.partnerFunction.isOptional || newValue != "" {
                currentEntity.partnerFunction = newValue
                isNewValueValid = true
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForCustomer(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoReqItemPartnerType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.customer {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.customer = nil
                isNewValueValid = true
            } else {
                if ACreditMemoReqItemPartnerType.customer.isOptional || newValue != "" {
                    currentEntity.customer = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForSupplier(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoReqItemPartnerType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.supplier {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.supplier = nil
                isNewValueValid = true
            } else {
                if ACreditMemoReqItemPartnerType.supplier.isOptional || newValue != "" {
                    currentEntity.supplier = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForPersonnel(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoReqItemPartnerType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.personnel {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.personnel = nil
                isNewValueValid = true
            } else {
                if ACreditMemoReqItemPartnerType.personnel.isOptional || newValue != "" {
                    currentEntity.personnel = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForContactPerson(tableView: UITableView, indexPath: IndexPath, currentEntity: ACreditMemoReqItemPartnerType, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.contactPerson {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.contactPerson = nil
                isNewValueValid = true
            } else {
                if ACreditMemoReqItemPartnerType.contactPerson.isOptional || newValue != "" {
                    currentEntity.contactPerson = newValue
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

    func createEntityWithDefaultValues() -> ACreditMemoReqItemPartnerType {
        let newEntity = ACreditMemoReqItemPartnerType()
        // Fill the mandatory properties with default values
        newEntity.creditMemoRequest = CellCreationHelper.defaultValueFor(ACreditMemoReqItemPartnerType.creditMemoRequest)
        newEntity.creditMemoRequestItem = CellCreationHelper.defaultValueFor(ACreditMemoReqItemPartnerType.creditMemoRequestItem)
        newEntity.partnerFunction = CellCreationHelper.defaultValueFor(ACreditMemoReqItemPartnerType.partnerFunction)

        // Key properties without default value should be invalid by default for Create scenario
        if newEntity.creditMemoRequest == nil || newEntity.creditMemoRequest!.isEmpty {
            self.validity["CreditMemoRequest"] = false
        }
        if newEntity.creditMemoRequestItem == nil || newEntity.creditMemoRequestItem!.isEmpty {
            self.validity["CreditMemoRequestItem"] = false
        }
        if newEntity.partnerFunction == nil || newEntity.partnerFunction!.isEmpty {
            self.validity["PartnerFunction"] = false
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

extension ACreditMemoReqItemPartnerDetailViewController: EntityUpdaterDelegate {
    func entityHasChanged(_ entityValue: EntityValue?) {
        if let entity = entityValue {
            let currentEntity = entity as! ACreditMemoReqItemPartnerType
            self.entity = currentEntity
            DispatchQueue.main.async { [weak self] in
                self?.tableView.reloadData()
            }
        }
    }
}
