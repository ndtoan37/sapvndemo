//
// CollectionType.swift
// sapvndemo
//
// Created by SAP Cloud Platform SDK for iOS Assistant application on 08/02/18
//

import Foundation

enum CollectionType: String {

    case aCreditMemoReqPrcgElmnt = "ACreditMemoReqPrcgElmnt"
    case aCreditMemoRequestItem = "ACreditMemoRequestItem"
    case aCreditMemoReqItemPartner = "ACreditMemoReqItemPartner"
    case aCreditMemoRequest = "ACreditMemoRequest"
    case aCreditMemoReqItemPrcgElmnt = "ACreditMemoReqItemPrcgElmnt"
    case aCreditMemoReqPartner = "ACreditMemoReqPartner"
    case none = ""

    static let all = [
        aCreditMemoReqPrcgElmnt, aCreditMemoRequestItem, aCreditMemoReqItemPartner, aCreditMemoRequest, aCreditMemoReqItemPrcgElmnt, aCreditMemoReqPartner,
    ]
}
