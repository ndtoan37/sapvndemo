// # Proxy Compiler 17.12.1-7fb011-20180122

import Foundation
import SAPOData

open class ACreditMemoRequestType: EntityValue {
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }

    public static var creditMemoRequest: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestType.property(withName: "CreditMemoRequest")

    public static var creditMemoRequestType: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestType.property(withName: "CreditMemoRequestType")

    public static var salesOrganization: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestType.property(withName: "SalesOrganization")

    public static var distributionChannel: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestType.property(withName: "DistributionChannel")

    public static var organizationDivision: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestType.property(withName: "OrganizationDivision")

    public static var salesGroup: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestType.property(withName: "SalesGroup")

    public static var salesOffice: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestType.property(withName: "SalesOffice")

    public static var salesDistrict: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestType.property(withName: "SalesDistrict")

    public static var soldToParty: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestType.property(withName: "SoldToParty")

    public static var creationDate: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestType.property(withName: "CreationDate")

    public static var createdByUser: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestType.property(withName: "CreatedByUser")

    public static var lastChangeDate: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestType.property(withName: "LastChangeDate")

    public static var lastChangeDateTime: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestType.property(withName: "LastChangeDateTime")

    public static var purchaseOrderByCustomer: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestType.property(withName: "PurchaseOrderByCustomer")

    public static var customerPurchaseOrderType: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestType.property(withName: "CustomerPurchaseOrderType")

    public static var customerPurchaseOrderDate: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestType.property(withName: "CustomerPurchaseOrderDate")

    public static var creditMemoRequestDate: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestType.property(withName: "CreditMemoRequestDate")

    public static var totalNetAmount: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestType.property(withName: "TotalNetAmount")

    public static var transactionCurrency: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestType.property(withName: "TransactionCurrency")

    public static var sdDocumentReason: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestType.property(withName: "SDDocumentReason")

    public static var pricingDate: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestType.property(withName: "PricingDate")

    public static var headerBillingBlockReason: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestType.property(withName: "HeaderBillingBlockReason")

    public static var incotermsClassification: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestType.property(withName: "IncotermsClassification")

    public static var incotermsTransferLocation: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestType.property(withName: "IncotermsTransferLocation")

    public static var incotermsLocation1: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestType.property(withName: "IncotermsLocation1")

    public static var incotermsLocation2: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestType.property(withName: "IncotermsLocation2")

    public static var incotermsVersion: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestType.property(withName: "IncotermsVersion")

    public static var customerPaymentTerms: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestType.property(withName: "CustomerPaymentTerms")

    public static var paymentMethod: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestType.property(withName: "PaymentMethod")

    public static var billingDocumentDate: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestType.property(withName: "BillingDocumentDate")

    public static var servicesRenderedDate: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestType.property(withName: "ServicesRenderedDate")

    public static var overallSDProcessStatus: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestType.property(withName: "OverallSDProcessStatus")

    public static var totalCreditCheckStatus: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestType.property(withName: "TotalCreditCheckStatus")

    public static var overallSDDocumentRejectionSts: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestType.property(withName: "OverallSDDocumentRejectionSts")

    public static var overallOrdReltdBillgStatus: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestType.property(withName: "OverallOrdReltdBillgStatus")

    public static var toItem: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestType.property(withName: "to_Item")

    public static var toPartner: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestType.property(withName: "to_Partner")

    public static var toPricingElement: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestType.property(withName: "to_PricingElement")

    public init(withDefaults: Bool = true) {
        super.init(withDefaults: withDefaults, type: APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestType)
    }

    open class func array(from: EntityValueList) -> Array<ACreditMemoRequestType> {
        return ArrayConverter.convert(from.toArray(), Array<ACreditMemoRequestType>())
    }

    open var billingDocumentDate: LocalDateTime? {
        get {
            return LocalDateTime.castOptional(self.optionalValue(for: ACreditMemoRequestType.billingDocumentDate))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoRequestType.billingDocumentDate, to: value)
        }
    }

    open func copy() -> ACreditMemoRequestType {
        return CastRequired<ACreditMemoRequestType>.from(self.copyEntity())
    }

    open var createdByUser: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoRequestType.createdByUser))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoRequestType.createdByUser, to: StringValue.of(optional: value))
        }
    }

    open var creationDate: LocalDateTime? {
        get {
            return LocalDateTime.castOptional(self.optionalValue(for: ACreditMemoRequestType.creationDate))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoRequestType.creationDate, to: value)
        }
    }

    open var creditMemoRequest: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoRequestType.creditMemoRequest))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoRequestType.creditMemoRequest, to: StringValue.of(optional: value))
        }
    }

    open var creditMemoRequestDate: LocalDateTime? {
        get {
            return LocalDateTime.castOptional(self.optionalValue(for: ACreditMemoRequestType.creditMemoRequestDate))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoRequestType.creditMemoRequestDate, to: value)
        }
    }

    open var creditMemoRequestType: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoRequestType.creditMemoRequestType))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoRequestType.creditMemoRequestType, to: StringValue.of(optional: value))
        }
    }

    open var customerPaymentTerms: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoRequestType.customerPaymentTerms))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoRequestType.customerPaymentTerms, to: StringValue.of(optional: value))
        }
    }

    open var customerPurchaseOrderDate: LocalDateTime? {
        get {
            return LocalDateTime.castOptional(self.optionalValue(for: ACreditMemoRequestType.customerPurchaseOrderDate))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoRequestType.customerPurchaseOrderDate, to: value)
        }
    }

    open var customerPurchaseOrderType: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoRequestType.customerPurchaseOrderType))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoRequestType.customerPurchaseOrderType, to: StringValue.of(optional: value))
        }
    }

    open var distributionChannel: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoRequestType.distributionChannel))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoRequestType.distributionChannel, to: StringValue.of(optional: value))
        }
    }

    open var headerBillingBlockReason: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoRequestType.headerBillingBlockReason))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoRequestType.headerBillingBlockReason, to: StringValue.of(optional: value))
        }
    }

    open var incotermsClassification: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoRequestType.incotermsClassification))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoRequestType.incotermsClassification, to: StringValue.of(optional: value))
        }
    }

    open var incotermsLocation1: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoRequestType.incotermsLocation1))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoRequestType.incotermsLocation1, to: StringValue.of(optional: value))
        }
    }

    open var incotermsLocation2: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoRequestType.incotermsLocation2))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoRequestType.incotermsLocation2, to: StringValue.of(optional: value))
        }
    }

    open var incotermsTransferLocation: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoRequestType.incotermsTransferLocation))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoRequestType.incotermsTransferLocation, to: StringValue.of(optional: value))
        }
    }

    open var incotermsVersion: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoRequestType.incotermsVersion))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoRequestType.incotermsVersion, to: StringValue.of(optional: value))
        }
    }

    open override var isProxy: Bool {
        return true
    }

    open class func key(creditMemoRequest: String?) -> EntityKey {
        return EntityKey().with(name: "CreditMemoRequest", value: StringValue.of(optional: creditMemoRequest))
    }

    open var lastChangeDate: LocalDateTime? {
        get {
            return LocalDateTime.castOptional(self.optionalValue(for: ACreditMemoRequestType.lastChangeDate))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoRequestType.lastChangeDate, to: value)
        }
    }

    open var lastChangeDateTime: GlobalDateTime? {
        get {
            return GlobalDateTime.castOptional(self.optionalValue(for: ACreditMemoRequestType.lastChangeDateTime))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoRequestType.lastChangeDateTime, to: value)
        }
    }

    open var old: ACreditMemoRequestType {
        return CastRequired<ACreditMemoRequestType>.from(self.oldEntity)
    }

    open var organizationDivision: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoRequestType.organizationDivision))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoRequestType.organizationDivision, to: StringValue.of(optional: value))
        }
    }

    open var overallOrdReltdBillgStatus: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoRequestType.overallOrdReltdBillgStatus))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoRequestType.overallOrdReltdBillgStatus, to: StringValue.of(optional: value))
        }
    }

    open var overallSDDocumentRejectionSts: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoRequestType.overallSDDocumentRejectionSts))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoRequestType.overallSDDocumentRejectionSts, to: StringValue.of(optional: value))
        }
    }

    open var overallSDProcessStatus: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoRequestType.overallSDProcessStatus))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoRequestType.overallSDProcessStatus, to: StringValue.of(optional: value))
        }
    }

    open var paymentMethod: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoRequestType.paymentMethod))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoRequestType.paymentMethod, to: StringValue.of(optional: value))
        }
    }

    open var pricingDate: LocalDateTime? {
        get {
            return LocalDateTime.castOptional(self.optionalValue(for: ACreditMemoRequestType.pricingDate))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoRequestType.pricingDate, to: value)
        }
    }

    open var purchaseOrderByCustomer: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoRequestType.purchaseOrderByCustomer))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoRequestType.purchaseOrderByCustomer, to: StringValue.of(optional: value))
        }
    }

    open var salesDistrict: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoRequestType.salesDistrict))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoRequestType.salesDistrict, to: StringValue.of(optional: value))
        }
    }

    open var salesGroup: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoRequestType.salesGroup))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoRequestType.salesGroup, to: StringValue.of(optional: value))
        }
    }

    open var salesOffice: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoRequestType.salesOffice))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoRequestType.salesOffice, to: StringValue.of(optional: value))
        }
    }

    open var salesOrganization: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoRequestType.salesOrganization))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoRequestType.salesOrganization, to: StringValue.of(optional: value))
        }
    }

    open var sdDocumentReason: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoRequestType.sdDocumentReason))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoRequestType.sdDocumentReason, to: StringValue.of(optional: value))
        }
    }

    open var servicesRenderedDate: LocalDateTime? {
        get {
            return LocalDateTime.castOptional(self.optionalValue(for: ACreditMemoRequestType.servicesRenderedDate))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoRequestType.servicesRenderedDate, to: value)
        }
    }

    open var soldToParty: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoRequestType.soldToParty))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoRequestType.soldToParty, to: StringValue.of(optional: value))
        }
    }

    open var toItem: Array<ACreditMemoRequestItemType> {
        get {
            return ArrayConverter.convert(EntityValueList.castRequired(self.requiredValue(for: ACreditMemoRequestType.toItem)).toArray(), Array<ACreditMemoRequestItemType>())
        }
        set(value) {
            ACreditMemoRequestType.toItem.setEntityList(in: self, to: EntityValueList.fromArray(ArrayConverter.convert(value, Array<EntityValue>())))
        }
    }

    open var toPartner: Array<ACreditMemoReqPartnerType> {
        get {
            return ArrayConverter.convert(EntityValueList.castRequired(self.requiredValue(for: ACreditMemoRequestType.toPartner)).toArray(), Array<ACreditMemoReqPartnerType>())
        }
        set(value) {
            ACreditMemoRequestType.toPartner.setEntityList(in: self, to: EntityValueList.fromArray(ArrayConverter.convert(value, Array<EntityValue>())))
        }
    }

    open var toPricingElement: Array<ACreditMemoReqPrcgElmntType> {
        get {
            return ArrayConverter.convert(EntityValueList.castRequired(self.requiredValue(for: ACreditMemoRequestType.toPricingElement)).toArray(), Array<ACreditMemoReqPrcgElmntType>())
        }
        set(value) {
            ACreditMemoRequestType.toPricingElement.setEntityList(in: self, to: EntityValueList.fromArray(ArrayConverter.convert(value, Array<EntityValue>())))
        }
    }

    open var totalCreditCheckStatus: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoRequestType.totalCreditCheckStatus))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoRequestType.totalCreditCheckStatus, to: StringValue.of(optional: value))
        }
    }

    open var totalNetAmount: BigDecimal? {
        get {
            return DecimalValue.optional(self.optionalValue(for: ACreditMemoRequestType.totalNetAmount))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoRequestType.totalNetAmount, to: DecimalValue.of(optional: value))
        }
    }

    open var transactionCurrency: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoRequestType.transactionCurrency))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoRequestType.transactionCurrency, to: StringValue.of(optional: value))
        }
    }
}
