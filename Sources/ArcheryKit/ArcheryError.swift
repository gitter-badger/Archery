public enum ArcheryError: Error, CustomStringConvertible {
    case undefinedScript(String)
    case couldNotPrepareMetadata
    case invalidContentsOfArcherfile
    case invalidScriptDefinition(Any)
    case noArcherfileFound

    public var description: String {
        switch self {
        case .invalidContentsOfArcherfile:
            return "Invalid contents of Archerfile"
        case let .undefinedScript(name):
            return "No script named \(name)"
        case .couldNotPrepareMetadata:
            return "Could not prepare metadata"
        case let .invalidScriptDefinition(definition):
            return "Invalid script defintion \(definition)"
        case .noArcherfileFound:
            return "No Archerfile found"
        }
    }
}
