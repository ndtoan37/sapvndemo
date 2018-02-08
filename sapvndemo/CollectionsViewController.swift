//
// CollectionsViewController.swift
// sapvndemo
//
// Created by SAP Cloud Platform SDK for iOS Assistant application on 08/02/18
//

import Foundation
import SAPFiori
import SAPOData

protocol EntityUpdaterDelegate {
    func entityHasChanged(_ entity: EntityValue?)
}

protocol EntitySetUpdaterDelegate {
    func entitySetHasChanged()
}

class CollectionsViewController: FUIFormTableViewController {

    private var collections = CollectionType.all

    // Variable to store the selected index path
    private var selectedIndex: IndexPath?

    private let appDelegate = UIApplication.shared.delegate as! AppDelegate

    var isPresentedInSplitView: Bool {
        return !(self.splitViewController?.isCollapsed ?? true)
    }

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.preferredContentSize = CGSize(width: 320, height: 480)

        self.tableView.rowHeight = UITableViewAutomaticDimension
        self.tableView.estimatedRowHeight = 44
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.makeSelection()
    }

    override func viewWillTransition(to _: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        coordinator.animate(alongsideTransition: nil, completion: { _ in
            let isNotInSplitView = !self.isPresentedInSplitView
            self.tableView.visibleCells.forEach { cell in
                // To refresh the disclosure indicator of each cell
                cell.accessoryType = isNotInSplitView ? .disclosureIndicator : .none
            }
            self.makeSelection()
        })
    }

    // MARK: - UITableViewDelegate
    override func numberOfSections(in _: UITableView) -> Int {
        return 1
    }

    override func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        return self.collections.count
    }

    override func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
        return 44
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: FUIObjectTableViewCell.reuseIdentifier, for: indexPath) as! FUIObjectTableViewCell
        cell.headlineLabel.text = self.collections[indexPath.row].rawValue
        cell.accessoryType = !self.isPresentedInSplitView ? .disclosureIndicator : .none
        cell.isMomentarySelection = false
        return cell
    }

    override func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.selectedIndex = indexPath
        self.collectionSelected(at: indexPath)
    }

    // CollectionType selection helper

    private func collectionSelected(at: IndexPath) {
        // Load the EntityType specific ViewController from the specific storyboard
        var masterViewController: UIViewController!
        switch self.collections[at.row] {
        case .aCreditMemoReqPrcgElmnt:
            let aCreditMemoReqPrcgElmntStoryBoard = UIStoryboard(name: "ACreditMemoReqPrcgElmnt", bundle: nil)
            masterViewController = aCreditMemoReqPrcgElmntStoryBoard.instantiateViewController(withIdentifier: "ACreditMemoReqPrcgElmntMaster")
            masterViewController.navigationItem.title = "ACreditMemoReqPrcgElmnt"
        case .aCreditMemoRequestItem:
            let aCreditMemoRequestItemStoryBoard = UIStoryboard(name: "ACreditMemoRequestItem", bundle: nil)
            masterViewController = aCreditMemoRequestItemStoryBoard.instantiateViewController(withIdentifier: "ACreditMemoRequestItemMaster")
            masterViewController.navigationItem.title = "ACreditMemoRequestItem"
        case .aCreditMemoReqItemPartner:
            let aCreditMemoReqItemPartnerStoryBoard = UIStoryboard(name: "ACreditMemoReqItemPartner", bundle: nil)
            masterViewController = aCreditMemoReqItemPartnerStoryBoard.instantiateViewController(withIdentifier: "ACreditMemoReqItemPartnerMaster")
            masterViewController.navigationItem.title = "ACreditMemoReqItemPartner"
        case .aCreditMemoRequest:
            let aCreditMemoRequestStoryBoard = UIStoryboard(name: "ACreditMemoRequest", bundle: nil)
            masterViewController = aCreditMemoRequestStoryBoard.instantiateViewController(withIdentifier: "ACreditMemoRequestMaster")
            masterViewController.navigationItem.title = "ACreditMemoRequest"
        case .aCreditMemoReqItemPrcgElmnt:
            let aCreditMemoReqItemPrcgElmntStoryBoard = UIStoryboard(name: "ACreditMemoReqItemPrcgElmnt", bundle: nil)
            masterViewController = aCreditMemoReqItemPrcgElmntStoryBoard.instantiateViewController(withIdentifier: "ACreditMemoReqItemPrcgElmntMaster")
            masterViewController.navigationItem.title = "ACreditMemoReqItemPrcgElmnt"
        case .aCreditMemoReqPartner:
            let aCreditMemoReqPartnerStoryBoard = UIStoryboard(name: "ACreditMemoReqPartner", bundle: nil)
            masterViewController = aCreditMemoReqPartnerStoryBoard.instantiateViewController(withIdentifier: "ACreditMemoReqPartnerMaster")
            masterViewController.navigationItem.title = "ACreditMemoReqPartner"
        case .none:
            masterViewController = UIViewController()
        }

        // Load the NavigationController and present with the EntityType specific ViewController
        let mainStoryBoard = UIStoryboard(name: "Main", bundle: nil)
        let rightNavigationController = mainStoryBoard.instantiateViewController(withIdentifier: "RightNavigationController") as! UINavigationController
        rightNavigationController.viewControllers = [masterViewController]
        self.splitViewController?.showDetailViewController(rightNavigationController, sender: nil)
    }

    // MARK: - Handle highlighting of selected cell
    private func makeSelection() {
        if let selectedIndex = selectedIndex {
            self.tableView.selectRow(at: selectedIndex, animated: true, scrollPosition: .none)
            self.tableView.scrollToRow(at: selectedIndex, at: .none, animated: true)
        } else {
            self.selectDefault()
        }
    }

    private func selectDefault() {
        // Automatically select first element if we have two panels (iPhone plus and iPad only)
        if self.splitViewController!.isCollapsed || self.appDelegate.apicreditmemorequestsrvEntities == nil {
            return
        }
        let indexPath = IndexPath(row: 0, section: 0)
        self.tableView.selectRow(at: indexPath, animated: true, scrollPosition: .middle)
        self.collectionSelected(at: indexPath)
    }
}
