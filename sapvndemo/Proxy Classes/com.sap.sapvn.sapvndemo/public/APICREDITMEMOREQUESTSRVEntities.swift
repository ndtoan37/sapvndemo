// # Proxy Compiler 17.12.1-7fb011-20180122

import Foundation
import SAPOData

open class APICREDITMEMOREQUESTSRVEntities<Provider: DataServiceProvider>: DataService<Provider> {
    public override init(provider: Provider) {
        super.init(provider: provider)
        self.provider.metadata = APICREDITMEMOREQUESTSRVEntitiesMetadata.document
    }

    @available(swift, deprecated: 4.0, renamed: "fetchACreditMemoReqItemPartner")
    open func aCreditMemoReqItemPartner(query: DataQuery = DataQuery()) throws -> Array<ACreditMemoReqItemPartnerType> {
        return try self.fetchACreditMemoReqItemPartner(matching: query)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchACreditMemoReqItemPartner")
    open func aCreditMemoReqItemPartner(query: DataQuery = DataQuery(), completionHandler: @escaping (Array<ACreditMemoReqItemPartnerType>?, Error?) -> Void) {
        self.fetchACreditMemoReqItemPartner(matching: query, completionHandler: completionHandler)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchACreditMemoReqItemPrcgElmnt")
    open func aCreditMemoReqItemPrcgElmnt(query: DataQuery = DataQuery()) throws -> Array<ACreditMemoReqItemPrcgElmntType> {
        return try self.fetchACreditMemoReqItemPrcgElmnt(matching: query)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchACreditMemoReqItemPrcgElmnt")
    open func aCreditMemoReqItemPrcgElmnt(query: DataQuery = DataQuery(), completionHandler: @escaping (Array<ACreditMemoReqItemPrcgElmntType>?, Error?) -> Void) {
        self.fetchACreditMemoReqItemPrcgElmnt(matching: query, completionHandler: completionHandler)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchACreditMemoReqPartner")
    open func aCreditMemoReqPartner(query: DataQuery = DataQuery()) throws -> Array<ACreditMemoReqPartnerType> {
        return try self.fetchACreditMemoReqPartner(matching: query)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchACreditMemoReqPartner")
    open func aCreditMemoReqPartner(query: DataQuery = DataQuery(), completionHandler: @escaping (Array<ACreditMemoReqPartnerType>?, Error?) -> Void) {
        self.fetchACreditMemoReqPartner(matching: query, completionHandler: completionHandler)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchACreditMemoReqPrcgElmnt")
    open func aCreditMemoReqPrcgElmnt(query: DataQuery = DataQuery()) throws -> Array<ACreditMemoReqPrcgElmntType> {
        return try self.fetchACreditMemoReqPrcgElmnt(matching: query)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchACreditMemoReqPrcgElmnt")
    open func aCreditMemoReqPrcgElmnt(query: DataQuery = DataQuery(), completionHandler: @escaping (Array<ACreditMemoReqPrcgElmntType>?, Error?) -> Void) {
        self.fetchACreditMemoReqPrcgElmnt(matching: query, completionHandler: completionHandler)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchACreditMemoRequest")
    open func aCreditMemoRequest(query: DataQuery = DataQuery()) throws -> Array<ACreditMemoRequestType> {
        return try self.fetchACreditMemoRequest(matching: query)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchACreditMemoRequest")
    open func aCreditMemoRequest(query: DataQuery = DataQuery(), completionHandler: @escaping (Array<ACreditMemoRequestType>?, Error?) -> Void) {
        self.fetchACreditMemoRequest(matching: query, completionHandler: completionHandler)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchACreditMemoRequestItem")
    open func aCreditMemoRequestItem(query: DataQuery = DataQuery()) throws -> Array<ACreditMemoRequestItemType> {
        return try self.fetchACreditMemoRequestItem(matching: query)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchACreditMemoRequestItem")
    open func aCreditMemoRequestItem(query: DataQuery = DataQuery(), completionHandler: @escaping (Array<ACreditMemoRequestItemType>?, Error?) -> Void) {
        self.fetchACreditMemoRequestItem(matching: query, completionHandler: completionHandler)
    }

    open func fetchACreditMemoReqItemPartner(matching query: DataQuery = DataQuery()) throws -> Array<ACreditMemoReqItemPartnerType> {
        return try ACreditMemoReqItemPartnerType.array(from: self.executeQuery(query.fromDefault(APICREDITMEMOREQUESTSRVEntitiesMetadata.EntitySets.aCreditMemoReqItemPartner)).entityList())
    }

    open func fetchACreditMemoReqItemPartner(matching query: DataQuery = DataQuery(), completionHandler: @escaping (Array<ACreditMemoReqItemPartnerType>?, Error?) -> Void) {
        self.addBackgroundOperation {
            do {
                let result: Array<ACreditMemoReqItemPartnerType> = try self.fetchACreditMemoReqItemPartner(matching: query)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchACreditMemoReqItemPartnerType(matching query: DataQuery) throws -> ACreditMemoReqItemPartnerType {
        return try CastRequired<ACreditMemoReqItemPartnerType>.from(self.executeQuery(query.fromDefault(APICREDITMEMOREQUESTSRVEntitiesMetadata.EntitySets.aCreditMemoReqItemPartner)).requiredEntity())
    }

    open func fetchACreditMemoReqItemPartnerType(matching query: DataQuery, completionHandler: @escaping (ACreditMemoReqItemPartnerType?, Error?) -> Void) {
        self.addBackgroundOperation {
            do {
                let result: ACreditMemoReqItemPartnerType = try self.fetchACreditMemoReqItemPartnerType(matching: query)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchACreditMemoReqItemPrcgElmnt(matching query: DataQuery = DataQuery()) throws -> Array<ACreditMemoReqItemPrcgElmntType> {
        return try ACreditMemoReqItemPrcgElmntType.array(from: self.executeQuery(query.fromDefault(APICREDITMEMOREQUESTSRVEntitiesMetadata.EntitySets.aCreditMemoReqItemPrcgElmnt)).entityList())
    }

    open func fetchACreditMemoReqItemPrcgElmnt(matching query: DataQuery = DataQuery(), completionHandler: @escaping (Array<ACreditMemoReqItemPrcgElmntType>?, Error?) -> Void) {
        self.addBackgroundOperation {
            do {
                let result: Array<ACreditMemoReqItemPrcgElmntType> = try self.fetchACreditMemoReqItemPrcgElmnt(matching: query)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchACreditMemoReqItemPrcgElmntType(matching query: DataQuery) throws -> ACreditMemoReqItemPrcgElmntType {
        return try CastRequired<ACreditMemoReqItemPrcgElmntType>.from(self.executeQuery(query.fromDefault(APICREDITMEMOREQUESTSRVEntitiesMetadata.EntitySets.aCreditMemoReqItemPrcgElmnt)).requiredEntity())
    }

    open func fetchACreditMemoReqItemPrcgElmntType(matching query: DataQuery, completionHandler: @escaping (ACreditMemoReqItemPrcgElmntType?, Error?) -> Void) {
        self.addBackgroundOperation {
            do {
                let result: ACreditMemoReqItemPrcgElmntType = try self.fetchACreditMemoReqItemPrcgElmntType(matching: query)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchACreditMemoReqPartner(matching query: DataQuery = DataQuery()) throws -> Array<ACreditMemoReqPartnerType> {
        return try ACreditMemoReqPartnerType.array(from: self.executeQuery(query.fromDefault(APICREDITMEMOREQUESTSRVEntitiesMetadata.EntitySets.aCreditMemoReqPartner)).entityList())
    }

    open func fetchACreditMemoReqPartner(matching query: DataQuery = DataQuery(), completionHandler: @escaping (Array<ACreditMemoReqPartnerType>?, Error?) -> Void) {
        self.addBackgroundOperation {
            do {
                let result: Array<ACreditMemoReqPartnerType> = try self.fetchACreditMemoReqPartner(matching: query)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchACreditMemoReqPartnerType(matching query: DataQuery) throws -> ACreditMemoReqPartnerType {
        return try CastRequired<ACreditMemoReqPartnerType>.from(self.executeQuery(query.fromDefault(APICREDITMEMOREQUESTSRVEntitiesMetadata.EntitySets.aCreditMemoReqPartner)).requiredEntity())
    }

    open func fetchACreditMemoReqPartnerType(matching query: DataQuery, completionHandler: @escaping (ACreditMemoReqPartnerType?, Error?) -> Void) {
        self.addBackgroundOperation {
            do {
                let result: ACreditMemoReqPartnerType = try self.fetchACreditMemoReqPartnerType(matching: query)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchACreditMemoReqPrcgElmnt(matching query: DataQuery = DataQuery()) throws -> Array<ACreditMemoReqPrcgElmntType> {
        return try ACreditMemoReqPrcgElmntType.array(from: self.executeQuery(query.fromDefault(APICREDITMEMOREQUESTSRVEntitiesMetadata.EntitySets.aCreditMemoReqPrcgElmnt)).entityList())
    }

    open func fetchACreditMemoReqPrcgElmnt(matching query: DataQuery = DataQuery(), completionHandler: @escaping (Array<ACreditMemoReqPrcgElmntType>?, Error?) -> Void) {
        self.addBackgroundOperation {
            do {
                let result: Array<ACreditMemoReqPrcgElmntType> = try self.fetchACreditMemoReqPrcgElmnt(matching: query)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchACreditMemoReqPrcgElmntType(matching query: DataQuery) throws -> ACreditMemoReqPrcgElmntType {
        return try CastRequired<ACreditMemoReqPrcgElmntType>.from(self.executeQuery(query.fromDefault(APICREDITMEMOREQUESTSRVEntitiesMetadata.EntitySets.aCreditMemoReqPrcgElmnt)).requiredEntity())
    }

    open func fetchACreditMemoReqPrcgElmntType(matching query: DataQuery, completionHandler: @escaping (ACreditMemoReqPrcgElmntType?, Error?) -> Void) {
        self.addBackgroundOperation {
            do {
                let result: ACreditMemoReqPrcgElmntType = try self.fetchACreditMemoReqPrcgElmntType(matching: query)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchACreditMemoRequest(matching query: DataQuery = DataQuery()) throws -> Array<ACreditMemoRequestType> {
        return try ACreditMemoRequestType.array(from: self.executeQuery(query.fromDefault(APICREDITMEMOREQUESTSRVEntitiesMetadata.EntitySets.aCreditMemoRequest)).entityList())
    }

    open func fetchACreditMemoRequest(matching query: DataQuery = DataQuery(), completionHandler: @escaping (Array<ACreditMemoRequestType>?, Error?) -> Void) {
        self.addBackgroundOperation {
            do {
                let result: Array<ACreditMemoRequestType> = try self.fetchACreditMemoRequest(matching: query)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchACreditMemoRequestItem(matching query: DataQuery = DataQuery()) throws -> Array<ACreditMemoRequestItemType> {
        return try ACreditMemoRequestItemType.array(from: self.executeQuery(query.fromDefault(APICREDITMEMOREQUESTSRVEntitiesMetadata.EntitySets.aCreditMemoRequestItem)).entityList())
    }

    open func fetchACreditMemoRequestItem(matching query: DataQuery = DataQuery(), completionHandler: @escaping (Array<ACreditMemoRequestItemType>?, Error?) -> Void) {
        self.addBackgroundOperation {
            do {
                let result: Array<ACreditMemoRequestItemType> = try self.fetchACreditMemoRequestItem(matching: query)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchACreditMemoRequestItemType(matching query: DataQuery) throws -> ACreditMemoRequestItemType {
        return try CastRequired<ACreditMemoRequestItemType>.from(self.executeQuery(query.fromDefault(APICREDITMEMOREQUESTSRVEntitiesMetadata.EntitySets.aCreditMemoRequestItem)).requiredEntity())
    }

    open func fetchACreditMemoRequestItemType(matching query: DataQuery, completionHandler: @escaping (ACreditMemoRequestItemType?, Error?) -> Void) {
        self.addBackgroundOperation {
            do {
                let result: ACreditMemoRequestItemType = try self.fetchACreditMemoRequestItemType(matching: query)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchACreditMemoRequestType(matching query: DataQuery) throws -> ACreditMemoRequestType {
        return try CastRequired<ACreditMemoRequestType>.from(self.executeQuery(query.fromDefault(APICREDITMEMOREQUESTSRVEntitiesMetadata.EntitySets.aCreditMemoRequest)).requiredEntity())
    }

    open func fetchACreditMemoRequestType(matching query: DataQuery, completionHandler: @escaping (ACreditMemoRequestType?, Error?) -> Void) {
        self.addBackgroundOperation {
            do {
                let result: ACreditMemoRequestType = try self.fetchACreditMemoRequestType(matching: query)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open override func refreshMetadata() throws {
        objc_sync_enter(self)
        defer { objc_sync_exit(self) }
        do {
            try ProxyInternal.refreshMetadata(service: self, fetcher: nil, options: APICREDITMEMOREQUESTSRVEntitiesMetadataParser.options)
            APICREDITMEMOREQUESTSRVEntitiesMetadataChanges.merge(metadata: self.metadata)
        }
    }
}
