// # Proxy Compiler 17.12.1-7fb011-20180122

import Foundation
import SAPOData

open class ACreditMemoRequestItemType: EntityValue {
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }

    public static var creditMemoRequest: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestItemType.property(withName: "CreditMemoRequest")

    public static var creditMemoRequestItem: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestItemType.property(withName: "CreditMemoRequestItem")

    public static var higherLevelItem: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestItemType.property(withName: "HigherLevelItem")

    public static var creditMemoRequestItemCategory: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestItemType.property(withName: "CreditMemoRequestItemCategory")

    public static var creditMemoRequestItemText: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestItemType.property(withName: "CreditMemoRequestItemText")

    public static var purchaseOrderByCustomer: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestItemType.property(withName: "PurchaseOrderByCustomer")

    public static var material: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestItemType.property(withName: "Material")

    public static var materialByCustomer: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestItemType.property(withName: "MaterialByCustomer")

    public static var pricingDate: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestItemType.property(withName: "PricingDate")

    public static var requestedQuantity: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestItemType.property(withName: "RequestedQuantity")

    public static var requestedQuantityUnit: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestItemType.property(withName: "RequestedQuantityUnit")

    public static var itemGrossWeight: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestItemType.property(withName: "ItemGrossWeight")

    public static var itemNetWeight: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestItemType.property(withName: "ItemNetWeight")

    public static var itemWeightUnit: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestItemType.property(withName: "ItemWeightUnit")

    public static var itemVolume: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestItemType.property(withName: "ItemVolume")

    public static var itemVolumeUnit: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestItemType.property(withName: "ItemVolumeUnit")

    public static var transactionCurrency: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestItemType.property(withName: "TransactionCurrency")

    public static var netAmount: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestItemType.property(withName: "NetAmount")

    public static var materialGroup: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestItemType.property(withName: "MaterialGroup")

    public static var batch: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestItemType.property(withName: "Batch")

    public static var incotermsClassification: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestItemType.property(withName: "IncotermsClassification")

    public static var incotermsTransferLocation: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestItemType.property(withName: "IncotermsTransferLocation")

    public static var incotermsLocation1: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestItemType.property(withName: "IncotermsLocation1")

    public static var incotermsLocation2: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestItemType.property(withName: "IncotermsLocation2")

    public static var customerPaymentTerms: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestItemType.property(withName: "CustomerPaymentTerms")

    public static var itemBillingBlockReason: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestItemType.property(withName: "ItemBillingBlockReason")

    public static var salesDocumentRjcnReason: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestItemType.property(withName: "SalesDocumentRjcnReason")

    public static var sdProcessStatus: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestItemType.property(withName: "SDProcessStatus")

    public static var orderRelatedBillingStatus: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestItemType.property(withName: "OrderRelatedBillingStatus")

    public static var toCreditMemoRequest: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestItemType.property(withName: "to_CreditMemoRequest")

    public static var toPartner: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestItemType.property(withName: "to_Partner")

    public static var toPricingElement: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestItemType.property(withName: "to_PricingElement")

    public init(withDefaults: Bool = true) {
        super.init(withDefaults: withDefaults, type: APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestItemType)
    }

    open class func array(from: EntityValueList) -> Array<ACreditMemoRequestItemType> {
        return ArrayConverter.convert(from.toArray(), Array<ACreditMemoRequestItemType>())
    }

    open var batch: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoRequestItemType.batch))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoRequestItemType.batch, to: StringValue.of(optional: value))
        }
    }

    open func copy() -> ACreditMemoRequestItemType {
        return CastRequired<ACreditMemoRequestItemType>.from(self.copyEntity())
    }

    open var creditMemoRequest: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoRequestItemType.creditMemoRequest))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoRequestItemType.creditMemoRequest, to: StringValue.of(optional: value))
        }
    }

    open var creditMemoRequestItem: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoRequestItemType.creditMemoRequestItem))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoRequestItemType.creditMemoRequestItem, to: StringValue.of(optional: value))
        }
    }

    open var creditMemoRequestItemCategory: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoRequestItemType.creditMemoRequestItemCategory))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoRequestItemType.creditMemoRequestItemCategory, to: StringValue.of(optional: value))
        }
    }

    open var creditMemoRequestItemText: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoRequestItemType.creditMemoRequestItemText))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoRequestItemType.creditMemoRequestItemText, to: StringValue.of(optional: value))
        }
    }

    open var customerPaymentTerms: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoRequestItemType.customerPaymentTerms))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoRequestItemType.customerPaymentTerms, to: StringValue.of(optional: value))
        }
    }

    open var higherLevelItem: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoRequestItemType.higherLevelItem))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoRequestItemType.higherLevelItem, to: StringValue.of(optional: value))
        }
    }

    open var incotermsClassification: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoRequestItemType.incotermsClassification))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoRequestItemType.incotermsClassification, to: StringValue.of(optional: value))
        }
    }

    open var incotermsLocation1: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoRequestItemType.incotermsLocation1))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoRequestItemType.incotermsLocation1, to: StringValue.of(optional: value))
        }
    }

    open var incotermsLocation2: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoRequestItemType.incotermsLocation2))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoRequestItemType.incotermsLocation2, to: StringValue.of(optional: value))
        }
    }

    open var incotermsTransferLocation: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoRequestItemType.incotermsTransferLocation))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoRequestItemType.incotermsTransferLocation, to: StringValue.of(optional: value))
        }
    }

    open override var isProxy: Bool {
        return true
    }

    open var itemBillingBlockReason: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoRequestItemType.itemBillingBlockReason))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoRequestItemType.itemBillingBlockReason, to: StringValue.of(optional: value))
        }
    }

    open var itemGrossWeight: BigDecimal? {
        get {
            return DecimalValue.optional(self.optionalValue(for: ACreditMemoRequestItemType.itemGrossWeight))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoRequestItemType.itemGrossWeight, to: DecimalValue.of(optional: value))
        }
    }

    open var itemNetWeight: BigDecimal? {
        get {
            return DecimalValue.optional(self.optionalValue(for: ACreditMemoRequestItemType.itemNetWeight))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoRequestItemType.itemNetWeight, to: DecimalValue.of(optional: value))
        }
    }

    open var itemVolume: BigDecimal? {
        get {
            return DecimalValue.optional(self.optionalValue(for: ACreditMemoRequestItemType.itemVolume))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoRequestItemType.itemVolume, to: DecimalValue.of(optional: value))
        }
    }

    open var itemVolumeUnit: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoRequestItemType.itemVolumeUnit))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoRequestItemType.itemVolumeUnit, to: StringValue.of(optional: value))
        }
    }

    open var itemWeightUnit: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoRequestItemType.itemWeightUnit))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoRequestItemType.itemWeightUnit, to: StringValue.of(optional: value))
        }
    }

    open class func key(creditMemoRequest: String?, creditMemoRequestItem: String?) -> EntityKey {
        return EntityKey().with(name: "CreditMemoRequest", value: StringValue.of(optional: creditMemoRequest)).with(name: "CreditMemoRequestItem", value: StringValue.of(optional: creditMemoRequestItem))
    }

    open var material: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoRequestItemType.material))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoRequestItemType.material, to: StringValue.of(optional: value))
        }
    }

    open var materialByCustomer: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoRequestItemType.materialByCustomer))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoRequestItemType.materialByCustomer, to: StringValue.of(optional: value))
        }
    }

    open var materialGroup: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoRequestItemType.materialGroup))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoRequestItemType.materialGroup, to: StringValue.of(optional: value))
        }
    }

    open var netAmount: BigDecimal? {
        get {
            return DecimalValue.optional(self.optionalValue(for: ACreditMemoRequestItemType.netAmount))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoRequestItemType.netAmount, to: DecimalValue.of(optional: value))
        }
    }

    open var old: ACreditMemoRequestItemType {
        return CastRequired<ACreditMemoRequestItemType>.from(self.oldEntity)
    }

    open var orderRelatedBillingStatus: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoRequestItemType.orderRelatedBillingStatus))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoRequestItemType.orderRelatedBillingStatus, to: StringValue.of(optional: value))
        }
    }

    open var pricingDate: LocalDateTime? {
        get {
            return LocalDateTime.castOptional(self.optionalValue(for: ACreditMemoRequestItemType.pricingDate))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoRequestItemType.pricingDate, to: value)
        }
    }

    open var purchaseOrderByCustomer: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoRequestItemType.purchaseOrderByCustomer))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoRequestItemType.purchaseOrderByCustomer, to: StringValue.of(optional: value))
        }
    }

    open var requestedQuantity: BigDecimal? {
        get {
            return DecimalValue.optional(self.optionalValue(for: ACreditMemoRequestItemType.requestedQuantity))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoRequestItemType.requestedQuantity, to: DecimalValue.of(optional: value))
        }
    }

    open var requestedQuantityUnit: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoRequestItemType.requestedQuantityUnit))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoRequestItemType.requestedQuantityUnit, to: StringValue.of(optional: value))
        }
    }

    open var salesDocumentRjcnReason: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoRequestItemType.salesDocumentRjcnReason))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoRequestItemType.salesDocumentRjcnReason, to: StringValue.of(optional: value))
        }
    }

    open var sdProcessStatus: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoRequestItemType.sdProcessStatus))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoRequestItemType.sdProcessStatus, to: StringValue.of(optional: value))
        }
    }

    open var toCreditMemoRequest: ACreditMemoRequestType? {
        get {
            return CastOptional<ACreditMemoRequestType>.from(self.optionalValue(for: ACreditMemoRequestItemType.toCreditMemoRequest))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoRequestItemType.toCreditMemoRequest, to: value)
        }
    }

    open var toPartner: Array<ACreditMemoReqItemPartnerType> {
        get {
            return ArrayConverter.convert(EntityValueList.castRequired(self.requiredValue(for: ACreditMemoRequestItemType.toPartner)).toArray(), Array<ACreditMemoReqItemPartnerType>())
        }
        set(value) {
            ACreditMemoRequestItemType.toPartner.setEntityList(in: self, to: EntityValueList.fromArray(ArrayConverter.convert(value, Array<EntityValue>())))
        }
    }

    open var toPricingElement: Array<ACreditMemoReqItemPrcgElmntType> {
        get {
            return ArrayConverter.convert(EntityValueList.castRequired(self.requiredValue(for: ACreditMemoRequestItemType.toPricingElement)).toArray(), Array<ACreditMemoReqItemPrcgElmntType>())
        }
        set(value) {
            ACreditMemoRequestItemType.toPricingElement.setEntityList(in: self, to: EntityValueList.fromArray(ArrayConverter.convert(value, Array<EntityValue>())))
        }
    }

    open var transactionCurrency: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoRequestItemType.transactionCurrency))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoRequestItemType.transactionCurrency, to: StringValue.of(optional: value))
        }
    }
}
