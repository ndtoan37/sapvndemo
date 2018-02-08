// # Proxy Compiler 17.12.1-7fb011-20180122

import Foundation
import SAPOData

open class ACreditMemoReqItemPrcgElmntType: EntityValue {
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }

    public static var creditMemoRequest: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "CreditMemoRequest")

    public static var creditMemoRequestItem: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "CreditMemoRequestItem")

    public static var pricingProcedureStep: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "PricingProcedureStep")

    public static var pricingProcedureCounter: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "PricingProcedureCounter")

    public static var conditionApplication: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "ConditionApplication")

    public static var conditionType: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "ConditionType")

    public static var pricingDateTime: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "PricingDateTime")

    public static var conditionCalculationType: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "ConditionCalculationType")

    public static var conditionBaseValue: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "ConditionBaseValue")

    public static var conditionRateValue: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "ConditionRateValue")

    public static var conditionCurrency: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "ConditionCurrency")

    public static var conditionQuantity: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "ConditionQuantity")

    public static var conditionQuantityUnit: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "ConditionQuantityUnit")

    public static var conditionToBaseQtyNmrtr: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "ConditionToBaseQtyNmrtr")

    public static var conditionToBaseQtyDnmntr: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "ConditionToBaseQtyDnmntr")

    public static var conditionCategory: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "ConditionCategory")

    public static var conditionIsForStatistics: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "ConditionIsForStatistics")

    public static var pricingScaleType: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "PricingScaleType")

    public static var isRelevantForAccrual: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "IsRelevantForAccrual")

    public static var cndnIsRelevantForInvoiceList: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "CndnIsRelevantForInvoiceList")

    public static var conditionOrigin: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "ConditionOrigin")

    public static var isGroupCondition: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "IsGroupCondition")

    public static var accessNumberOfAccessSequence: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "AccessNumberOfAccessSequence")

    public static var conditionRecord: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "ConditionRecord")

    public static var conditionSequentialNumber: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "ConditionSequentialNumber")

    public static var taxCode: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "TaxCode")

    public static var withholdingTaxCode: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "WithholdingTaxCode")

    public static var cndnRoundingOffDiffAmount: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "CndnRoundingOffDiffAmount")

    public static var conditionAmount: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "ConditionAmount")

    public static var transactionCurrency: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "TransactionCurrency")

    public static var conditionControl: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "ConditionControl")

    public static var conditionInactiveReason: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "ConditionInactiveReason")

    public static var conditionClass: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "ConditionClass")

    public static var prcgProcedureCounterForHeader: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "PrcgProcedureCounterForHeader")

    public static var factorForConditionBasisValue: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "FactorForConditionBasisValue")

    public static var structureCondition: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "StructureCondition")

    public static var periodFactorForCndnBasisValue: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "PeriodFactorForCndnBasisValue")

    public static var pricingScaleBasis: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "PricingScaleBasis")

    public static var conditionScaleBasisValue: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "ConditionScaleBasisValue")

    public static var conditionScaleBasisUnit: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "ConditionScaleBasisUnit")

    public static var conditionScaleBasisCurrency: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "ConditionScaleBasisCurrency")

    public static var conditionAlternativeCurrency: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "ConditionAlternativeCurrency")

    public static var conditionAmountInLocalCrcy: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "ConditionAmountInLocalCrcy")

    public static var cndnIsRelevantForIntcoBilling: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "CndnIsRelevantForIntcoBilling")

    public static var conditionIsManuallyChanged: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "ConditionIsManuallyChanged")

    public static var cumulatedConditionBasisValue: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "CumulatedConditionBasisValue")

    public static var conditionIsForConfiguration: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "ConditionIsForConfiguration")

    public static var variantCondition: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "VariantCondition")

    public static var toCreditMemoRequest: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "to_CreditMemoRequest")

    public static var toCreditMemoRequestItem: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "to_CreditMemoRequestItem")

    public init(withDefaults: Bool = true) {
        super.init(withDefaults: withDefaults, type: APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType)
    }

    open var accessNumberOfAccessSequence: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoReqItemPrcgElmntType.accessNumberOfAccessSequence))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqItemPrcgElmntType.accessNumberOfAccessSequence, to: StringValue.of(optional: value))
        }
    }

    open class func array(from: EntityValueList) -> Array<ACreditMemoReqItemPrcgElmntType> {
        return ArrayConverter.convert(from.toArray(), Array<ACreditMemoReqItemPrcgElmntType>())
    }

    open var cndnIsRelevantForIntcoBilling: Bool? {
        get {
            return BooleanValue.optional(self.optionalValue(for: ACreditMemoReqItemPrcgElmntType.cndnIsRelevantForIntcoBilling))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqItemPrcgElmntType.cndnIsRelevantForIntcoBilling, to: BooleanValue.of(optional: value))
        }
    }

    open var cndnIsRelevantForInvoiceList: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoReqItemPrcgElmntType.cndnIsRelevantForInvoiceList))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqItemPrcgElmntType.cndnIsRelevantForInvoiceList, to: StringValue.of(optional: value))
        }
    }

    open var cndnRoundingOffDiffAmount: BigDecimal? {
        get {
            return DecimalValue.optional(self.optionalValue(for: ACreditMemoReqItemPrcgElmntType.cndnRoundingOffDiffAmount))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqItemPrcgElmntType.cndnRoundingOffDiffAmount, to: DecimalValue.of(optional: value))
        }
    }

    open var conditionAlternativeCurrency: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoReqItemPrcgElmntType.conditionAlternativeCurrency))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqItemPrcgElmntType.conditionAlternativeCurrency, to: StringValue.of(optional: value))
        }
    }

    open var conditionAmount: BigDecimal? {
        get {
            return DecimalValue.optional(self.optionalValue(for: ACreditMemoReqItemPrcgElmntType.conditionAmount))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqItemPrcgElmntType.conditionAmount, to: DecimalValue.of(optional: value))
        }
    }

    open var conditionAmountInLocalCrcy: BigDecimal? {
        get {
            return DecimalValue.optional(self.optionalValue(for: ACreditMemoReqItemPrcgElmntType.conditionAmountInLocalCrcy))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqItemPrcgElmntType.conditionAmountInLocalCrcy, to: DecimalValue.of(optional: value))
        }
    }

    open var conditionApplication: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoReqItemPrcgElmntType.conditionApplication))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqItemPrcgElmntType.conditionApplication, to: StringValue.of(optional: value))
        }
    }

    open var conditionBaseValue: BigDecimal? {
        get {
            return DecimalValue.optional(self.optionalValue(for: ACreditMemoReqItemPrcgElmntType.conditionBaseValue))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqItemPrcgElmntType.conditionBaseValue, to: DecimalValue.of(optional: value))
        }
    }

    open var conditionCalculationType: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoReqItemPrcgElmntType.conditionCalculationType))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqItemPrcgElmntType.conditionCalculationType, to: StringValue.of(optional: value))
        }
    }

    open var conditionCategory: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoReqItemPrcgElmntType.conditionCategory))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqItemPrcgElmntType.conditionCategory, to: StringValue.of(optional: value))
        }
    }

    open var conditionClass: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoReqItemPrcgElmntType.conditionClass))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqItemPrcgElmntType.conditionClass, to: StringValue.of(optional: value))
        }
    }

    open var conditionControl: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoReqItemPrcgElmntType.conditionControl))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqItemPrcgElmntType.conditionControl, to: StringValue.of(optional: value))
        }
    }

    open var conditionCurrency: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoReqItemPrcgElmntType.conditionCurrency))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqItemPrcgElmntType.conditionCurrency, to: StringValue.of(optional: value))
        }
    }

    open var conditionInactiveReason: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoReqItemPrcgElmntType.conditionInactiveReason))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqItemPrcgElmntType.conditionInactiveReason, to: StringValue.of(optional: value))
        }
    }

    open var conditionIsForConfiguration: Bool? {
        get {
            return BooleanValue.optional(self.optionalValue(for: ACreditMemoReqItemPrcgElmntType.conditionIsForConfiguration))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqItemPrcgElmntType.conditionIsForConfiguration, to: BooleanValue.of(optional: value))
        }
    }

    open var conditionIsForStatistics: Bool? {
        get {
            return BooleanValue.optional(self.optionalValue(for: ACreditMemoReqItemPrcgElmntType.conditionIsForStatistics))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqItemPrcgElmntType.conditionIsForStatistics, to: BooleanValue.of(optional: value))
        }
    }

    open var conditionIsManuallyChanged: Bool? {
        get {
            return BooleanValue.optional(self.optionalValue(for: ACreditMemoReqItemPrcgElmntType.conditionIsManuallyChanged))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqItemPrcgElmntType.conditionIsManuallyChanged, to: BooleanValue.of(optional: value))
        }
    }

    open var conditionOrigin: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoReqItemPrcgElmntType.conditionOrigin))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqItemPrcgElmntType.conditionOrigin, to: StringValue.of(optional: value))
        }
    }

    open var conditionQuantity: BigInteger? {
        get {
            return IntegerValue.optional(self.optionalValue(for: ACreditMemoReqItemPrcgElmntType.conditionQuantity))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqItemPrcgElmntType.conditionQuantity, to: IntegerValue.of(optional: value))
        }
    }

    open var conditionQuantityUnit: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoReqItemPrcgElmntType.conditionQuantityUnit))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqItemPrcgElmntType.conditionQuantityUnit, to: StringValue.of(optional: value))
        }
    }

    open var conditionRateValue: BigDecimal? {
        get {
            return DecimalValue.optional(self.optionalValue(for: ACreditMemoReqItemPrcgElmntType.conditionRateValue))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqItemPrcgElmntType.conditionRateValue, to: DecimalValue.of(optional: value))
        }
    }

    open var conditionRecord: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoReqItemPrcgElmntType.conditionRecord))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqItemPrcgElmntType.conditionRecord, to: StringValue.of(optional: value))
        }
    }

    open var conditionScaleBasisCurrency: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoReqItemPrcgElmntType.conditionScaleBasisCurrency))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqItemPrcgElmntType.conditionScaleBasisCurrency, to: StringValue.of(optional: value))
        }
    }

    open var conditionScaleBasisUnit: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoReqItemPrcgElmntType.conditionScaleBasisUnit))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqItemPrcgElmntType.conditionScaleBasisUnit, to: StringValue.of(optional: value))
        }
    }

    open var conditionScaleBasisValue: BigDecimal? {
        get {
            return DecimalValue.optional(self.optionalValue(for: ACreditMemoReqItemPrcgElmntType.conditionScaleBasisValue))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqItemPrcgElmntType.conditionScaleBasisValue, to: DecimalValue.of(optional: value))
        }
    }

    open var conditionSequentialNumber: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoReqItemPrcgElmntType.conditionSequentialNumber))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqItemPrcgElmntType.conditionSequentialNumber, to: StringValue.of(optional: value))
        }
    }

    open var conditionToBaseQtyDnmntr: BigInteger? {
        get {
            return IntegerValue.optional(self.optionalValue(for: ACreditMemoReqItemPrcgElmntType.conditionToBaseQtyDnmntr))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqItemPrcgElmntType.conditionToBaseQtyDnmntr, to: IntegerValue.of(optional: value))
        }
    }

    open var conditionToBaseQtyNmrtr: BigInteger? {
        get {
            return IntegerValue.optional(self.optionalValue(for: ACreditMemoReqItemPrcgElmntType.conditionToBaseQtyNmrtr))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqItemPrcgElmntType.conditionToBaseQtyNmrtr, to: IntegerValue.of(optional: value))
        }
    }

    open var conditionType: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoReqItemPrcgElmntType.conditionType))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqItemPrcgElmntType.conditionType, to: StringValue.of(optional: value))
        }
    }

    open func copy() -> ACreditMemoReqItemPrcgElmntType {
        return CastRequired<ACreditMemoReqItemPrcgElmntType>.from(self.copyEntity())
    }

    open var creditMemoRequest: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoReqItemPrcgElmntType.creditMemoRequest))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqItemPrcgElmntType.creditMemoRequest, to: StringValue.of(optional: value))
        }
    }

    open var creditMemoRequestItem: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoReqItemPrcgElmntType.creditMemoRequestItem))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqItemPrcgElmntType.creditMemoRequestItem, to: StringValue.of(optional: value))
        }
    }

    open var cumulatedConditionBasisValue: BigDecimal? {
        get {
            return DecimalValue.optional(self.optionalValue(for: ACreditMemoReqItemPrcgElmntType.cumulatedConditionBasisValue))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqItemPrcgElmntType.cumulatedConditionBasisValue, to: DecimalValue.of(optional: value))
        }
    }

    open var factorForConditionBasisValue: Double? {
        get {
            return DoubleValue.optional(self.optionalValue(for: ACreditMemoReqItemPrcgElmntType.factorForConditionBasisValue))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqItemPrcgElmntType.factorForConditionBasisValue, to: DoubleValue.of(optional: value))
        }
    }

    open var isGroupCondition: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoReqItemPrcgElmntType.isGroupCondition))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqItemPrcgElmntType.isGroupCondition, to: StringValue.of(optional: value))
        }
    }

    open override var isProxy: Bool {
        return true
    }

    open var isRelevantForAccrual: Bool? {
        get {
            return BooleanValue.optional(self.optionalValue(for: ACreditMemoReqItemPrcgElmntType.isRelevantForAccrual))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqItemPrcgElmntType.isRelevantForAccrual, to: BooleanValue.of(optional: value))
        }
    }

    open class func key(creditMemoRequest: String?, creditMemoRequestItem: String?, pricingProcedureStep: String?, pricingProcedureCounter: String?) -> EntityKey {
        return EntityKey().with(name: "CreditMemoRequest", value: StringValue.of(optional: creditMemoRequest)).with(name: "CreditMemoRequestItem", value: StringValue.of(optional: creditMemoRequestItem)).with(name: "PricingProcedureStep", value: StringValue.of(optional: pricingProcedureStep)).with(name: "PricingProcedureCounter", value: StringValue.of(optional: pricingProcedureCounter))
    }

    open var old: ACreditMemoReqItemPrcgElmntType {
        return CastRequired<ACreditMemoReqItemPrcgElmntType>.from(self.oldEntity)
    }

    open var periodFactorForCndnBasisValue: Double? {
        get {
            return DoubleValue.optional(self.optionalValue(for: ACreditMemoReqItemPrcgElmntType.periodFactorForCndnBasisValue))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqItemPrcgElmntType.periodFactorForCndnBasisValue, to: DoubleValue.of(optional: value))
        }
    }

    open var prcgProcedureCounterForHeader: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoReqItemPrcgElmntType.prcgProcedureCounterForHeader))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqItemPrcgElmntType.prcgProcedureCounterForHeader, to: StringValue.of(optional: value))
        }
    }

    open var pricingDateTime: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoReqItemPrcgElmntType.pricingDateTime))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqItemPrcgElmntType.pricingDateTime, to: StringValue.of(optional: value))
        }
    }

    open var pricingProcedureCounter: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoReqItemPrcgElmntType.pricingProcedureCounter))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqItemPrcgElmntType.pricingProcedureCounter, to: StringValue.of(optional: value))
        }
    }

    open var pricingProcedureStep: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoReqItemPrcgElmntType.pricingProcedureStep))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqItemPrcgElmntType.pricingProcedureStep, to: StringValue.of(optional: value))
        }
    }

    open var pricingScaleBasis: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoReqItemPrcgElmntType.pricingScaleBasis))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqItemPrcgElmntType.pricingScaleBasis, to: StringValue.of(optional: value))
        }
    }

    open var pricingScaleType: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoReqItemPrcgElmntType.pricingScaleType))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqItemPrcgElmntType.pricingScaleType, to: StringValue.of(optional: value))
        }
    }

    open var structureCondition: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoReqItemPrcgElmntType.structureCondition))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqItemPrcgElmntType.structureCondition, to: StringValue.of(optional: value))
        }
    }

    open var taxCode: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoReqItemPrcgElmntType.taxCode))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqItemPrcgElmntType.taxCode, to: StringValue.of(optional: value))
        }
    }

    open var toCreditMemoRequest: ACreditMemoRequestType? {
        get {
            return CastOptional<ACreditMemoRequestType>.from(self.optionalValue(for: ACreditMemoReqItemPrcgElmntType.toCreditMemoRequest))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqItemPrcgElmntType.toCreditMemoRequest, to: value)
        }
    }

    open var toCreditMemoRequestItem: ACreditMemoRequestItemType? {
        get {
            return CastOptional<ACreditMemoRequestItemType>.from(self.optionalValue(for: ACreditMemoReqItemPrcgElmntType.toCreditMemoRequestItem))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqItemPrcgElmntType.toCreditMemoRequestItem, to: value)
        }
    }

    open var transactionCurrency: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoReqItemPrcgElmntType.transactionCurrency))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqItemPrcgElmntType.transactionCurrency, to: StringValue.of(optional: value))
        }
    }

    open var variantCondition: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoReqItemPrcgElmntType.variantCondition))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqItemPrcgElmntType.variantCondition, to: StringValue.of(optional: value))
        }
    }

    open var withholdingTaxCode: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoReqItemPrcgElmntType.withholdingTaxCode))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqItemPrcgElmntType.withholdingTaxCode, to: StringValue.of(optional: value))
        }
    }
}
