// # Proxy Compiler 17.12.1-7fb011-20180122

import Foundation
import SAPOData

internal class APICREDITMEMOREQUESTSRVEntitiesMetadataChanges: ObjectBase {
    override init() {
    }

    class func merge(metadata: CSDLDocument) {
        metadata.hasGeneratedProxies = true
        APICREDITMEMOREQUESTSRVEntitiesMetadata.document = metadata
        APICREDITMEMOREQUESTSRVEntitiesMetadataChanges.merge1(metadata: metadata)
        try! APICREDITMEMOREQUESTSRVEntitiesFactory.registerAll()
    }

    private class func merge1(metadata: CSDLDocument) {
        Ignore.valueOf_any(metadata)
        if !APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPartnerType.isRemoved {
            APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPartnerType = metadata.entityType(withName: "API_CREDIT_MEMO_REQUEST_SRV.A_CreditMemoReqItemPartnerType")
        }
        if !APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.isRemoved {
            APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType = metadata.entityType(withName: "API_CREDIT_MEMO_REQUEST_SRV.A_CreditMemoReqItemPrcgElmntType")
        }
        if !APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPartnerType.isRemoved {
            APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPartnerType = metadata.entityType(withName: "API_CREDIT_MEMO_REQUEST_SRV.A_CreditMemoReqPartnerType")
        }
        if !APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.isRemoved {
            APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType = metadata.entityType(withName: "API_CREDIT_MEMO_REQUEST_SRV.A_CreditMemoReqPrcgElmntType")
        }
        if !APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestItemType.isRemoved {
            APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestItemType = metadata.entityType(withName: "API_CREDIT_MEMO_REQUEST_SRV.A_CreditMemoRequestItemType")
        }
        if !APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestType.isRemoved {
            APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestType = metadata.entityType(withName: "API_CREDIT_MEMO_REQUEST_SRV.A_CreditMemoRequestType")
        }
        if !APICREDITMEMOREQUESTSRVEntitiesMetadata.EntitySets.aCreditMemoReqItemPartner.isRemoved {
            APICREDITMEMOREQUESTSRVEntitiesMetadata.EntitySets.aCreditMemoReqItemPartner = metadata.entitySet(withName: "A_CreditMemoReqItemPartner")
        }
        if !APICREDITMEMOREQUESTSRVEntitiesMetadata.EntitySets.aCreditMemoReqItemPrcgElmnt.isRemoved {
            APICREDITMEMOREQUESTSRVEntitiesMetadata.EntitySets.aCreditMemoReqItemPrcgElmnt = metadata.entitySet(withName: "A_CreditMemoReqItemPrcgElmnt")
        }
        if !APICREDITMEMOREQUESTSRVEntitiesMetadata.EntitySets.aCreditMemoReqPartner.isRemoved {
            APICREDITMEMOREQUESTSRVEntitiesMetadata.EntitySets.aCreditMemoReqPartner = metadata.entitySet(withName: "A_CreditMemoReqPartner")
        }
        if !APICREDITMEMOREQUESTSRVEntitiesMetadata.EntitySets.aCreditMemoReqPrcgElmnt.isRemoved {
            APICREDITMEMOREQUESTSRVEntitiesMetadata.EntitySets.aCreditMemoReqPrcgElmnt = metadata.entitySet(withName: "A_CreditMemoReqPrcgElmnt")
        }
        if !APICREDITMEMOREQUESTSRVEntitiesMetadata.EntitySets.aCreditMemoRequest.isRemoved {
            APICREDITMEMOREQUESTSRVEntitiesMetadata.EntitySets.aCreditMemoRequest = metadata.entitySet(withName: "A_CreditMemoRequest")
        }
        if !APICREDITMEMOREQUESTSRVEntitiesMetadata.EntitySets.aCreditMemoRequestItem.isRemoved {
            APICREDITMEMOREQUESTSRVEntitiesMetadata.EntitySets.aCreditMemoRequestItem = metadata.entitySet(withName: "A_CreditMemoRequestItem")
        }
        if !ACreditMemoReqItemPartnerType.creditMemoRequest.isRemoved {
            ACreditMemoReqItemPartnerType.creditMemoRequest = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPartnerType.property(withName: "CreditMemoRequest")
        }
        if !ACreditMemoReqItemPartnerType.creditMemoRequestItem.isRemoved {
            ACreditMemoReqItemPartnerType.creditMemoRequestItem = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPartnerType.property(withName: "CreditMemoRequestItem")
        }
        if !ACreditMemoReqItemPartnerType.partnerFunction.isRemoved {
            ACreditMemoReqItemPartnerType.partnerFunction = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPartnerType.property(withName: "PartnerFunction")
        }
        if !ACreditMemoReqItemPartnerType.customer.isRemoved {
            ACreditMemoReqItemPartnerType.customer = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPartnerType.property(withName: "Customer")
        }
        if !ACreditMemoReqItemPartnerType.supplier.isRemoved {
            ACreditMemoReqItemPartnerType.supplier = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPartnerType.property(withName: "Supplier")
        }
        if !ACreditMemoReqItemPartnerType.personnel.isRemoved {
            ACreditMemoReqItemPartnerType.personnel = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPartnerType.property(withName: "Personnel")
        }
        if !ACreditMemoReqItemPartnerType.contactPerson.isRemoved {
            ACreditMemoReqItemPartnerType.contactPerson = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPartnerType.property(withName: "ContactPerson")
        }
        if !ACreditMemoReqItemPartnerType.toCreditMemoRequest.isRemoved {
            ACreditMemoReqItemPartnerType.toCreditMemoRequest = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPartnerType.property(withName: "to_CreditMemoRequest")
        }
        if !ACreditMemoReqItemPartnerType.toCreditMemoRequestItem.isRemoved {
            ACreditMemoReqItemPartnerType.toCreditMemoRequestItem = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPartnerType.property(withName: "to_CreditMemoRequestItem")
        }
        if !ACreditMemoReqItemPrcgElmntType.creditMemoRequest.isRemoved {
            ACreditMemoReqItemPrcgElmntType.creditMemoRequest = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "CreditMemoRequest")
        }
        if !ACreditMemoReqItemPrcgElmntType.creditMemoRequestItem.isRemoved {
            ACreditMemoReqItemPrcgElmntType.creditMemoRequestItem = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "CreditMemoRequestItem")
        }
        if !ACreditMemoReqItemPrcgElmntType.pricingProcedureStep.isRemoved {
            ACreditMemoReqItemPrcgElmntType.pricingProcedureStep = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "PricingProcedureStep")
        }
        if !ACreditMemoReqItemPrcgElmntType.pricingProcedureCounter.isRemoved {
            ACreditMemoReqItemPrcgElmntType.pricingProcedureCounter = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "PricingProcedureCounter")
        }
        if !ACreditMemoReqItemPrcgElmntType.conditionApplication.isRemoved {
            ACreditMemoReqItemPrcgElmntType.conditionApplication = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "ConditionApplication")
        }
        if !ACreditMemoReqItemPrcgElmntType.conditionType.isRemoved {
            ACreditMemoReqItemPrcgElmntType.conditionType = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "ConditionType")
        }
        if !ACreditMemoReqItemPrcgElmntType.pricingDateTime.isRemoved {
            ACreditMemoReqItemPrcgElmntType.pricingDateTime = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "PricingDateTime")
        }
        if !ACreditMemoReqItemPrcgElmntType.conditionCalculationType.isRemoved {
            ACreditMemoReqItemPrcgElmntType.conditionCalculationType = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "ConditionCalculationType")
        }
        if !ACreditMemoReqItemPrcgElmntType.conditionBaseValue.isRemoved {
            ACreditMemoReqItemPrcgElmntType.conditionBaseValue = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "ConditionBaseValue")
        }
        if !ACreditMemoReqItemPrcgElmntType.conditionRateValue.isRemoved {
            ACreditMemoReqItemPrcgElmntType.conditionRateValue = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "ConditionRateValue")
        }
        if !ACreditMemoReqItemPrcgElmntType.conditionCurrency.isRemoved {
            ACreditMemoReqItemPrcgElmntType.conditionCurrency = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "ConditionCurrency")
        }
        if !ACreditMemoReqItemPrcgElmntType.conditionQuantity.isRemoved {
            ACreditMemoReqItemPrcgElmntType.conditionQuantity = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "ConditionQuantity")
        }
        if !ACreditMemoReqItemPrcgElmntType.conditionQuantityUnit.isRemoved {
            ACreditMemoReqItemPrcgElmntType.conditionQuantityUnit = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "ConditionQuantityUnit")
        }
        if !ACreditMemoReqItemPrcgElmntType.conditionToBaseQtyNmrtr.isRemoved {
            ACreditMemoReqItemPrcgElmntType.conditionToBaseQtyNmrtr = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "ConditionToBaseQtyNmrtr")
        }
        if !ACreditMemoReqItemPrcgElmntType.conditionToBaseQtyDnmntr.isRemoved {
            ACreditMemoReqItemPrcgElmntType.conditionToBaseQtyDnmntr = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "ConditionToBaseQtyDnmntr")
        }
        if !ACreditMemoReqItemPrcgElmntType.conditionCategory.isRemoved {
            ACreditMemoReqItemPrcgElmntType.conditionCategory = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "ConditionCategory")
        }
        if !ACreditMemoReqItemPrcgElmntType.conditionIsForStatistics.isRemoved {
            ACreditMemoReqItemPrcgElmntType.conditionIsForStatistics = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "ConditionIsForStatistics")
        }
        if !ACreditMemoReqItemPrcgElmntType.pricingScaleType.isRemoved {
            ACreditMemoReqItemPrcgElmntType.pricingScaleType = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "PricingScaleType")
        }
        if !ACreditMemoReqItemPrcgElmntType.isRelevantForAccrual.isRemoved {
            ACreditMemoReqItemPrcgElmntType.isRelevantForAccrual = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "IsRelevantForAccrual")
        }
        if !ACreditMemoReqItemPrcgElmntType.cndnIsRelevantForInvoiceList.isRemoved {
            ACreditMemoReqItemPrcgElmntType.cndnIsRelevantForInvoiceList = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "CndnIsRelevantForInvoiceList")
        }
        if !ACreditMemoReqItemPrcgElmntType.conditionOrigin.isRemoved {
            ACreditMemoReqItemPrcgElmntType.conditionOrigin = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "ConditionOrigin")
        }
        if !ACreditMemoReqItemPrcgElmntType.isGroupCondition.isRemoved {
            ACreditMemoReqItemPrcgElmntType.isGroupCondition = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "IsGroupCondition")
        }
        if !ACreditMemoReqItemPrcgElmntType.accessNumberOfAccessSequence.isRemoved {
            ACreditMemoReqItemPrcgElmntType.accessNumberOfAccessSequence = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "AccessNumberOfAccessSequence")
        }
        if !ACreditMemoReqItemPrcgElmntType.conditionRecord.isRemoved {
            ACreditMemoReqItemPrcgElmntType.conditionRecord = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "ConditionRecord")
        }
        if !ACreditMemoReqItemPrcgElmntType.conditionSequentialNumber.isRemoved {
            ACreditMemoReqItemPrcgElmntType.conditionSequentialNumber = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "ConditionSequentialNumber")
        }
        if !ACreditMemoReqItemPrcgElmntType.taxCode.isRemoved {
            ACreditMemoReqItemPrcgElmntType.taxCode = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "TaxCode")
        }
        if !ACreditMemoReqItemPrcgElmntType.withholdingTaxCode.isRemoved {
            ACreditMemoReqItemPrcgElmntType.withholdingTaxCode = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "WithholdingTaxCode")
        }
        if !ACreditMemoReqItemPrcgElmntType.cndnRoundingOffDiffAmount.isRemoved {
            ACreditMemoReqItemPrcgElmntType.cndnRoundingOffDiffAmount = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "CndnRoundingOffDiffAmount")
        }
        if !ACreditMemoReqItemPrcgElmntType.conditionAmount.isRemoved {
            ACreditMemoReqItemPrcgElmntType.conditionAmount = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "ConditionAmount")
        }
        if !ACreditMemoReqItemPrcgElmntType.transactionCurrency.isRemoved {
            ACreditMemoReqItemPrcgElmntType.transactionCurrency = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "TransactionCurrency")
        }
        if !ACreditMemoReqItemPrcgElmntType.conditionControl.isRemoved {
            ACreditMemoReqItemPrcgElmntType.conditionControl = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "ConditionControl")
        }
        if !ACreditMemoReqItemPrcgElmntType.conditionInactiveReason.isRemoved {
            ACreditMemoReqItemPrcgElmntType.conditionInactiveReason = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "ConditionInactiveReason")
        }
        if !ACreditMemoReqItemPrcgElmntType.conditionClass.isRemoved {
            ACreditMemoReqItemPrcgElmntType.conditionClass = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "ConditionClass")
        }
        if !ACreditMemoReqItemPrcgElmntType.prcgProcedureCounterForHeader.isRemoved {
            ACreditMemoReqItemPrcgElmntType.prcgProcedureCounterForHeader = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "PrcgProcedureCounterForHeader")
        }
        if !ACreditMemoReqItemPrcgElmntType.factorForConditionBasisValue.isRemoved {
            ACreditMemoReqItemPrcgElmntType.factorForConditionBasisValue = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "FactorForConditionBasisValue")
        }
        if !ACreditMemoReqItemPrcgElmntType.structureCondition.isRemoved {
            ACreditMemoReqItemPrcgElmntType.structureCondition = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "StructureCondition")
        }
        if !ACreditMemoReqItemPrcgElmntType.periodFactorForCndnBasisValue.isRemoved {
            ACreditMemoReqItemPrcgElmntType.periodFactorForCndnBasisValue = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "PeriodFactorForCndnBasisValue")
        }
        if !ACreditMemoReqItemPrcgElmntType.pricingScaleBasis.isRemoved {
            ACreditMemoReqItemPrcgElmntType.pricingScaleBasis = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "PricingScaleBasis")
        }
        if !ACreditMemoReqItemPrcgElmntType.conditionScaleBasisValue.isRemoved {
            ACreditMemoReqItemPrcgElmntType.conditionScaleBasisValue = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "ConditionScaleBasisValue")
        }
        if !ACreditMemoReqItemPrcgElmntType.conditionScaleBasisUnit.isRemoved {
            ACreditMemoReqItemPrcgElmntType.conditionScaleBasisUnit = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "ConditionScaleBasisUnit")
        }
        if !ACreditMemoReqItemPrcgElmntType.conditionScaleBasisCurrency.isRemoved {
            ACreditMemoReqItemPrcgElmntType.conditionScaleBasisCurrency = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "ConditionScaleBasisCurrency")
        }
        if !ACreditMemoReqItemPrcgElmntType.conditionAlternativeCurrency.isRemoved {
            ACreditMemoReqItemPrcgElmntType.conditionAlternativeCurrency = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "ConditionAlternativeCurrency")
        }
        if !ACreditMemoReqItemPrcgElmntType.conditionAmountInLocalCrcy.isRemoved {
            ACreditMemoReqItemPrcgElmntType.conditionAmountInLocalCrcy = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "ConditionAmountInLocalCrcy")
        }
        if !ACreditMemoReqItemPrcgElmntType.cndnIsRelevantForIntcoBilling.isRemoved {
            ACreditMemoReqItemPrcgElmntType.cndnIsRelevantForIntcoBilling = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "CndnIsRelevantForIntcoBilling")
        }
        if !ACreditMemoReqItemPrcgElmntType.conditionIsManuallyChanged.isRemoved {
            ACreditMemoReqItemPrcgElmntType.conditionIsManuallyChanged = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "ConditionIsManuallyChanged")
        }
        if !ACreditMemoReqItemPrcgElmntType.cumulatedConditionBasisValue.isRemoved {
            ACreditMemoReqItemPrcgElmntType.cumulatedConditionBasisValue = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "CumulatedConditionBasisValue")
        }
        if !ACreditMemoReqItemPrcgElmntType.conditionIsForConfiguration.isRemoved {
            ACreditMemoReqItemPrcgElmntType.conditionIsForConfiguration = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "ConditionIsForConfiguration")
        }
        if !ACreditMemoReqItemPrcgElmntType.variantCondition.isRemoved {
            ACreditMemoReqItemPrcgElmntType.variantCondition = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "VariantCondition")
        }
        if !ACreditMemoReqItemPrcgElmntType.toCreditMemoRequest.isRemoved {
            ACreditMemoReqItemPrcgElmntType.toCreditMemoRequest = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "to_CreditMemoRequest")
        }
        if !ACreditMemoReqItemPrcgElmntType.toCreditMemoRequestItem.isRemoved {
            ACreditMemoReqItemPrcgElmntType.toCreditMemoRequestItem = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.property(withName: "to_CreditMemoRequestItem")
        }
        if !ACreditMemoReqPartnerType.creditMemoRequest.isRemoved {
            ACreditMemoReqPartnerType.creditMemoRequest = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPartnerType.property(withName: "CreditMemoRequest")
        }
        if !ACreditMemoReqPartnerType.partnerFunction.isRemoved {
            ACreditMemoReqPartnerType.partnerFunction = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPartnerType.property(withName: "PartnerFunction")
        }
        if !ACreditMemoReqPartnerType.customer.isRemoved {
            ACreditMemoReqPartnerType.customer = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPartnerType.property(withName: "Customer")
        }
        if !ACreditMemoReqPartnerType.supplier.isRemoved {
            ACreditMemoReqPartnerType.supplier = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPartnerType.property(withName: "Supplier")
        }
        if !ACreditMemoReqPartnerType.personnel.isRemoved {
            ACreditMemoReqPartnerType.personnel = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPartnerType.property(withName: "Personnel")
        }
        if !ACreditMemoReqPartnerType.contactPerson.isRemoved {
            ACreditMemoReqPartnerType.contactPerson = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPartnerType.property(withName: "ContactPerson")
        }
        if !ACreditMemoReqPartnerType.toCreditMemoRequest.isRemoved {
            ACreditMemoReqPartnerType.toCreditMemoRequest = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPartnerType.property(withName: "to_CreditMemoRequest")
        }
        if !ACreditMemoReqPrcgElmntType.creditMemoRequest.isRemoved {
            ACreditMemoReqPrcgElmntType.creditMemoRequest = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "CreditMemoRequest")
        }
        if !ACreditMemoReqPrcgElmntType.pricingProcedureStep.isRemoved {
            ACreditMemoReqPrcgElmntType.pricingProcedureStep = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "PricingProcedureStep")
        }
        if !ACreditMemoReqPrcgElmntType.pricingProcedureCounter.isRemoved {
            ACreditMemoReqPrcgElmntType.pricingProcedureCounter = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "PricingProcedureCounter")
        }
        if !ACreditMemoReqPrcgElmntType.conditionApplication.isRemoved {
            ACreditMemoReqPrcgElmntType.conditionApplication = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "ConditionApplication")
        }
        if !ACreditMemoReqPrcgElmntType.conditionType.isRemoved {
            ACreditMemoReqPrcgElmntType.conditionType = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "ConditionType")
        }
        if !ACreditMemoReqPrcgElmntType.pricingDateTime.isRemoved {
            ACreditMemoReqPrcgElmntType.pricingDateTime = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "PricingDateTime")
        }
        if !ACreditMemoReqPrcgElmntType.conditionCalculationType.isRemoved {
            ACreditMemoReqPrcgElmntType.conditionCalculationType = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "ConditionCalculationType")
        }
        if !ACreditMemoReqPrcgElmntType.conditionBaseValue.isRemoved {
            ACreditMemoReqPrcgElmntType.conditionBaseValue = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "ConditionBaseValue")
        }
        if !ACreditMemoReqPrcgElmntType.conditionRateValue.isRemoved {
            ACreditMemoReqPrcgElmntType.conditionRateValue = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "ConditionRateValue")
        }
        if !ACreditMemoReqPrcgElmntType.conditionCurrency.isRemoved {
            ACreditMemoReqPrcgElmntType.conditionCurrency = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "ConditionCurrency")
        }
        if !ACreditMemoReqPrcgElmntType.conditionQuantity.isRemoved {
            ACreditMemoReqPrcgElmntType.conditionQuantity = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "ConditionQuantity")
        }
        if !ACreditMemoReqPrcgElmntType.conditionQuantityUnit.isRemoved {
            ACreditMemoReqPrcgElmntType.conditionQuantityUnit = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "ConditionQuantityUnit")
        }
        if !ACreditMemoReqPrcgElmntType.conditionToBaseQtyNmrtr.isRemoved {
            ACreditMemoReqPrcgElmntType.conditionToBaseQtyNmrtr = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "ConditionToBaseQtyNmrtr")
        }
        if !ACreditMemoReqPrcgElmntType.conditionToBaseQtyDnmntr.isRemoved {
            ACreditMemoReqPrcgElmntType.conditionToBaseQtyDnmntr = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "ConditionToBaseQtyDnmntr")
        }
        if !ACreditMemoReqPrcgElmntType.conditionCategory.isRemoved {
            ACreditMemoReqPrcgElmntType.conditionCategory = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "ConditionCategory")
        }
        if !ACreditMemoReqPrcgElmntType.conditionIsForStatistics.isRemoved {
            ACreditMemoReqPrcgElmntType.conditionIsForStatistics = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "ConditionIsForStatistics")
        }
        if !ACreditMemoReqPrcgElmntType.pricingScaleType.isRemoved {
            ACreditMemoReqPrcgElmntType.pricingScaleType = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "PricingScaleType")
        }
        if !ACreditMemoReqPrcgElmntType.isRelevantForAccrual.isRemoved {
            ACreditMemoReqPrcgElmntType.isRelevantForAccrual = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "IsRelevantForAccrual")
        }
        if !ACreditMemoReqPrcgElmntType.cndnIsRelevantForInvoiceList.isRemoved {
            ACreditMemoReqPrcgElmntType.cndnIsRelevantForInvoiceList = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "CndnIsRelevantForInvoiceList")
        }
        if !ACreditMemoReqPrcgElmntType.conditionOrigin.isRemoved {
            ACreditMemoReqPrcgElmntType.conditionOrigin = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "ConditionOrigin")
        }
        if !ACreditMemoReqPrcgElmntType.isGroupCondition.isRemoved {
            ACreditMemoReqPrcgElmntType.isGroupCondition = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "IsGroupCondition")
        }
        if !ACreditMemoReqPrcgElmntType.accessNumberOfAccessSequence.isRemoved {
            ACreditMemoReqPrcgElmntType.accessNumberOfAccessSequence = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "AccessNumberOfAccessSequence")
        }
        if !ACreditMemoReqPrcgElmntType.conditionRecord.isRemoved {
            ACreditMemoReqPrcgElmntType.conditionRecord = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "ConditionRecord")
        }
        if !ACreditMemoReqPrcgElmntType.conditionSequentialNumber.isRemoved {
            ACreditMemoReqPrcgElmntType.conditionSequentialNumber = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "ConditionSequentialNumber")
        }
        if !ACreditMemoReqPrcgElmntType.taxCode.isRemoved {
            ACreditMemoReqPrcgElmntType.taxCode = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "TaxCode")
        }
        if !ACreditMemoReqPrcgElmntType.withholdingTaxCode.isRemoved {
            ACreditMemoReqPrcgElmntType.withholdingTaxCode = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "WithholdingTaxCode")
        }
        if !ACreditMemoReqPrcgElmntType.cndnRoundingOffDiffAmount.isRemoved {
            ACreditMemoReqPrcgElmntType.cndnRoundingOffDiffAmount = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "CndnRoundingOffDiffAmount")
        }
        if !ACreditMemoReqPrcgElmntType.conditionAmount.isRemoved {
            ACreditMemoReqPrcgElmntType.conditionAmount = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "ConditionAmount")
        }
        if !ACreditMemoReqPrcgElmntType.transactionCurrency.isRemoved {
            ACreditMemoReqPrcgElmntType.transactionCurrency = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "TransactionCurrency")
        }
        if !ACreditMemoReqPrcgElmntType.conditionControl.isRemoved {
            ACreditMemoReqPrcgElmntType.conditionControl = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "ConditionControl")
        }
        if !ACreditMemoReqPrcgElmntType.conditionInactiveReason.isRemoved {
            ACreditMemoReqPrcgElmntType.conditionInactiveReason = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "ConditionInactiveReason")
        }
        if !ACreditMemoReqPrcgElmntType.conditionClass.isRemoved {
            ACreditMemoReqPrcgElmntType.conditionClass = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "ConditionClass")
        }
        if !ACreditMemoReqPrcgElmntType.prcgProcedureCounterForHeader.isRemoved {
            ACreditMemoReqPrcgElmntType.prcgProcedureCounterForHeader = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "PrcgProcedureCounterForHeader")
        }
        if !ACreditMemoReqPrcgElmntType.factorForConditionBasisValue.isRemoved {
            ACreditMemoReqPrcgElmntType.factorForConditionBasisValue = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "FactorForConditionBasisValue")
        }
        if !ACreditMemoReqPrcgElmntType.structureCondition.isRemoved {
            ACreditMemoReqPrcgElmntType.structureCondition = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "StructureCondition")
        }
        if !ACreditMemoReqPrcgElmntType.periodFactorForCndnBasisValue.isRemoved {
            ACreditMemoReqPrcgElmntType.periodFactorForCndnBasisValue = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "PeriodFactorForCndnBasisValue")
        }
        if !ACreditMemoReqPrcgElmntType.pricingScaleBasis.isRemoved {
            ACreditMemoReqPrcgElmntType.pricingScaleBasis = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "PricingScaleBasis")
        }
        if !ACreditMemoReqPrcgElmntType.conditionScaleBasisValue.isRemoved {
            ACreditMemoReqPrcgElmntType.conditionScaleBasisValue = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "ConditionScaleBasisValue")
        }
        if !ACreditMemoReqPrcgElmntType.conditionScaleBasisUnit.isRemoved {
            ACreditMemoReqPrcgElmntType.conditionScaleBasisUnit = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "ConditionScaleBasisUnit")
        }
        if !ACreditMemoReqPrcgElmntType.conditionScaleBasisCurrency.isRemoved {
            ACreditMemoReqPrcgElmntType.conditionScaleBasisCurrency = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "ConditionScaleBasisCurrency")
        }
        if !ACreditMemoReqPrcgElmntType.conditionAlternativeCurrency.isRemoved {
            ACreditMemoReqPrcgElmntType.conditionAlternativeCurrency = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "ConditionAlternativeCurrency")
        }
        if !ACreditMemoReqPrcgElmntType.conditionAmountInLocalCrcy.isRemoved {
            ACreditMemoReqPrcgElmntType.conditionAmountInLocalCrcy = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "ConditionAmountInLocalCrcy")
        }
        if !ACreditMemoReqPrcgElmntType.cndnIsRelevantForIntcoBilling.isRemoved {
            ACreditMemoReqPrcgElmntType.cndnIsRelevantForIntcoBilling = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "CndnIsRelevantForIntcoBilling")
        }
        if !ACreditMemoReqPrcgElmntType.conditionIsManuallyChanged.isRemoved {
            ACreditMemoReqPrcgElmntType.conditionIsManuallyChanged = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "ConditionIsManuallyChanged")
        }
        if !ACreditMemoReqPrcgElmntType.cumulatedConditionBasisValue.isRemoved {
            ACreditMemoReqPrcgElmntType.cumulatedConditionBasisValue = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "CumulatedConditionBasisValue")
        }
        if !ACreditMemoReqPrcgElmntType.conditionIsForConfiguration.isRemoved {
            ACreditMemoReqPrcgElmntType.conditionIsForConfiguration = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "ConditionIsForConfiguration")
        }
        if !ACreditMemoReqPrcgElmntType.variantCondition.isRemoved {
            ACreditMemoReqPrcgElmntType.variantCondition = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "VariantCondition")
        }
        if !ACreditMemoReqPrcgElmntType.toCreditMemoRequest.isRemoved {
            ACreditMemoReqPrcgElmntType.toCreditMemoRequest = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.property(withName: "to_CreditMemoRequest")
        }
        if !ACreditMemoRequestItemType.creditMemoRequest.isRemoved {
            ACreditMemoRequestItemType.creditMemoRequest = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestItemType.property(withName: "CreditMemoRequest")
        }
        if !ACreditMemoRequestItemType.creditMemoRequestItem.isRemoved {
            ACreditMemoRequestItemType.creditMemoRequestItem = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestItemType.property(withName: "CreditMemoRequestItem")
        }
        if !ACreditMemoRequestItemType.higherLevelItem.isRemoved {
            ACreditMemoRequestItemType.higherLevelItem = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestItemType.property(withName: "HigherLevelItem")
        }
        if !ACreditMemoRequestItemType.creditMemoRequestItemCategory.isRemoved {
            ACreditMemoRequestItemType.creditMemoRequestItemCategory = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestItemType.property(withName: "CreditMemoRequestItemCategory")
        }
        if !ACreditMemoRequestItemType.creditMemoRequestItemText.isRemoved {
            ACreditMemoRequestItemType.creditMemoRequestItemText = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestItemType.property(withName: "CreditMemoRequestItemText")
        }
        if !ACreditMemoRequestItemType.purchaseOrderByCustomer.isRemoved {
            ACreditMemoRequestItemType.purchaseOrderByCustomer = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestItemType.property(withName: "PurchaseOrderByCustomer")
        }
        if !ACreditMemoRequestItemType.material.isRemoved {
            ACreditMemoRequestItemType.material = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestItemType.property(withName: "Material")
        }
        if !ACreditMemoRequestItemType.materialByCustomer.isRemoved {
            ACreditMemoRequestItemType.materialByCustomer = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestItemType.property(withName: "MaterialByCustomer")
        }
        if !ACreditMemoRequestItemType.pricingDate.isRemoved {
            ACreditMemoRequestItemType.pricingDate = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestItemType.property(withName: "PricingDate")
        }
        if !ACreditMemoRequestItemType.requestedQuantity.isRemoved {
            ACreditMemoRequestItemType.requestedQuantity = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestItemType.property(withName: "RequestedQuantity")
        }
        if !ACreditMemoRequestItemType.requestedQuantityUnit.isRemoved {
            ACreditMemoRequestItemType.requestedQuantityUnit = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestItemType.property(withName: "RequestedQuantityUnit")
        }
        if !ACreditMemoRequestItemType.itemGrossWeight.isRemoved {
            ACreditMemoRequestItemType.itemGrossWeight = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestItemType.property(withName: "ItemGrossWeight")
        }
        if !ACreditMemoRequestItemType.itemNetWeight.isRemoved {
            ACreditMemoRequestItemType.itemNetWeight = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestItemType.property(withName: "ItemNetWeight")
        }
        if !ACreditMemoRequestItemType.itemWeightUnit.isRemoved {
            ACreditMemoRequestItemType.itemWeightUnit = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestItemType.property(withName: "ItemWeightUnit")
        }
        if !ACreditMemoRequestItemType.itemVolume.isRemoved {
            ACreditMemoRequestItemType.itemVolume = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestItemType.property(withName: "ItemVolume")
        }
        if !ACreditMemoRequestItemType.itemVolumeUnit.isRemoved {
            ACreditMemoRequestItemType.itemVolumeUnit = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestItemType.property(withName: "ItemVolumeUnit")
        }
        if !ACreditMemoRequestItemType.transactionCurrency.isRemoved {
            ACreditMemoRequestItemType.transactionCurrency = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestItemType.property(withName: "TransactionCurrency")
        }
        if !ACreditMemoRequestItemType.netAmount.isRemoved {
            ACreditMemoRequestItemType.netAmount = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestItemType.property(withName: "NetAmount")
        }
        if !ACreditMemoRequestItemType.materialGroup.isRemoved {
            ACreditMemoRequestItemType.materialGroup = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestItemType.property(withName: "MaterialGroup")
        }
        if !ACreditMemoRequestItemType.batch.isRemoved {
            ACreditMemoRequestItemType.batch = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestItemType.property(withName: "Batch")
        }
        if !ACreditMemoRequestItemType.incotermsClassification.isRemoved {
            ACreditMemoRequestItemType.incotermsClassification = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestItemType.property(withName: "IncotermsClassification")
        }
        if !ACreditMemoRequestItemType.incotermsTransferLocation.isRemoved {
            ACreditMemoRequestItemType.incotermsTransferLocation = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestItemType.property(withName: "IncotermsTransferLocation")
        }
        if !ACreditMemoRequestItemType.incotermsLocation1.isRemoved {
            ACreditMemoRequestItemType.incotermsLocation1 = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestItemType.property(withName: "IncotermsLocation1")
        }
        if !ACreditMemoRequestItemType.incotermsLocation2.isRemoved {
            ACreditMemoRequestItemType.incotermsLocation2 = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestItemType.property(withName: "IncotermsLocation2")
        }
        if !ACreditMemoRequestItemType.customerPaymentTerms.isRemoved {
            ACreditMemoRequestItemType.customerPaymentTerms = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestItemType.property(withName: "CustomerPaymentTerms")
        }
        if !ACreditMemoRequestItemType.itemBillingBlockReason.isRemoved {
            ACreditMemoRequestItemType.itemBillingBlockReason = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestItemType.property(withName: "ItemBillingBlockReason")
        }
        if !ACreditMemoRequestItemType.salesDocumentRjcnReason.isRemoved {
            ACreditMemoRequestItemType.salesDocumentRjcnReason = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestItemType.property(withName: "SalesDocumentRjcnReason")
        }
        if !ACreditMemoRequestItemType.sdProcessStatus.isRemoved {
            ACreditMemoRequestItemType.sdProcessStatus = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestItemType.property(withName: "SDProcessStatus")
        }
        if !ACreditMemoRequestItemType.orderRelatedBillingStatus.isRemoved {
            ACreditMemoRequestItemType.orderRelatedBillingStatus = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestItemType.property(withName: "OrderRelatedBillingStatus")
        }
        if !ACreditMemoRequestItemType.toCreditMemoRequest.isRemoved {
            ACreditMemoRequestItemType.toCreditMemoRequest = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestItemType.property(withName: "to_CreditMemoRequest")
        }
        if !ACreditMemoRequestItemType.toPartner.isRemoved {
            ACreditMemoRequestItemType.toPartner = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestItemType.property(withName: "to_Partner")
        }
        if !ACreditMemoRequestItemType.toPricingElement.isRemoved {
            ACreditMemoRequestItemType.toPricingElement = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestItemType.property(withName: "to_PricingElement")
        }
        if !ACreditMemoRequestType.creditMemoRequest.isRemoved {
            ACreditMemoRequestType.creditMemoRequest = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestType.property(withName: "CreditMemoRequest")
        }
        if !ACreditMemoRequestType.creditMemoRequestType.isRemoved {
            ACreditMemoRequestType.creditMemoRequestType = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestType.property(withName: "CreditMemoRequestType")
        }
        if !ACreditMemoRequestType.salesOrganization.isRemoved {
            ACreditMemoRequestType.salesOrganization = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestType.property(withName: "SalesOrganization")
        }
        if !ACreditMemoRequestType.distributionChannel.isRemoved {
            ACreditMemoRequestType.distributionChannel = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestType.property(withName: "DistributionChannel")
        }
        if !ACreditMemoRequestType.organizationDivision.isRemoved {
            ACreditMemoRequestType.organizationDivision = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestType.property(withName: "OrganizationDivision")
        }
        if !ACreditMemoRequestType.salesGroup.isRemoved {
            ACreditMemoRequestType.salesGroup = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestType.property(withName: "SalesGroup")
        }
        if !ACreditMemoRequestType.salesOffice.isRemoved {
            ACreditMemoRequestType.salesOffice = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestType.property(withName: "SalesOffice")
        }
        if !ACreditMemoRequestType.salesDistrict.isRemoved {
            ACreditMemoRequestType.salesDistrict = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestType.property(withName: "SalesDistrict")
        }
        if !ACreditMemoRequestType.soldToParty.isRemoved {
            ACreditMemoRequestType.soldToParty = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestType.property(withName: "SoldToParty")
        }
        if !ACreditMemoRequestType.creationDate.isRemoved {
            ACreditMemoRequestType.creationDate = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestType.property(withName: "CreationDate")
        }
        if !ACreditMemoRequestType.createdByUser.isRemoved {
            ACreditMemoRequestType.createdByUser = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestType.property(withName: "CreatedByUser")
        }
        if !ACreditMemoRequestType.lastChangeDate.isRemoved {
            ACreditMemoRequestType.lastChangeDate = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestType.property(withName: "LastChangeDate")
        }
        if !ACreditMemoRequestType.lastChangeDateTime.isRemoved {
            ACreditMemoRequestType.lastChangeDateTime = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestType.property(withName: "LastChangeDateTime")
        }
        if !ACreditMemoRequestType.purchaseOrderByCustomer.isRemoved {
            ACreditMemoRequestType.purchaseOrderByCustomer = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestType.property(withName: "PurchaseOrderByCustomer")
        }
        if !ACreditMemoRequestType.customerPurchaseOrderType.isRemoved {
            ACreditMemoRequestType.customerPurchaseOrderType = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestType.property(withName: "CustomerPurchaseOrderType")
        }
        if !ACreditMemoRequestType.customerPurchaseOrderDate.isRemoved {
            ACreditMemoRequestType.customerPurchaseOrderDate = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestType.property(withName: "CustomerPurchaseOrderDate")
        }
        if !ACreditMemoRequestType.creditMemoRequestDate.isRemoved {
            ACreditMemoRequestType.creditMemoRequestDate = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestType.property(withName: "CreditMemoRequestDate")
        }
        if !ACreditMemoRequestType.totalNetAmount.isRemoved {
            ACreditMemoRequestType.totalNetAmount = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestType.property(withName: "TotalNetAmount")
        }
        if !ACreditMemoRequestType.transactionCurrency.isRemoved {
            ACreditMemoRequestType.transactionCurrency = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestType.property(withName: "TransactionCurrency")
        }
        if !ACreditMemoRequestType.sdDocumentReason.isRemoved {
            ACreditMemoRequestType.sdDocumentReason = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestType.property(withName: "SDDocumentReason")
        }
        if !ACreditMemoRequestType.pricingDate.isRemoved {
            ACreditMemoRequestType.pricingDate = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestType.property(withName: "PricingDate")
        }
        if !ACreditMemoRequestType.headerBillingBlockReason.isRemoved {
            ACreditMemoRequestType.headerBillingBlockReason = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestType.property(withName: "HeaderBillingBlockReason")
        }
        if !ACreditMemoRequestType.incotermsClassification.isRemoved {
            ACreditMemoRequestType.incotermsClassification = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestType.property(withName: "IncotermsClassification")
        }
        if !ACreditMemoRequestType.incotermsTransferLocation.isRemoved {
            ACreditMemoRequestType.incotermsTransferLocation = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestType.property(withName: "IncotermsTransferLocation")
        }
        if !ACreditMemoRequestType.incotermsLocation1.isRemoved {
            ACreditMemoRequestType.incotermsLocation1 = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestType.property(withName: "IncotermsLocation1")
        }
        if !ACreditMemoRequestType.incotermsLocation2.isRemoved {
            ACreditMemoRequestType.incotermsLocation2 = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestType.property(withName: "IncotermsLocation2")
        }
        if !ACreditMemoRequestType.incotermsVersion.isRemoved {
            ACreditMemoRequestType.incotermsVersion = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestType.property(withName: "IncotermsVersion")
        }
        if !ACreditMemoRequestType.customerPaymentTerms.isRemoved {
            ACreditMemoRequestType.customerPaymentTerms = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestType.property(withName: "CustomerPaymentTerms")
        }
        if !ACreditMemoRequestType.paymentMethod.isRemoved {
            ACreditMemoRequestType.paymentMethod = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestType.property(withName: "PaymentMethod")
        }
        if !ACreditMemoRequestType.billingDocumentDate.isRemoved {
            ACreditMemoRequestType.billingDocumentDate = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestType.property(withName: "BillingDocumentDate")
        }
        if !ACreditMemoRequestType.servicesRenderedDate.isRemoved {
            ACreditMemoRequestType.servicesRenderedDate = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestType.property(withName: "ServicesRenderedDate")
        }
        if !ACreditMemoRequestType.overallSDProcessStatus.isRemoved {
            ACreditMemoRequestType.overallSDProcessStatus = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestType.property(withName: "OverallSDProcessStatus")
        }
        if !ACreditMemoRequestType.totalCreditCheckStatus.isRemoved {
            ACreditMemoRequestType.totalCreditCheckStatus = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestType.property(withName: "TotalCreditCheckStatus")
        }
        if !ACreditMemoRequestType.overallSDDocumentRejectionSts.isRemoved {
            ACreditMemoRequestType.overallSDDocumentRejectionSts = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestType.property(withName: "OverallSDDocumentRejectionSts")
        }
        if !ACreditMemoRequestType.overallOrdReltdBillgStatus.isRemoved {
            ACreditMemoRequestType.overallOrdReltdBillgStatus = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestType.property(withName: "OverallOrdReltdBillgStatus")
        }
        if !ACreditMemoRequestType.toItem.isRemoved {
            ACreditMemoRequestType.toItem = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestType.property(withName: "to_Item")
        }
        if !ACreditMemoRequestType.toPartner.isRemoved {
            ACreditMemoRequestType.toPartner = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestType.property(withName: "to_Partner")
        }
        if !ACreditMemoRequestType.toPricingElement.isRemoved {
            ACreditMemoRequestType.toPricingElement = APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestType.property(withName: "to_PricingElement")
        }
    }
}
