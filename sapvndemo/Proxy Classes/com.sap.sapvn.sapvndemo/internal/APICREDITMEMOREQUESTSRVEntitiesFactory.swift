// # Proxy Compiler 17.12.1-7fb011-20180122

import Foundation
import SAPOData

internal class APICREDITMEMOREQUESTSRVEntitiesFactory {
    static func registerAll() throws {
        APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPartnerType.registerFactory(ObjectFactory.with(create: { ACreditMemoReqItemPartnerType(withDefaults: false) }, createWithDecoder: { d in try ACreditMemoReqItemPartnerType(from: d) }))
        APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqItemPrcgElmntType.registerFactory(ObjectFactory.with(create: { ACreditMemoReqItemPrcgElmntType(withDefaults: false) }, createWithDecoder: { d in try ACreditMemoReqItemPrcgElmntType(from: d) }))
        APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPartnerType.registerFactory(ObjectFactory.with(create: { ACreditMemoReqPartnerType(withDefaults: false) }, createWithDecoder: { d in try ACreditMemoReqPartnerType(from: d) }))
        APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoReqPrcgElmntType.registerFactory(ObjectFactory.with(create: { ACreditMemoReqPrcgElmntType(withDefaults: false) }, createWithDecoder: { d in try ACreditMemoReqPrcgElmntType(from: d) }))
        APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestItemType.registerFactory(ObjectFactory.with(create: { ACreditMemoRequestItemType(withDefaults: false) }, createWithDecoder: { d in try ACreditMemoRequestItemType(from: d) }))
        APICREDITMEMOREQUESTSRVEntitiesMetadata.EntityTypes.aCreditMemoRequestType.registerFactory(ObjectFactory.with(create: { ACreditMemoRequestType(withDefaults: false) }, createWithDecoder: { d in try ACreditMemoRequestType(from: d) }))
        APICREDITMEMOREQUESTSRVEntitiesStaticResolver.resolve()
    }
}
