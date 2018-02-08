// # Proxy Compiler 17.12.1-7fb011-20180122

import Foundation
import SAPOData

open class ACreditMemoReqPartnerType: EntityValue {
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }

    public static var creditMemoRequest: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPartnerType.property(withName: "CreditMemoRequest")

    public static var partnerFunction: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPartnerType.property(withName: "PartnerFunction")

    public static var customer: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPartnerType.property(withName: "Customer")

    public static var supplier: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPartnerType.property(withName: "Supplier")

    public static var personnel: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPartnerType.property(withName: "Personnel")

    public static var contactPerson: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPartnerType.property(withName: "ContactPerson")

    public static var toCreditMemoRequest: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPartnerType.property(withName: "to_CreditMemoRequest")

    public init(withDefaults: Bool = true) {
        super.init(withDefaults: withDefaults, type: APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPartnerType)
    }

    open class func array(from: EntityValueList) -> Array<ACreditMemoReqPartnerType> {
        return ArrayConverter.convert(from.toArray(), Array<ACreditMemoReqPartnerType>())
    }

    open var contactPerson: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoReqPartnerType.contactPerson))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqPartnerType.contactPerson, to: StringValue.of(optional: value))
        }
    }

    open func copy() -> ACreditMemoReqPartnerType {
        return CastRequired<ACreditMemoReqPartnerType>.from(self.copyEntity())
    }

    open var creditMemoRequest: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoReqPartnerType.creditMemoRequest))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqPartnerType.creditMemoRequest, to: StringValue.of(optional: value))
        }
    }

    open var customer: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoReqPartnerType.customer))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqPartnerType.customer, to: StringValue.of(optional: value))
        }
    }

    open override var isProxy: Bool {
        return true
    }

    open class func key(creditMemoRequest: String?, partnerFunction: String?) -> EntityKey {
        return EntityKey().with(name: "CreditMemoRequest", value: StringValue.of(optional: creditMemoRequest)).with(name: "PartnerFunction", value: StringValue.of(optional: partnerFunction))
    }

    open var old: ACreditMemoReqPartnerType {
        return CastRequired<ACreditMemoReqPartnerType>.from(self.oldEntity)
    }

    open var partnerFunction: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoReqPartnerType.partnerFunction))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqPartnerType.partnerFunction, to: StringValue.of(optional: value))
        }
    }

    open var personnel: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoReqPartnerType.personnel))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqPartnerType.personnel, to: StringValue.of(optional: value))
        }
    }

    open var supplier: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoReqPartnerType.supplier))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqPartnerType.supplier, to: StringValue.of(optional: value))
        }
    }

    open var toCreditMemoRequest: ACreditMemoRequestType? {
        get {
            return CastOptional<ACreditMemoRequestType>.from(self.optionalValue(for: ACreditMemoReqPartnerType.toCreditMemoRequest))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqPartnerType.toCreditMemoRequest, to: value)
        }
    }
}
