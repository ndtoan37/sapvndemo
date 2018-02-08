// # Proxy Compiler 17.12.1-7fb011-20180122

import Foundation
import SAPOData

open class ACreditMemoReqPrcgElmntType: EntityValue {
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }

    public static var creditMemoRequest: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "CreditMemoRequest")

    public static var pricingProcedureStep: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "PricingProcedureStep")

    public static var pricingProcedureCounter: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "PricingProcedureCounter")

    public static var conditionApplication: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "ConditionApplication")

    public static var conditionType: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "ConditionType")

    public static var pricingDateTime: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "PricingDateTime")

    public static var conditionCalculationType: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "ConditionCalculationType")

    public static var conditionBaseValue: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "ConditionBaseValue")

    public static var conditionRateValue: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "ConditionRateValue")

    public static var conditionCurrency: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "ConditionCurrency")

    public static var conditionQuantity: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "ConditionQuantity")

    public static var conditionQuantityUnit: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "ConditionQuantityUnit")

    public static var conditionToBaseQtyNmrtr: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "ConditionToBaseQtyNmrtr")

    public static var conditionToBaseQtyDnmntr: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "ConditionToBaseQtyDnmntr")

    public static var conditionCategory: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "ConditionCategory")

    public static var conditionIsForStatistics: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "ConditionIsForStatistics")

    public static var pricingScaleType: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "PricingScaleType")

    public static var isRelevantForAccrual: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "IsRelevantForAccrual")

    public static var cndnIsRelevantForInvoiceList: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "CndnIsRelevantForInvoiceList")

    public static var conditionOrigin: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "ConditionOrigin")

    public static var isGroupCondition: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "IsGroupCondition")

    public static var accessNumberOfAccessSequence: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "AccessNumberOfAccessSequence")

    public static var conditionRecord: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "ConditionRecord")

    public static var conditionSequentialNumber: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "ConditionSequentialNumber")

    public static var taxCode: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "TaxCode")

    public static var withholdingTaxCode: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "WithholdingTaxCode")

    public static var cndnRoundingOffDiffAmount: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "CndnRoundingOffDiffAmount")

    public static var conditionAmount: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "ConditionAmount")

    public static var transactionCurrency: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "TransactionCurrency")

    public static var conditionControl: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "ConditionControl")

    public static var conditionInactiveReason: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "ConditionInactiveReason")

    public static var conditionClass: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "ConditionClass")

    public static var prcgProcedureCounterForHeader: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "PrcgProcedureCounterForHeader")

    public static var factorForConditionBasisValue: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "FactorForConditionBasisValue")

    public static var structureCondition: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "StructureCondition")

    public static var periodFactorForCndnBasisValue: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "PeriodFactorForCndnBasisValue")

    public static var pricingScaleBasis: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "PricingScaleBasis")

    public static var conditionScaleBasisValue: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "ConditionScaleBasisValue")

    public static var conditionScaleBasisUnit: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "ConditionScaleBasisUnit")

    public static var conditionScaleBasisCurrency: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "ConditionScaleBasisCurrency")

    public static var conditionAlternativeCurrency: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "ConditionAlternativeCurrency")

    public static var conditionAmountInLocalCrcy: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "ConditionAmountInLocalCrcy")

    public static var cndnIsRelevantForIntcoBilling: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "CndnIsRelevantForIntcoBilling")

    public static var conditionIsManuallyChanged: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "ConditionIsManuallyChanged")

    public static var cumulatedConditionBasisValue: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "CumulatedConditionBasisValue")

    public static var conditionIsForConfiguration: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "ConditionIsForConfiguration")

    public static var variantCondition: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "VariantCondition")

    public static var toCreditMemoRequest: Property = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "to_CreditMemoRequest")

    public init(withDefaults: Bool = true) {
        super.init(withDefaults: withDefaults, type: APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType)
    }

    open var accessNumberOfAccessSequence: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoReqPrcgElmntType.accessNumberOfAccessSequence))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqPrcgElmntType.accessNumberOfAccessSequence, to: StringValue.of(optional: value))
        }
    }

    open class func array(from: EntityValueList) -> Array<ACreditMemoReqPrcgElmntType> {
        return ArrayConverter.convert(from.toArray(), Array<ACreditMemoReqPrcgElmntType>())
    }

    open var cndnIsRelevantForIntcoBilling: Bool? {
        get {
            return BooleanValue.optional(self.optionalValue(for: ACreditMemoReqPrcgElmntType.cndnIsRelevantForIntcoBilling))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqPrcgElmntType.cndnIsRelevantForIntcoBilling, to: BooleanValue.of(optional: value))
        }
    }

    open var cndnIsRelevantForInvoiceList: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoReqPrcgElmntType.cndnIsRelevantForInvoiceList))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqPrcgElmntType.cndnIsRelevantForInvoiceList, to: StringValue.of(optional: value))
        }
    }

    open var cndnRoundingOffDiffAmount: BigDecimal? {
        get {
            return DecimalValue.optional(self.optionalValue(for: ACreditMemoReqPrcgElmntType.cndnRoundingOffDiffAmount))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqPrcgElmntType.cndnRoundingOffDiffAmount, to: DecimalValue.of(optional: value))
        }
    }

    open var conditionAlternativeCurrency: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoReqPrcgElmntType.conditionAlternativeCurrency))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqPrcgElmntType.conditionAlternativeCurrency, to: StringValue.of(optional: value))
        }
    }

    open var conditionAmount: BigDecimal? {
        get {
            return DecimalValue.optional(self.optionalValue(for: ACreditMemoReqPrcgElmntType.conditionAmount))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqPrcgElmntType.conditionAmount, to: DecimalValue.of(optional: value))
        }
    }

    open var conditionAmountInLocalCrcy: BigDecimal? {
        get {
            return DecimalValue.optional(self.optionalValue(for: ACreditMemoReqPrcgElmntType.conditionAmountInLocalCrcy))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqPrcgElmntType.conditionAmountInLocalCrcy, to: DecimalValue.of(optional: value))
        }
    }

    open var conditionApplication: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoReqPrcgElmntType.conditionApplication))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqPrcgElmntType.conditionApplication, to: StringValue.of(optional: value))
        }
    }

    open var conditionBaseValue: BigDecimal? {
        get {
            return DecimalValue.optional(self.optionalValue(for: ACreditMemoReqPrcgElmntType.conditionBaseValue))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqPrcgElmntType.conditionBaseValue, to: DecimalValue.of(optional: value))
        }
    }

    open var conditionCalculationType: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoReqPrcgElmntType.conditionCalculationType))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqPrcgElmntType.conditionCalculationType, to: StringValue.of(optional: value))
        }
    }

    open var conditionCategory: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoReqPrcgElmntType.conditionCategory))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqPrcgElmntType.conditionCategory, to: StringValue.of(optional: value))
        }
    }

    open var conditionClass: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoReqPrcgElmntType.conditionClass))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqPrcgElmntType.conditionClass, to: StringValue.of(optional: value))
        }
    }

    open var conditionControl: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoReqPrcgElmntType.conditionControl))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqPrcgElmntType.conditionControl, to: StringValue.of(optional: value))
        }
    }

    open var conditionCurrency: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoReqPrcgElmntType.conditionCurrency))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqPrcgElmntType.conditionCurrency, to: StringValue.of(optional: value))
        }
    }

    open var conditionInactiveReason: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoReqPrcgElmntType.conditionInactiveReason))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqPrcgElmntType.conditionInactiveReason, to: StringValue.of(optional: value))
        }
    }

    open var conditionIsForConfiguration: Bool? {
        get {
            return BooleanValue.optional(self.optionalValue(for: ACreditMemoReqPrcgElmntType.conditionIsForConfiguration))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqPrcgElmntType.conditionIsForConfiguration, to: BooleanValue.of(optional: value))
        }
    }

    open var conditionIsForStatistics: Bool? {
        get {
            return BooleanValue.optional(self.optionalValue(for: ACreditMemoReqPrcgElmntType.conditionIsForStatistics))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqPrcgElmntType.conditionIsForStatistics, to: BooleanValue.of(optional: value))
        }
    }

    open var conditionIsManuallyChanged: Bool? {
        get {
            return BooleanValue.optional(self.optionalValue(for: ACreditMemoReqPrcgElmntType.conditionIsManuallyChanged))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqPrcgElmntType.conditionIsManuallyChanged, to: BooleanValue.of(optional: value))
        }
    }

    open var conditionOrigin: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoReqPrcgElmntType.conditionOrigin))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqPrcgElmntType.conditionOrigin, to: StringValue.of(optional: value))
        }
    }

    open var conditionQuantity: BigInteger? {
        get {
            return IntegerValue.optional(self.optionalValue(for: ACreditMemoReqPrcgElmntType.conditionQuantity))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqPrcgElmntType.conditionQuantity, to: IntegerValue.of(optional: value))
        }
    }

    open var conditionQuantityUnit: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoReqPrcgElmntType.conditionQuantityUnit))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqPrcgElmntType.conditionQuantityUnit, to: StringValue.of(optional: value))
        }
    }

    open var conditionRateValue: BigDecimal? {
        get {
            return DecimalValue.optional(self.optionalValue(for: ACreditMemoReqPrcgElmntType.conditionRateValue))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqPrcgElmntType.conditionRateValue, to: DecimalValue.of(optional: value))
        }
    }

    open var conditionRecord: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoReqPrcgElmntType.conditionRecord))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqPrcgElmntType.conditionRecord, to: StringValue.of(optional: value))
        }
    }

    open var conditionScaleBasisCurrency: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoReqPrcgElmntType.conditionScaleBasisCurrency))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqPrcgElmntType.conditionScaleBasisCurrency, to: StringValue.of(optional: value))
        }
    }

    open var conditionScaleBasisUnit: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoReqPrcgElmntType.conditionScaleBasisUnit))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqPrcgElmntType.conditionScaleBasisUnit, to: StringValue.of(optional: value))
        }
    }

    open var conditionScaleBasisValue: BigDecimal? {
        get {
            return DecimalValue.optional(self.optionalValue(for: ACreditMemoReqPrcgElmntType.conditionScaleBasisValue))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqPrcgElmntType.conditionScaleBasisValue, to: DecimalValue.of(optional: value))
        }
    }

    open var conditionSequentialNumber: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoReqPrcgElmntType.conditionSequentialNumber))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqPrcgElmntType.conditionSequentialNumber, to: StringValue.of(optional: value))
        }
    }

    open var conditionToBaseQtyDnmntr: BigInteger? {
        get {
            return IntegerValue.optional(self.optionalValue(for: ACreditMemoReqPrcgElmntType.conditionToBaseQtyDnmntr))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqPrcgElmntType.conditionToBaseQtyDnmntr, to: IntegerValue.of(optional: value))
        }
    }

    open var conditionToBaseQtyNmrtr: BigInteger? {
        get {
            return IntegerValue.optional(self.optionalValue(for: ACreditMemoReqPrcgElmntType.conditionToBaseQtyNmrtr))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqPrcgElmntType.conditionToBaseQtyNmrtr, to: IntegerValue.of(optional: value))
        }
    }

    open var conditionType: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoReqPrcgElmntType.conditionType))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqPrcgElmntType.conditionType, to: StringValue.of(optional: value))
        }
    }

    open func copy() -> ACreditMemoReqPrcgElmntType {
        return CastRequired<ACreditMemoReqPrcgElmntType>.from(self.copyEntity())
    }

    open var creditMemoRequest: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoReqPrcgElmntType.creditMemoRequest))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqPrcgElmntType.creditMemoRequest, to: StringValue.of(optional: value))
        }
    }

    open var cumulatedConditionBasisValue: BigDecimal? {
        get {
            return DecimalValue.optional(self.optionalValue(for: ACreditMemoReqPrcgElmntType.cumulatedConditionBasisValue))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqPrcgElmntType.cumulatedConditionBasisValue, to: DecimalValue.of(optional: value))
        }
    }

    open var factorForConditionBasisValue: Double? {
        get {
            return DoubleValue.optional(self.optionalValue(for: ACreditMemoReqPrcgElmntType.factorForConditionBasisValue))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqPrcgElmntType.factorForConditionBasisValue, to: DoubleValue.of(optional: value))
        }
    }

    open var isGroupCondition: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoReqPrcgElmntType.isGroupCondition))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqPrcgElmntType.isGroupCondition, to: StringValue.of(optional: value))
        }
    }

    open override var isProxy: Bool {
        return true
    }

    open var isRelevantForAccrual: Bool? {
        get {
            return BooleanValue.optional(self.optionalValue(for: ACreditMemoReqPrcgElmntType.isRelevantForAccrual))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqPrcgElmntType.isRelevantForAccrual, to: BooleanValue.of(optional: value))
        }
    }

    open class func key(creditMemoRequest: String?, pricingProcedureStep: String?, pricingProcedureCounter: String?) -> EntityKey {
        return EntityKey().with(name: "CreditMemoRequest", value: StringValue.of(optional: creditMemoRequest)).with(name: "PricingProcedureStep", value: StringValue.of(optional: pricingProcedureStep)).with(name: "PricingProcedureCounter", value: StringValue.of(optional: pricingProcedureCounter))
    }

    open var old: ACreditMemoReqPrcgElmntType {
        return CastRequired<ACreditMemoReqPrcgElmntType>.from(self.oldEntity)
    }

    open var periodFactorForCndnBasisValue: Double? {
        get {
            return DoubleValue.optional(self.optionalValue(for: ACreditMemoReqPrcgElmntType.periodFactorForCndnBasisValue))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqPrcgElmntType.periodFactorForCndnBasisValue, to: DoubleValue.of(optional: value))
        }
    }

    open var prcgProcedureCounterForHeader: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoReqPrcgElmntType.prcgProcedureCounterForHeader))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqPrcgElmntType.prcgProcedureCounterForHeader, to: StringValue.of(optional: value))
        }
    }

    open var pricingDateTime: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoReqPrcgElmntType.pricingDateTime))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqPrcgElmntType.pricingDateTime, to: StringValue.of(optional: value))
        }
    }

    open var pricingProcedureCounter: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoReqPrcgElmntType.pricingProcedureCounter))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqPrcgElmntType.pricingProcedureCounter, to: StringValue.of(optional: value))
        }
    }

    open var pricingProcedureStep: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoReqPrcgElmntType.pricingProcedureStep))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqPrcgElmntType.pricingProcedureStep, to: StringValue.of(optional: value))
        }
    }

    open var pricingScaleBasis: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoReqPrcgElmntType.pricingScaleBasis))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqPrcgElmntType.pricingScaleBasis, to: StringValue.of(optional: value))
        }
    }

    open var pricingScaleType: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoReqPrcgElmntType.pricingScaleType))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqPrcgElmntType.pricingScaleType, to: StringValue.of(optional: value))
        }
    }

    open var structureCondition: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoReqPrcgElmntType.structureCondition))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqPrcgElmntType.structureCondition, to: StringValue.of(optional: value))
        }
    }

    open var taxCode: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoReqPrcgElmntType.taxCode))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqPrcgElmntType.taxCode, to: StringValue.of(optional: value))
        }
    }

    open var toCreditMemoRequest: ACreditMemoRequestType? {
        get {
            return CastOptional<ACreditMemoRequestType>.from(self.optionalValue(for: ACreditMemoReqPrcgElmntType.toCreditMemoRequest))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqPrcgElmntType.toCreditMemoRequest, to: value)
        }
    }

    open var transactionCurrency: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoReqPrcgElmntType.transactionCurrency))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqPrcgElmntType.transactionCurrency, to: StringValue.of(optional: value))
        }
    }

    open var variantCondition: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoReqPrcgElmntType.variantCondition))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqPrcgElmntType.variantCondition, to: StringValue.of(optional: value))
        }
    }

    open var withholdingTaxCode: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ACreditMemoReqPrcgElmntType.withholdingTaxCode))
        }
        set(value) {
            self.setOptionalValue(for: ACreditMemoReqPrcgElmntType.withholdingTaxCode, to: StringValue.of(optional: value))
        }
    }
}
