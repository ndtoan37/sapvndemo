// # Proxy Compiler 17.12.1-7fb011-20180122

import Foundation
import SAPOData

internal class APICREDITMEMOREQUESTSRVEntitiesMetadataParser {
    internal static let options: Int = (CSDLOption.processMixedVersions | CSDLOption.retainOriginalText | CSDLOption.ignoreUndefinedTerms)

    internal static let parsed: CSDLDocument = APICREDITMEMOREQUESTSRVEntitiesMetadataParser.parse()

    static func parse() -> CSDLDocument {
        let parser: CSDLParser = CSDLParser()
        parser.logWarnings = false
        parser.csdlOptions = APICREDITMEMOREQUESTSRVEntitiesMetadataParser.options
        let metadata: CSDLDocument = parser.parseInProxy(APICREDITMEMOREQUESTSRVEntitiesMetadataText.xml, url: "API_CREDIT_MEMO_REQUEST_SRV")
        metadata.proxyVersion = "17.12.1-7fb011-20180122"
        return metadata
    }
}
