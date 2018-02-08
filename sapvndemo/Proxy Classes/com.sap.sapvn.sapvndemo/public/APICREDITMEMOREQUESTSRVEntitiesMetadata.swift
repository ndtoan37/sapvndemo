// # Proxy Compiler 17.12.1-7fb011-20180122

import Foundation
import SAPOData

public class APICREDITMEMOREQUESTSRVEntitiesMetadata {
    public static var document: CSDLDocument = APICREDITMEMOREQUESTSRVEntitiesMetadata.resolve()

    private static func resolve() -> CSDLDocument {
        try! APICREDITMEMOREQUESTSRVEntitiesFactory.registerAll()
        APICREDITMEMOREQUESTSRVEntitiesMetadataParser.parsed.hasGeneratedProxies = true
        return APICREDITMEMOREQUESTSRVEntitiesMetadataParser.parsed
    }

    public class EntityTypes {
        public static var aCreditMemoReqItemPartnerType: EntityType = APICREDITMEMOREQUESTSRVEntitiesMetadataParser.parsed.entityType(withName: "API_CREDIT_MEMO_REQUEST_SRV.A_CreditMemoReqItemPartnerType")

        public static var aCreditMemoReqItemPrcgElmntType: EntityType = APICREDITMEMOREQUESTSRVEntitiesMetadataParser.parsed.entityType(withName: "API_CREDIT_MEMO_REQUEST_SRV.A_CreditMemoReqItemPrcgElmntType")

        public static var aCreditMemoReqPartnerType: EntityType = APICREDITMEMOREQUESTSRVEntitiesMetadataParser.parsed.entityType(withName: "API_CREDIT_MEMO_REQUEST_SRV.A_CreditMemoReqPartnerType")

        public static var aCreditMemoReqPrcgElmntType: EntityType = APICREDITMEMOREQUESTSRVEntitiesMetadataParser.parsed.entityType(withName: "API_CREDIT_MEMO_REQUEST_SRV.A_CreditMemoReqPrcgElmntType")

        public static var aCreditMemoRequestItemType: EntityType = APICREDITMEMOREQUESTSRVEntitiesMetadataParser.parsed.entityType(withName: "API_CREDIT_MEMO_REQUEST_SRV.A_CreditMemoRequestItemType")

        public static var aCreditMemoRequestType: EntityType = APICREDITMEMOREQUESTSRVEntitiesMetadataParser.parsed.entityType(withName: "API_CREDIT_MEMO_REQUEST_SRV.A_CreditMemoRequestType")
    }

    public class EntitySets {
        public static var aCreditMemoReqItemPartner: EntitySet = APICREDITMEMOREQUESTSRVEntitiesMetadataParser.parsed.entitySet(withName: "A_CreditMemoReqItemPartner")

        public static var aCreditMemoReqItemPrcgElmnt: EntitySet = APICREDITMEMOREQUESTSRVEntitiesMetadataParser.parsed.entitySet(withName: "A_CreditMemoReqItemPrcgElmnt")

        public static var aCreditMemoReqPartner: EntitySet = APICREDITMEMOREQUESTSRVEntitiesMetadataParser.parsed.entitySet(withName: "A_CreditMemoReqPartner")

        public static var aCreditMemoReqPrcgElmnt: EntitySet = APICREDITMEMOREQUESTSRVEntitiesMetadataParser.parsed.entitySet(withName: "A_CreditMemoReqPrcgElmnt")

        public static var aCreditMemoRequest: EntitySet = APICREDITMEMOREQUESTSRVEntitiesMetadataParser.parsed.entitySet(withName: "A_CreditMemoRequest")

        public static var aCreditMemoRequestItem: EntitySet = APICREDITMEMOREQUESTSRVEntitiesMetadataParser.parsed.entitySet(withName: "A_CreditMemoRequestItem")
    }
}
