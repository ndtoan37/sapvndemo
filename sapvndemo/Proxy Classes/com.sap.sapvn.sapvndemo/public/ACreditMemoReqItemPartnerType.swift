// # Proxy Compiler 17.12.1-7fb011-20180122

import Foundation
import SAPOData

open class ACreditMemoReqItemPartnerType: EntityValue {
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }

    public static var creditMemoRequest: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPartnerType.property(withName: "CreditMemoRequest")

    public static var creditMemoRequestItem: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPartnerType.property(withName: "CreditMemoRequestItem")

    public static var partnerFunction: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPartnerType.property(withName: "PartnerFunction")

    public static var customer: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPartnerType.property(withName: "Customer")

    public static var supplier: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPartnerType.property(withName: "Supplier")

    public static var personnel: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPartnerType.property(withName: "Personnel")

    public static var contactPerson: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPartnerType.property(withName: "ContactPerson")

    public static var toCreditMemoRequest: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPartnerType.property(withName: "to_CreditMemoRequest")

    public static var toCreditMemoRequestItem: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPartnerType.property(withName: "to_CreditMemoRequestItem")

    public init(withDefaults: Bool = true) {
        super.init(withDefaults: withDefaults, type: APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPartnerType)
    }

    open class func array(from: EntityValueList) -> Array<ACreditMemoReqItemPartnerType> {
        return ArrayConverter.convert(from.toArray(), Array<ACreditMemoReqItemPartnerType>())
    }

    open var contactPerson: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoReqItemPartnerType.contactPerson))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqItemPartnerType.contactPerson, to: StringValue.of(optional: value))
        }
    }

    open func copy() -> ACreditMemoReqItemPartnerType {
        return CastRequired<ACreditMemoReqItemPartnerType>.from(self.copyEntity())
    }

    open var creditMemoRequest: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoReqItemPartnerType.creditMemoRequest))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqItemPartnerType.creditMemoRequest, to: StringValue.of(optional: value))
        }
    }

    open var creditMemoRequestItem: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoReqItemPartnerType.creditMemoRequestItem))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqItemPartnerType.creditMemoRequestItem, to: StringValue.of(optional: value))
        }
    }

    open var customer: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoReqItemPartnerType.customer))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqItemPartnerType.customer, to: StringValue.of(optional: value))
        }
    }

    open override var isProxy: Bool {
        return true
    }

    open class func key(creditMemoRequest: String?, creditMemoRequestItem: String?, partnerFunction: String?) -> EntityKey {
        return EntityKey().with(name: "CreditMemoRequest", value: StringValue.of(optional: creditMemoRequest)).with(name: "CreditMemoRequestItem", value: StringValue.of(optional: creditMemoRequestItem)).with(name: "PartnerFunction", value: StringValue.of(optional: partnerFunction))
    }

    open var old: ACreditMemoReqItemPartnerType {
        return CastRequired<ACreditMemoReqItemPartnerType>.from(self.oldEntity)
    }

    open var partnerFunction: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoReqItemPartnerType.partnerFunction))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqItemPartnerType.partnerFunction, to: StringValue.of(optional: value))
        }
    }

    open var personnel: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoReqItemPartnerType.personnel))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqItemPartnerType.personnel, to: StringValue.of(optional: value))
        }
    }

    open var supplier: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoReqItemPartnerType.supplier))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqItemPartnerType.supplier, to: StringValue.of(optional: value))
        }
    }

    open var toCreditMemoRequest: ACreditMemoRequestType? {
        get {
            return CastOptional<ACreditMemoRequestType>.from(self.optionalValue(for: ACreditMemoReqItemPartnerType.toCreditMemoRequest))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqItemPartnerType.toCreditMemoRequest, to: value)
        }
    }

    open var toCreditMemoRequestItem: ACreditMemoRequestItemType? {
        get {
            return CastOptional<ACreditMemoRequestItemType>.from(self.optionalValue(for: ACreditMemoReqItemPartnerType.toCreditMemoRequestItem))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqItemPartnerType.toCreditMemoRequestItem, to: value)
        }
    }
}
