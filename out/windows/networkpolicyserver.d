module windows.networkpolicyserver;

public import windows.automation;
public import windows.com;

extern(Windows):

const GUID CLSID_SdoMachine = {0xE9218AE7, 0x9E91, 0x11D1, [0xBF, 0x60, 0x00, 0x80, 0xC7, 0x84, 0x6B, 0xC0]};
@GUID(0xE9218AE7, 0x9E91, 0x11D1, [0xBF, 0x60, 0x00, 0x80, 0xC7, 0x84, 0x6B, 0xC0]);
struct SdoMachine;

enum ATTRIBUTEID
{
    ATTRIBUTE_UNDEFINED = 0,
    ATTRIBUTE_MIN_VALUE = 1,
    RADIUS_ATTRIBUTE_USER_NAME = 1,
    RADIUS_ATTRIBUTE_USER_PASSWORD = 2,
    RADIUS_ATTRIBUTE_CHAP_PASSWORD = 3,
    RADIUS_ATTRIBUTE_NAS_IP_ADDRESS = 4,
    RADIUS_ATTRIBUTE_NAS_PORT = 5,
    RADIUS_ATTRIBUTE_SERVICE_TYPE = 6,
    RADIUS_ATTRIBUTE_FRAMED_PROTOCOL = 7,
    RADIUS_ATTRIBUTE_FRAMED_IP_ADDRESS = 8,
    RADIUS_ATTRIBUTE_FRAMED_IP_NETMASK = 9,
    RADIUS_ATTRIBUTE_FRAMED_ROUTING = 10,
    RADIUS_ATTRIBUTE_FILTER_ID = 11,
    RADIUS_ATTRIBUTE_FRAMED_MTU = 12,
    RADIUS_ATTRIBUTE_FRAMED_COMPRESSION = 13,
    RADIUS_ATTRIBUTE_LOGIN_IP_HOST = 14,
    RADIUS_ATTRIBUTE_LOGIN_SERVICE = 15,
    RADIUS_ATTRIBUTE_LOGIN_TCP_PORT = 16,
    RADIUS_ATTRIBUTE_UNASSIGNED1 = 17,
    RADIUS_ATTRIBUTE_REPLY_MESSAGE = 18,
    RADIUS_ATTRIBUTE_CALLBACK_NUMBER = 19,
    RADIUS_ATTRIBUTE_CALLBACK_ID = 20,
    RADIUS_ATTRIBUTE_UNASSIGNED2 = 21,
    RADIUS_ATTRIBUTE_FRAMED_ROUTE = 22,
    RADIUS_ATTRIBUTE_FRAMED_IPX_NETWORK = 23,
    RADIUS_ATTRIBUTE_STATE = 24,
    RADIUS_ATTRIBUTE_CLASS = 25,
    RADIUS_ATTRIBUTE_VENDOR_SPECIFIC = 26,
    RADIUS_ATTRIBUTE_SESSION_TIMEOUT = 27,
    RADIUS_ATTRIBUTE_IDLE_TIMEOUT = 28,
    RADIUS_ATTRIBUTE_TERMINATION_ACTION = 29,
    RADIUS_ATTRIBUTE_CALLED_STATION_ID = 30,
    RADIUS_ATTRIBUTE_CALLING_STATION_ID = 31,
    RADIUS_ATTRIBUTE_NAS_IDENTIFIER = 32,
    RADIUS_ATTRIBUTE_PROXY_STATE = 33,
    RADIUS_ATTRIBUTE_LOGIN_LAT_SERVICE = 34,
    RADIUS_ATTRIBUTE_LOGIN_LAT_NODE = 35,
    RADIUS_ATTRIBUTE_LOGIN_LAT_GROUP = 36,
    RADIUS_ATTRIBUTE_FRAMED_APPLETALK_LINK = 37,
    RADIUS_ATTRIBUTE_FRAMED_APPLETALK_NET = 38,
    RADIUS_ATTRIBUTE_FRAMED_APPLETALK_ZONE = 39,
    RADIUS_ATTRIBUTE_ACCT_STATUS_TYPE = 40,
    RADIUS_ATTRIBUTE_ACCT_DELAY_TIME = 41,
    RADIUS_ATTRIBUTE_ACCT_INPUT_OCTETS = 42,
    RADIUS_ATTRIBUTE_ACCT_OUTPUT_OCTETS = 43,
    RADIUS_ATTRIBUTE_ACCT_SESSION_ID = 44,
    RADIUS_ATTRIBUTE_ACCT_AUTHENTIC = 45,
    RADIUS_ATTRIBUTE_ACCT_SESSION_TIME = 46,
    RADIUS_ATTRIBUTE_ACCT_INPUT_PACKETS = 47,
    RADIUS_ATTRIBUTE_ACCT_OUTPUT_PACKETS = 48,
    RADIUS_ATTRIBUTE_ACCT_TERMINATE_CAUSE = 49,
    RADIUS_ATTRIBUTE_ACCT_MULTI_SSN_ID = 50,
    RADIUS_ATTRIBUTE_ACCT_LINK_COUNT = 51,
    RADIUS_ATTRIBUTE_CHAP_CHALLENGE = 60,
    RADIUS_ATTRIBUTE_NAS_PORT_TYPE = 61,
    RADIUS_ATTRIBUTE_PORT_LIMIT = 62,
    RADIUS_ATTRIBUTE_LOGIN_LAT_PORT = 63,
    RADIUS_ATTRIBUTE_TUNNEL_TYPE = 64,
    RADIUS_ATTRIBUTE_TUNNEL_MEDIUM_TYPE = 65,
    RADIUS_ATTRIBUTE_TUNNEL_CLIENT_ENDPT = 66,
    RADIUS_ATTRIBUTE_TUNNEL_SERVER_ENDPT = 67,
    RADIUS_ATTRIBUTE_ACCT_TUNNEL_CONN = 68,
    RADIUS_ATTRIBUTE_TUNNEL_PASSWORD = 69,
    RADIUS_ATTRIBUTE_ARAP_PASSWORD = 70,
    RADIUS_ATTRIBUTE_ARAP_FEATURES = 71,
    RADIUS_ATTRIBUTE_ARAP_ZONE_ACCESS = 72,
    RADIUS_ATTRIBUTE_ARAP_SECURITY = 73,
    RADIUS_ATTRIBUTE_ARAP_SECURITY_DATA = 74,
    RADIUS_ATTRIBUTE_PASSWORD_RETRY = 75,
    RADIUS_ATTRIBUTE_PROMPT = 76,
    RADIUS_ATTRIBUTE_CONNECT_INFO = 77,
    RADIUS_ATTRIBUTE_CONFIGURATION_TOKEN = 78,
    RADIUS_ATTRIBUTE_EAP_MESSAGE = 79,
    RADIUS_ATTRIBUTE_SIGNATURE = 80,
    RADIUS_ATTRIBUTE_TUNNEL_PVT_GROUP_ID = 81,
    RADIUS_ATTRIBUTE_TUNNEL_ASSIGNMENT_ID = 82,
    RADIUS_ATTRIBUTE_TUNNEL_PREFERENCE = 83,
    RADIUS_ATTRIBUTE_ARAP_CHALLENGE_RESPONSE = 84,
    RADIUS_ATTRIBUTE_ACCT_INTERIM_INTERVAL = 85,
    RADIUS_ATTRIBUTE_NAS_IPv6_ADDRESS = 95,
    RADIUS_ATTRIBUTE_FRAMED_INTERFACE_ID = 96,
    RADIUS_ATTRIBUTE_FRAMED_IPv6_PREFIX = 97,
    RADIUS_ATTRIBUTE_LOGIN_IPv6_HOST = 98,
    RADIUS_ATTRIBUTE_FRAMED_IPv6_ROUTE = 99,
    RADIUS_ATTRIBUTE_FRAMED_IPv6_POOL = 100,
    IAS_ATTRIBUTE_SAVED_RADIUS_FRAMED_IP_ADDRESS = 4096,
    IAS_ATTRIBUTE_SAVED_RADIUS_CALLBACK_NUMBER = 4097,
    IAS_ATTRIBUTE_NP_CALLING_STATION_ID = 4098,
    IAS_ATTRIBUTE_SAVED_NP_CALLING_STATION_ID = 4099,
    IAS_ATTRIBUTE_SAVED_RADIUS_FRAMED_ROUTE = 4100,
    IAS_ATTRIBUTE_IGNORE_USER_DIALIN_PROPERTIES = 4101,
    IAS_ATTRIBUTE_NP_TIME_OF_DAY = 4102,
    IAS_ATTRIBUTE_NP_CALLED_STATION_ID = 4103,
    IAS_ATTRIBUTE_NP_ALLOWED_PORT_TYPES = 4104,
    IAS_ATTRIBUTE_NP_AUTHENTICATION_TYPE = 4105,
    IAS_ATTRIBUTE_NP_ALLOWED_EAP_TYPE = 4106,
    IAS_ATTRIBUTE_SHARED_SECRET = 4107,
    IAS_ATTRIBUTE_CLIENT_IP_ADDRESS = 4108,
    IAS_ATTRIBUTE_CLIENT_PACKET_HEADER = 4109,
    IAS_ATTRIBUTE_TOKEN_GROUPS = 4110,
    IAS_ATTRIBUTE_ALLOW_DIALIN = 4111,
    IAS_ATTRIBUTE_REQUEST_ID = 4112,
    IAS_ATTRIBUTE_MANIPULATION_TARGET = 4113,
    IAS_ATTRIBUTE_MANIPULATION_RULE = 4114,
    IAS_ATTRIBUTE_ORIGINAL_USER_NAME = 4115,
    IAS_ATTRIBUTE_CLIENT_VENDOR_TYPE = 4116,
    IAS_ATTRIBUTE_CLIENT_UDP_PORT = 4117,
    MS_ATTRIBUTE_CHAP_CHALLENGE = 4118,
    MS_ATTRIBUTE_CHAP_RESPONSE = 4119,
    MS_ATTRIBUTE_CHAP_DOMAIN = 4120,
    MS_ATTRIBUTE_CHAP_ERROR = 4121,
    MS_ATTRIBUTE_CHAP_CPW1 = 4122,
    MS_ATTRIBUTE_CHAP_CPW2 = 4123,
    MS_ATTRIBUTE_CHAP_LM_ENC_PW = 4124,
    MS_ATTRIBUTE_CHAP_NT_ENC_PW = 4125,
    MS_ATTRIBUTE_CHAP_MPPE_KEYS = 4126,
    IAS_ATTRIBUTE_AUTHENTICATION_TYPE = 4127,
    IAS_ATTRIBUTE_CLIENT_NAME = 4128,
    IAS_ATTRIBUTE_NT4_ACCOUNT_NAME = 4129,
    IAS_ATTRIBUTE_FULLY_QUALIFIED_USER_NAME = 4130,
    IAS_ATTRIBUTE_NTGROUPS = 4131,
    IAS_ATTRIBUTE_EAP_FRIENDLY_NAME = 4132,
    IAS_ATTRIBUTE_AUTH_PROVIDER_TYPE = 4133,
    MS_ATTRIBUTE_ACCT_AUTH_TYPE = 4134,
    MS_ATTRIBUTE_ACCT_EAP_TYPE = 4135,
    IAS_ATTRIBUTE_PACKET_TYPE = 4136,
    IAS_ATTRIBUTE_AUTH_PROVIDER_NAME = 4137,
    IAS_ATTRIBUTE_ACCT_PROVIDER_TYPE = 4138,
    IAS_ATTRIBUTE_ACCT_PROVIDER_NAME = 4139,
    MS_ATTRIBUTE_MPPE_SEND_KEY = 4140,
    MS_ATTRIBUTE_MPPE_RECV_KEY = 4141,
    IAS_ATTRIBUTE_REASON_CODE = 4142,
    MS_ATTRIBUTE_FILTER = 4143,
    MS_ATTRIBUTE_CHAP2_RESPONSE = 4144,
    MS_ATTRIBUTE_CHAP2_SUCCESS = 4145,
    MS_ATTRIBUTE_CHAP2_CPW = 4146,
    MS_ATTRIBUTE_RAS_VENDOR = 4147,
    MS_ATTRIBUTE_RAS_VERSION = 4148,
    IAS_ATTRIBUTE_NP_NAME = 4149,
    MS_ATTRIBUTE_PRIMARY_DNS_SERVER = 4150,
    MS_ATTRIBUTE_SECONDARY_DNS_SERVER = 4151,
    MS_ATTRIBUTE_PRIMARY_NBNS_SERVER = 4152,
    MS_ATTRIBUTE_SECONDARY_NBNS_SERVER = 4153,
    IAS_ATTRIBUTE_PROXY_POLICY_NAME = 4154,
    IAS_ATTRIBUTE_PROVIDER_TYPE = 4155,
    IAS_ATTRIBUTE_PROVIDER_NAME = 4156,
    IAS_ATTRIBUTE_REMOTE_SERVER_ADDRESS = 4157,
    IAS_ATTRIBUTE_GENERATE_CLASS_ATTRIBUTE = 4158,
    MS_ATTRIBUTE_RAS_CLIENT_NAME = 4159,
    MS_ATTRIBUTE_RAS_CLIENT_VERSION = 4160,
    IAS_ATTRIBUTE_ALLOWED_CERTIFICATE_EKU = 4161,
    IAS_ATTRIBUTE_EXTENSION_STATE = 4162,
    IAS_ATTRIBUTE_GENERATE_SESSION_TIMEOUT = 4163,
    IAS_ATTRIBUTE_SESSION_TIMEOUT = 4164,
    MS_ATTRIBUTE_QUARANTINE_IPFILTER = 4165,
    MS_ATTRIBUTE_QUARANTINE_SESSION_TIMEOUT = 4166,
    MS_ATTRIBUTE_USER_SECURITY_IDENTITY = 4167,
    IAS_ATTRIBUTE_REMOTE_RADIUS_TO_WINDOWS_USER_MAPPING = 4168,
    IAS_ATTRIBUTE_PASSPORT_USER_MAPPING_UPN_SUFFIX = 4169,
    IAS_ATTRIBUTE_TUNNEL_TAG = 4170,
    IAS_ATTRIBUTE_NP_PEAPUPFRONT_ENABLED = 4171,
    IAS_ATTRIBUTE_CERTIFICATE_EKU = 8097,
    IAS_ATTRIBUTE_EAP_CONFIG = 8098,
    IAS_ATTRIBUTE_PEAP_EMBEDDED_EAP_TYPEID = 8099,
    IAS_ATTRIBUTE_PEAP_FAST_ROAMED_SESSION = 8100,
    IAS_ATTRIBUTE_EAP_TYPEID = 8101,
    MS_ATTRIBUTE_EAP_TLV = 8102,
    IAS_ATTRIBUTE_REJECT_REASON_CODE = 8103,
    IAS_ATTRIBUTE_PROXY_EAP_CONFIG = 8104,
    IAS_ATTRIBUTE_EAP_SESSION = 8105,
    IAS_ATTRIBUTE_IS_REPLAY = 8106,
    IAS_ATTRIBUTE_CLEAR_TEXT_PASSWORD = 8107,
    MS_ATTRIBUTE_IDENTITY_TYPE = 8108,
    MS_ATTRIBUTE_SERVICE_CLASS = 8109,
    MS_ATTRIBUTE_QUARANTINE_USER_CLASS = 8110,
    MS_ATTRIBUTE_QUARANTINE_STATE = 8111,
    IAS_ATTRIBUTE_OVERRIDE_RAP_AUTH = 8112,
    IAS_ATTRIBUTE_PEAP_CHANNEL_UP = 8113,
    IAS_ATTRIBUTE_NAME_MAPPED = 8114,
    IAS_ATTRIBUTE_POLICY_ENFORCED = 8115,
    IAS_ATTRIBUTE_MACHINE_NTGROUPS = 8116,
    IAS_ATTRIBUTE_USER_NTGROUPS = 8117,
    IAS_ATTRIBUTE_MACHINE_TOKEN_GROUPS = 8118,
    IAS_ATTRIBUTE_USER_TOKEN_GROUPS = 8119,
    MS_ATTRIBUTE_QUARANTINE_GRACE_TIME = 8120,
    IAS_ATTRIBUTE_QUARANTINE_URL = 8121,
    IAS_ATTRIBUTE_QUARANTINE_FIXUP_SERVERS = 8122,
    MS_ATTRIBUTE_NOT_QUARANTINE_CAPABLE = 8123,
    IAS_ATTRIBUTE_QUARANTINE_SYSTEM_HEALTH_RESULT = 8124,
    IAS_ATTRIBUTE_QUARANTINE_SYSTEM_HEALTH_VALIDATORS = 8125,
    IAS_ATTRIBUTE_MACHINE_NAME = 8126,
    IAS_ATTRIBUTE_NT4_MACHINE_NAME = 8127,
    IAS_ATTRIBUTE_QUARANTINE_SESSION_HANDLE = 8128,
    IAS_ATTRIBUTE_FULLY_QUALIFIED_MACHINE_NAME = 8129,
    IAS_ATTRIBUTE_QUARANTINE_FIXUP_SERVERS_CONFIGURATION = 8130,
    IAS_ATTRIBUTE_CLIENT_QUARANTINE_COMPATIBLE = 8131,
    MS_ATTRIBUTE_NETWORK_ACCESS_SERVER_TYPE = 8132,
    IAS_ATTRIBUTE_QUARANTINE_SESSION_ID = 8133,
    MS_ATTRIBUTE_AFW_QUARANTINE_ZONE = 8134,
    MS_ATTRIBUTE_AFW_PROTECTION_LEVEL = 8135,
    IAS_ATTRIBUTE_QUARANTINE_UPDATE_NON_COMPLIANT = 8136,
    IAS_ATTRIBUTE_REQUEST_START_TIME = 8137,
    MS_ATTRIBUTE_MACHINE_NAME = 8138,
    IAS_ATTRIBUTE_CLIENT_IPv6_ADDRESS = 8139,
    IAS_ATTRIBUTE_SAVED_RADIUS_FRAMED_INTERFACE_ID = 8140,
    IAS_ATTRIBUTE_SAVED_RADIUS_FRAMED_IPv6_PREFIX = 8141,
    IAS_ATTRIBUTE_SAVED_RADIUS_FRAMED_IPv6_ROUTE = 8142,
    MS_ATTRIBUTE_QUARANTINE_GRACE_TIME_CONFIGURATION = 8143,
    MS_ATTRIBUTE_IPv6_FILTER = 8144,
    MS_ATTRIBUTE_IPV4_REMEDIATION_SERVERS = 8145,
    MS_ATTRIBUTE_IPV6_REMEDIATION_SERVERS = 8146,
    IAS_ATTRIBUTE_PROXY_RETRY_COUNT = 8147,
    IAS_ATTRIBUTE_MACHINE_INVENTORY = 8148,
    IAS_ATTRIBUTE_ABSOLUTE_TIME = 8149,
    MS_ATTRIBUTE_QUARANTINE_SOH = 8150,
    IAS_ATTRIBUTE_EAP_TYPES_CONFIGURED_IN_PROXYPOLICY = 8151,
    MS_ATTRIBUTE_HCAP_LOCATION_GROUP_NAME = 8152,
    MS_ATTRIBUTE_EXTENDED_QUARANTINE_STATE = 8153,
    IAS_ATTRIBUTE_SOH_CARRIER_EAPTLV = 8154,
    MS_ATTRIBUTE_HCAP_USER_GROUPS = 8155,
    IAS_ATTRIBUTE_SAVED_MACHINE_HEALTHCHECK_ONLY = 8156,
    IAS_ATTRIBUTE_POLICY_EVALUATED_SHV = 8157,
    MS_ATTRIBUTE_RAS_CORRELATION_ID = 8158,
    MS_ATTRIBUTE_HCAP_USER_NAME = 8159,
    IAS_ATTRIBUTE_NT4_HCAP_ACCOUNT_NAME = 8160,
    IAS_ATTRIBUTE_USER_TOKEN_SID = 8161,
    IAS_ATTRIBUTE_MACHINE_TOKEN_SID = 8162,
    IAS_ATTRIBUTE_MACHINE_VALIDATED = 8163,
    MS_ATTRIBUTE_USER_IPv4_ADDRESS = 8164,
    MS_ATTRIBUTE_USER_IPv6_ADDRESS = 8165,
    MS_ATTRIBUTE_TSG_DEVICE_REDIRECTION = 8166,
    IAS_ATTRIBUTE_ACCEPT_REASON_CODE = 8167,
    IAS_ATTRIBUTE_LOGGING_RESULT = 8168,
    IAS_ATTRIBUTE_SERVER_IP_ADDRESS = 8169,
    IAS_ATTRIBUTE_SERVER_IPv6_ADDRESS = 8170,
    IAS_ATTRIBUTE_RADIUS_USERNAME_ENCODING_ASCII = 8171,
    MS_ATTRIBUTE_RAS_ROUTING_DOMAIN_ID = 8172,
    IAS_ATTRIBUTE_CERTIFICATE_THUMBPRINT = 8250,
    RAS_ATTRIBUTE_ENCRYPTION_TYPE = 4294967206,
    RAS_ATTRIBUTE_ENCRYPTION_POLICY = 4294967207,
    RAS_ATTRIBUTE_BAP_REQUIRED = 4294967208,
    RAS_ATTRIBUTE_BAP_LINE_DOWN_TIME = 4294967209,
    RAS_ATTRIBUTE_BAP_LINE_DOWN_LIMIT = 4294967210,
}

enum NEW_LOG_FILE_FREQUENCY
{
    IAS_LOGGING_UNLIMITED_SIZE = 0,
    IAS_LOGGING_DAILY = 1,
    IAS_LOGGING_WEEKLY = 2,
    IAS_LOGGING_MONTHLY = 3,
    IAS_LOGGING_WHEN_FILE_SIZE_REACHES = 4,
}

enum AUTHENTICATION_TYPE
{
    IAS_AUTH_INVALID = 0,
    IAS_AUTH_PAP = 1,
    IAS_AUTH_MD5CHAP = 2,
    IAS_AUTH_MSCHAP = 3,
    IAS_AUTH_MSCHAP2 = 4,
    IAS_AUTH_EAP = 5,
    IAS_AUTH_ARAP = 6,
    IAS_AUTH_NONE = 7,
    IAS_AUTH_CUSTOM = 8,
    IAS_AUTH_MSCHAP_CPW = 9,
    IAS_AUTH_MSCHAP2_CPW = 10,
    IAS_AUTH_PEAP = 11,
}

enum IDENTITY_TYPE
{
    IAS_IDENTITY_NO_DEFAULT = 1,
}

enum ATTRIBUTESYNTAX
{
    IAS_SYNTAX_BOOLEAN = 1,
    IAS_SYNTAX_INTEGER = 2,
    IAS_SYNTAX_ENUMERATOR = 3,
    IAS_SYNTAX_INETADDR = 4,
    IAS_SYNTAX_STRING = 5,
    IAS_SYNTAX_OCTETSTRING = 6,
    IAS_SYNTAX_UTCTIME = 7,
    IAS_SYNTAX_PROVIDERSPECIFIC = 8,
    IAS_SYNTAX_UNSIGNEDINTEGER = 9,
    IAS_SYNTAX_INETADDR6 = 10,
}

enum ATTRIBUTERESTRICTIONS
{
    MULTIVALUED = 1,
    ALLOWEDINPROFILE = 2,
    ALLOWEDINCONDITION = 4,
    ALLOWEDINPROXYPROFILE = 8,
    ALLOWEDINPROXYCONDITION = 16,
    ALLOWEDINVPNDIALUP = 32,
    ALLOWEDIN8021X = 64,
}

enum ATTRIBUTEFILTER
{
    ATTRIBUTE_FILTER_NONE = 0,
    ATTRIBUTE_FILTER_VPN_DIALUP = 1,
    ATTRIBUTE_FILTER_IEEE_802_1x = 2,
}

enum ATTRIBUTEINFO
{
    NAME = 1,
    SYNTAX = 2,
    RESTRICTIONS = 3,
    DESCRIPTION = 4,
    VENDORID = 5,
    LDAPNAME = 6,
    VENDORTYPE = 7,
}

enum IASCOMMONPROPERTIES
{
    PROPERTY_SDO_RESERVED = 0,
    PROPERTY_SDO_CLASS = 1,
    PROPERTY_SDO_NAME = 2,
    PROPERTY_SDO_DESCRIPTION = 3,
    PROPERTY_SDO_ID = 4,
    PROPERTY_SDO_DATASTORE_NAME = 5,
    PROPERTY_SDO_TEMPLATE_GUID = 6,
    PROPERTY_SDO_OPAQUE = 7,
    PROPERTY_SDO_START = 1024,
}

enum USERPROPERTIES
{
    PROPERTY_USER_CALLING_STATION_ID = 1024,
    PROPERTY_USER_SAVED_CALLING_STATION_ID = 1025,
    PROPERTY_USER_RADIUS_CALLBACK_NUMBER = 1026,
    PROPERTY_USER_RADIUS_FRAMED_ROUTE = 1027,
    PROPERTY_USER_RADIUS_FRAMED_IP_ADDRESS = 1028,
    PROPERTY_USER_SAVED_RADIUS_CALLBACK_NUMBER = 1029,
    PROPERTY_USER_SAVED_RADIUS_FRAMED_ROUTE = 1030,
    PROPERTY_USER_SAVED_RADIUS_FRAMED_IP_ADDRESS = 1031,
    PROPERTY_USER_ALLOW_DIALIN = 1032,
    PROPERTY_USER_SERVICE_TYPE = 1033,
    PROPERTY_USER_RADIUS_FRAMED_IPV6_ROUTE = 1034,
    PROPERTY_USER_SAVED_RADIUS_FRAMED_IPV6_ROUTE = 1035,
    PROPERTY_USER_RADIUS_FRAMED_INTERFACE_ID = 1036,
    PROPERTY_USER_SAVED_RADIUS_FRAMED_INTERFACE_ID = 1037,
    PROPERTY_USER_RADIUS_FRAMED_IPV6_PREFIX = 1038,
    PROPERTY_USER_SAVED_RADIUS_FRAMED_IPV6_PREFIX = 1039,
}

enum DICTIONARYPROPERTIES
{
    PROPERTY_DICTIONARY_ATTRIBUTES_COLLECTION = 1024,
    PROPERTY_DICTIONARY_LOCATION = 1025,
}

enum ATTRIBUTEPROPERTIES
{
    PROPERTY_ATTRIBUTE_ID = 1024,
    PROPERTY_ATTRIBUTE_VENDOR_ID = 1025,
    PROPERTY_ATTRIBUTE_VENDOR_TYPE_ID = 1026,
    PROPERTY_ATTRIBUTE_IS_ENUMERABLE = 1027,
    PROPERTY_ATTRIBUTE_ENUM_NAMES = 1028,
    PROPERTY_ATTRIBUTE_ENUM_VALUES = 1029,
    PROPERTY_ATTRIBUTE_SYNTAX = 1030,
    PROPERTY_ATTRIBUTE_ALLOW_MULTIPLE = 1031,
    PROPERTY_ATTRIBUTE_ALLOW_LOG_ORDINAL = 1032,
    PROPERTY_ATTRIBUTE_ALLOW_IN_PROFILE = 1033,
    PROPERTY_ATTRIBUTE_ALLOW_IN_CONDITION = 1034,
    PROPERTY_ATTRIBUTE_DISPLAY_NAME = 1035,
    PROPERTY_ATTRIBUTE_VALUE = 1036,
    PROPERTY_ATTRIBUTE_ALLOW_IN_PROXY_PROFILE = 1037,
    PROPERTY_ATTRIBUTE_ALLOW_IN_PROXY_CONDITION = 1038,
    PROPERTY_ATTRIBUTE_ALLOW_IN_VPNDIALUP = 1039,
    PROPERTY_ATTRIBUTE_ALLOW_IN_8021X = 1040,
    PROPERTY_ATTRIBUTE_ENUM_FILTERS = 1041,
}

enum IASPROPERTIES
{
    PROPERTY_IAS_RADIUSSERVERGROUPS_COLLECTION = 1024,
    PROPERTY_IAS_POLICIES_COLLECTION = 1025,
    PROPERTY_IAS_PROFILES_COLLECTION = 1026,
    PROPERTY_IAS_PROTOCOLS_COLLECTION = 1027,
    PROPERTY_IAS_AUDITORS_COLLECTION = 1028,
    PROPERTY_IAS_REQUESTHANDLERS_COLLECTION = 1029,
    PROPERTY_IAS_PROXYPOLICIES_COLLECTION = 1030,
    PROPERTY_IAS_PROXYPROFILES_COLLECTION = 1031,
    PROPERTY_IAS_REMEDIATIONSERVERGROUPS_COLLECTION = 1032,
    PROPERTY_IAS_SHVTEMPLATES_COLLECTION = 1033,
}

enum TEMPLATESPROPERTIES
{
    PROPERTY_TEMPLATES_POLICIES_TEMPLATES = 1024,
    PROPERTY_TEMPLATES_PROFILES_TEMPLATES = 1025,
    PROPERTY_TEMPLATES_PROFILES_COLLECTION = 1026,
    PROPERTY_TEMPLATES_PROXYPOLICIES_TEMPLATES = 1027,
    PROPERTY_TEMPLATES_PROXYPROFILES_TEMPLATES = 1028,
    PROPERTY_TEMPLATES_PROXYPROFILES_COLLECTION = 1029,
    PROPERTY_TEMPLATES_REMEDIATIONSERVERGROUPS_TEMPLATES = 1030,
    PROPERTY_TEMPLATES_SHVTEMPLATES_TEMPLATES = 1031,
    PROPERTY_TEMPLATES_CLIENTS_TEMPLATES = 1032,
    PROPERTY_TEMPLATES_RADIUSSERVERS_TEMPLATES = 1033,
    PROPERTY_TEMPLATES_SHAREDSECRETS_TEMPLATES = 1034,
    PROPERTY_TEMPLATES_IPFILTERS_TEMPLATES = 1035,
}

enum CLIENTPROPERTIES
{
    PROPERTY_CLIENT_REQUIRE_SIGNATURE = 1024,
    PROPERTY_CLIENT_UNUSED = 1025,
    PROPERTY_CLIENT_SHARED_SECRET = 1026,
    PROPERTY_CLIENT_NAS_MANUFACTURER = 1027,
    PROPERTY_CLIENT_ADDRESS = 1028,
    PROPERTY_CLIENT_QUARANTINE_COMPATIBLE = 1029,
    PROPERTY_CLIENT_ENABLED = 1030,
    PROPERTY_CLIENT_SECRET_TEMPLATE_GUID = 1031,
}

enum VENDORPROPERTIES
{
    PROPERTY_NAS_VENDOR_ID = 1024,
}

enum PROFILEPROPERTIES
{
    PROPERTY_PROFILE_ATTRIBUTES_COLLECTION = 1024,
    PROPERTY_PROFILE_IPFILTER_TEMPLATE_GUID = 1025,
}

enum POLICYPROPERTIES
{
    PROPERTY_POLICY_CONSTRAINT = 1024,
    PROPERTY_POLICY_MERIT = 1025,
    PROPERTY_POLICY_UNUSED0 = 1026,
    PROPERTY_POLICY_UNUSED1 = 1027,
    PROPERTY_POLICY_PROFILE_NAME = 1028,
    PROPERTY_POLICY_ACTION = 1029,
    PROPERTY_POLICY_CONDITIONS_COLLECTION = 1030,
    PROPERTY_POLICY_ENABLED = 1031,
    PROPERTY_POLICY_SOURCETAG = 1032,
}

enum CONDITIONPROPERTIES
{
    PROPERTY_CONDITION_TEXT = 1024,
}

enum RADIUSSERVERGROUPPROPERTIES
{
    PROPERTY_RADIUSSERVERGROUP_SERVERS_COLLECTION = 1024,
}

enum RADIUSSERVERPROPERTIES
{
    PROPERTY_RADIUSSERVER_AUTH_PORT = 1024,
    PROPERTY_RADIUSSERVER_AUTH_SECRET = 1025,
    PROPERTY_RADIUSSERVER_ACCT_PORT = 1026,
    PROPERTY_RADIUSSERVER_ACCT_SECRET = 1027,
    PROPERTY_RADIUSSERVER_ADDRESS = 1028,
    PROPERTY_RADIUSSERVER_FORWARD_ACCT_ONOFF = 1029,
    PROPERTY_RADIUSSERVER_PRIORITY = 1030,
    PROPERTY_RADIUSSERVER_WEIGHT = 1031,
    PROPERTY_RADIUSSERVER_TIMEOUT = 1032,
    PROPERTY_RADIUSSERVER_MAX_LOST = 1033,
    PROPERTY_RADIUSSERVER_BLACKOUT = 1034,
    PROPERTY_RADIUSSERVER_SEND_SIGNATURE = 1035,
    PROPERTY_RADIUSSERVER_AUTH_SECRET_TEMPLATE_GUID = 1036,
    PROPERTY_RADIUSSERVER_ACCT_SECRET_TEMPLATE_GUID = 1037,
}

enum REMEDIATIONSERVERGROUPPROPERTIES
{
    PROPERTY_REMEDIATIONSERVERGROUP_SERVERS_COLLECTION = 1024,
}

enum REMEDIATIONSERVERPROPERTIES
{
    PROPERTY_REMEDIATIONSERVER_ADDRESS = 1024,
    PROPERTY_REMEDIATIONSERVER_FRIENDLY_NAME = 1025,
}

enum SHVTEMPLATEPROPERTIES
{
    PROPERTY_SHV_COMBINATION_TYPE = 1024,
    PROPERTY_SHV_LIST = 1025,
    PROPERTY_SHVCONFIG_LIST = 1026,
}

enum IPFILTERPROPERTIES
{
    PROPERTY_IPFILTER_ATTRIBUTES_COLLECTION = 1024,
}

enum SHAREDSECRETPROPERTIES
{
    PROPERTY_SHAREDSECRET_STRING = 1024,
}

enum IASCOMPONENTPROPERTIES
{
    PROPERTY_COMPONENT_ID = 1024,
    PROPERTY_COMPONENT_PROG_ID = 1025,
    PROPERTY_COMPONENT_START = 1026,
}

enum PROTOCOLPROPERTIES
{
    PROPERTY_PROTOCOL_REQUEST_HANDLER = 1026,
    PROPERTY_PROTOCOL_START = 1027,
}

enum RADIUSPROPERTIES
{
    PROPERTY_RADIUS_ACCOUNTING_PORT = 1027,
    PROPERTY_RADIUS_AUTHENTICATION_PORT = 1028,
    PROPERTY_RADIUS_CLIENTS_COLLECTION = 1029,
    PROPERTY_RADIUS_VENDORS_COLLECTION = 1030,
}

enum NTEVENTLOGPROPERTIES
{
    PROPERTY_EVENTLOG_LOG_APPLICATION_EVENTS = 1026,
    PROPERTY_EVENTLOG_LOG_MALFORMED = 1027,
    PROPERTY_EVENTLOG_LOG_DEBUG = 1028,
}

enum NAMESPROPERTIES
{
    PROPERTY_NAMES_REALMS = 1026,
}

enum NTSAMPROPERTIES
{
    PROPERTY_NTSAM_ALLOW_LM_AUTHENTICATION = 1026,
}

enum ACCOUNTINGPROPERTIES
{
    PROPERTY_ACCOUNTING_LOG_ACCOUNTING = 1026,
    PROPERTY_ACCOUNTING_LOG_ACCOUNTING_INTERIM = 1027,
    PROPERTY_ACCOUNTING_LOG_AUTHENTICATION = 1028,
    PROPERTY_ACCOUNTING_LOG_OPEN_NEW_FREQUENCY = 1029,
    PROPERTY_ACCOUNTING_LOG_OPEN_NEW_SIZE = 1030,
    PROPERTY_ACCOUNTING_LOG_FILE_DIRECTORY = 1031,
    PROPERTY_ACCOUNTING_LOG_IAS1_FORMAT = 1032,
    PROPERTY_ACCOUNTING_LOG_ENABLE_LOGGING = 1033,
    PROPERTY_ACCOUNTING_LOG_DELETE_IF_FULL = 1034,
    PROPERTY_ACCOUNTING_SQL_MAX_SESSIONS = 1035,
    PROPERTY_ACCOUNTING_LOG_AUTHENTICATION_INTERIM = 1036,
    PROPERTY_ACCOUNTING_LOG_FILE_IS_BACKUP = 1037,
    PROPERTY_ACCOUNTING_DISCARD_REQUEST_ON_FAILURE = 1038,
}

enum NAPPROPERTIES
{
    PROPERTY_NAP_POLICIES_COLLECTION = 1026,
    PROPERTY_SHV_TEMPLATES_COLLECTION = 1027,
}

enum RADIUSPROXYPROPERTIES
{
    PROPERTY_RADIUSPROXY_SERVERGROUPS = 1026,
}

enum REMEDIATIONSERVERSPROPERTIES
{
    PROPERTY_REMEDIATIONSERVERS_SERVERGROUPS = 1026,
}

enum SHV_COMBINATION_TYPE
{
    SHV_COMBINATION_TYPE_ALL_PASS = 0,
    SHV_COMBINATION_TYPE_ALL_FAIL = 1,
    SHV_COMBINATION_TYPE_ONE_OR_MORE_PASS = 2,
    SHV_COMBINATION_TYPE_ONE_OR_MORE_FAIL = 3,
    SHV_COMBINATION_TYPE_ONE_OR_MORE_INFECTED = 4,
    SHV_COMBINATION_TYPE_ONE_OR_MORE_TRANSITIONAL = 5,
    SHV_COMBINATION_TYPE_ONE_OR_MORE_UNKNOWN = 6,
    SHV_COMBINATION_TYPE_MAX = 7,
}

enum SERVICE_TYPE
{
    SERVICE_TYPE_IAS = 0,
    SERVICE_TYPE_RAS = 1,
    SERVICE_TYPE_RAMGMTSVC = 2,
    SERVICE_TYPE_MAX = 3,
}

enum IASOSTYPE
{
    SYSTEM_TYPE_NT4_WORKSTATION = 0,
    SYSTEM_TYPE_NT5_WORKSTATION = 1,
    SYSTEM_TYPE_NT6_WORKSTATION = 2,
    SYSTEM_TYPE_NT6_1_WORKSTATION = 3,
    SYSTEM_TYPE_NT6_2_WORKSTATION = 4,
    SYSTEM_TYPE_NT6_3_WORKSTATION = 5,
    SYSTEM_TYPE_NT10_0_WORKSTATION = 6,
    SYSTEM_TYPE_NT4_SERVER = 7,
    SYSTEM_TYPE_NT5_SERVER = 8,
    SYSTEM_TYPE_NT6_SERVER = 9,
    SYSTEM_TYPE_NT6_1_SERVER = 10,
    SYSTEM_TYPE_NT6_2_SERVER = 11,
    SYSTEM_TYPE_NT6_3_SERVER = 12,
    SYSTEM_TYPE_NT10_0_SERVER = 13,
}

enum IASDOMAINTYPE
{
    DOMAIN_TYPE_NONE = 0,
    DOMAIN_TYPE_NT4 = 1,
    DOMAIN_TYPE_NT5 = 2,
    DOMAIN_TYPE_MIXED = 3,
}

enum IASDATASTORE
{
    DATA_STORE_LOCAL = 0,
    DATA_STORE_DIRECTORY = 1,
}

const GUID IID_ISdoMachine = {0x479F6E75, 0x49A2, 0x11D2, [0x8E, 0xCA, 0x00, 0xC0, 0x4F, 0xC2, 0xF5, 0x19]};
@GUID(0x479F6E75, 0x49A2, 0x11D2, [0x8E, 0xCA, 0x00, 0xC0, 0x4F, 0xC2, 0xF5, 0x19]);
interface ISdoMachine : IDispatch
{
    HRESULT Attach(BSTR bstrComputerName);
    HRESULT GetDictionarySDO(IUnknown* ppDictionarySDO);
    HRESULT GetServiceSDO(IASDATASTORE eDataStore, BSTR bstrServiceName, IUnknown* ppServiceSDO);
    HRESULT GetUserSDO(IASDATASTORE eDataStore, BSTR bstrUserName, IUnknown* ppUserSDO);
    HRESULT GetOSType(IASOSTYPE* eOSType);
    HRESULT GetDomainType(IASDOMAINTYPE* eDomainType);
    HRESULT IsDirectoryAvailable(short* boolDirectoryAvailable);
    HRESULT GetAttachedComputer(BSTR* bstrComputerName);
    HRESULT GetSDOSchema(IUnknown* ppSDOSchema);
}

const GUID IID_ISdoMachine2 = {0x518E5FFE, 0xD8CE, 0x4F7E, [0xA5, 0xDB, 0xB4, 0x0A, 0x35, 0x41, 0x9D, 0x3B]};
@GUID(0x518E5FFE, 0xD8CE, 0x4F7E, [0xA5, 0xDB, 0xB4, 0x0A, 0x35, 0x41, 0x9D, 0x3B]);
interface ISdoMachine2 : ISdoMachine
{
    HRESULT GetTemplatesSDO(BSTR bstrServiceName, IUnknown* ppTemplatesSDO);
    HRESULT EnableTemplates();
    HRESULT SyncConfigAgainstTemplates(BSTR bstrServiceName, IUnknown* ppConfigRoot, IUnknown* ppTemplatesRoot, short bForcedSync);
    HRESULT ImportRemoteTemplates(IUnknown pLocalTemplatesRoot, BSTR bstrRemoteMachineName);
    HRESULT Reload();
}

const GUID IID_ISdoServiceControl = {0x479F6E74, 0x49A2, 0x11D2, [0x8E, 0xCA, 0x00, 0xC0, 0x4F, 0xC2, 0xF5, 0x19]};
@GUID(0x479F6E74, 0x49A2, 0x11D2, [0x8E, 0xCA, 0x00, 0xC0, 0x4F, 0xC2, 0xF5, 0x19]);
interface ISdoServiceControl : IDispatch
{
    HRESULT StartServiceA();
    HRESULT StopService();
    HRESULT GetServiceStatus(int* status);
    HRESULT ResetService();
}

const GUID IID_ISdo = {0x56BC53DE, 0x96DB, 0x11D1, [0xBF, 0x3F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00]};
@GUID(0x56BC53DE, 0x96DB, 0x11D1, [0xBF, 0x3F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00]);
interface ISdo : IDispatch
{
    HRESULT GetPropertyInfo(int Id, IUnknown* ppPropertyInfo);
    HRESULT GetProperty(int Id, VARIANT* pValue);
    HRESULT PutProperty(int Id, VARIANT* pValue);
    HRESULT ResetProperty(int Id);
    HRESULT Apply();
    HRESULT Restore();
    HRESULT get__NewEnum(IUnknown* ppEnumVARIANT);
}

const GUID IID_ISdoCollection = {0x56BC53E2, 0x96DB, 0x11D1, [0xBF, 0x3F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00]};
@GUID(0x56BC53E2, 0x96DB, 0x11D1, [0xBF, 0x3F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00]);
interface ISdoCollection : IDispatch
{
    HRESULT get_Count(int* pCount);
    HRESULT Add(BSTR bstrName, IDispatch* ppItem);
    HRESULT Remove(IDispatch pItem);
    HRESULT RemoveAll();
    HRESULT Reload();
    HRESULT IsNameUnique(BSTR bstrName, short* pBool);
    HRESULT Item(VARIANT* Name, IDispatch* pItem);
    HRESULT get__NewEnum(IUnknown* ppEnumVARIANT);
}

const GUID IID_ITemplateSdo = {0x8AA85302, 0xD2E2, 0x4E20, [0x8B, 0x1F, 0xA5, 0x71, 0xE4, 0x37, 0xD6, 0xC9]};
@GUID(0x8AA85302, 0xD2E2, 0x4E20, [0x8B, 0x1F, 0xA5, 0x71, 0xE4, 0x37, 0xD6, 0xC9]);
interface ITemplateSdo : ISdo
{
    HRESULT AddToCollection(BSTR bstrName, IDispatch pCollection, IDispatch* ppItem);
    HRESULT AddToSdo(BSTR bstrName, IDispatch pSdoTarget, IDispatch* ppItem);
    HRESULT AddToSdoAsProperty(IDispatch pSdoTarget, int id);
}

const GUID IID_ISdoDictionaryOld = {0xD432E5F4, 0x53D8, 0x11D2, [0x9A, 0x3A, 0x00, 0xC0, 0x4F, 0xB9, 0x98, 0xAC]};
@GUID(0xD432E5F4, 0x53D8, 0x11D2, [0x9A, 0x3A, 0x00, 0xC0, 0x4F, 0xB9, 0x98, 0xAC]);
interface ISdoDictionaryOld : IDispatch
{
    HRESULT EnumAttributes(VARIANT* Id, VARIANT* pValues);
    HRESULT GetAttributeInfo(ATTRIBUTEID Id, VARIANT* pInfoIDs, VARIANT* pInfoValues);
    HRESULT EnumAttributeValues(ATTRIBUTEID Id, VARIANT* pValueIds, VARIANT* pValuesDesc);
    HRESULT CreateAttribute(ATTRIBUTEID Id, IDispatch* ppAttributeObject);
    HRESULT GetAttributeID(BSTR bstrAttributeName, ATTRIBUTEID* pId);
}

enum RADIUS_ATTRIBUTE_TYPE
{
    ratMinimum = 0,
    ratUserName = 1,
    ratUserPassword = 2,
    ratCHAPPassword = 3,
    ratNASIPAddress = 4,
    ratNASPort = 5,
    ratServiceType = 6,
    ratFramedProtocol = 7,
    ratFramedIPAddress = 8,
    ratFramedIPNetmask = 9,
    ratFramedRouting = 10,
    ratFilterId = 11,
    ratFramedMTU = 12,
    ratFramedCompression = 13,
    ratLoginIPHost = 14,
    ratLoginService = 15,
    ratLoginPort = 16,
    ratReplyMessage = 18,
    ratCallbackNumber = 19,
    ratCallbackId = 20,
    ratFramedRoute = 22,
    ratFramedIPXNetwork = 23,
    ratState = 24,
    ratClass = 25,
    ratVendorSpecific = 26,
    ratSessionTimeout = 27,
    ratIdleTimeout = 28,
    ratTerminationAction = 29,
    ratCalledStationId = 30,
    ratCallingStationId = 31,
    ratNASIdentifier = 32,
    ratProxyState = 33,
    ratLoginLATService = 34,
    ratLoginLATNode = 35,
    ratLoginLATGroup = 36,
    ratFramedAppleTalkLink = 37,
    ratFramedAppleTalkNetwork = 38,
    ratFramedAppleTalkZone = 39,
    ratAcctStatusType = 40,
    ratAcctDelayTime = 41,
    ratAcctInputOctets = 42,
    ratAcctOutputOctets = 43,
    ratAcctSessionId = 44,
    ratAcctAuthentic = 45,
    ratAcctSessionTime = 46,
    ratAcctInputPackets = 47,
    ratAcctOutputPackets = 48,
    ratAcctTerminationCause = 49,
    ratCHAPChallenge = 60,
    ratNASPortType = 61,
    ratPortLimit = 62,
    ratTunnelType = 64,
    ratMediumType = 65,
    ratTunnelPassword = 69,
    ratTunnelPrivateGroupID = 81,
    ratNASIPv6Address = 95,
    ratFramedInterfaceId = 96,
    ratFramedIPv6Prefix = 97,
    ratLoginIPv6Host = 98,
    ratFramedIPv6Route = 99,
    ratFramedIPv6Pool = 100,
    ratCode = 262,
    ratIdentifier = 263,
    ratAuthenticator = 264,
    ratSrcIPAddress = 265,
    ratSrcPort = 266,
    ratProvider = 267,
    ratStrippedUserName = 268,
    ratFQUserName = 269,
    ratPolicyName = 270,
    ratUniqueId = 271,
    ratExtensionState = 272,
    ratEAPTLV = 273,
    ratRejectReasonCode = 274,
    ratCRPPolicyName = 275,
    ratProviderName = 276,
    ratClearTextPassword = 277,
    ratSrcIPv6Address = 278,
    ratCertificateThumbprint = 279,
}

enum RADIUS_CODE
{
    rcUnknown = 0,
    rcAccessRequest = 1,
    rcAccessAccept = 2,
    rcAccessReject = 3,
    rcAccountingRequest = 4,
    rcAccountingResponse = 5,
    rcAccessChallenge = 11,
    rcDiscard = 256,
}

enum RADIUS_AUTHENTICATION_PROVIDER
{
    rapUnknown = 0,
    rapUsersFile = 1,
    rapProxy = 2,
    rapWindowsNT = 3,
    rapMCIS = 4,
    rapODBC = 5,
    rapNone = 6,
}

enum RADIUS_REJECT_REASON_CODE
{
    rrrcUndefined = 0,
    rrrcAccountUnknown = 1,
    rrrcAccountDisabled = 2,
    rrrcAccountExpired = 3,
    rrrcAuthenticationFailure = 4,
}

enum RADIUS_DATA_TYPE
{
    rdtUnknown = 0,
    rdtString = 1,
    rdtAddress = 2,
    rdtInteger = 3,
    rdtTime = 4,
    rdtIpv6Address = 5,
}

struct RADIUS_ATTRIBUTE
{
    uint dwAttrType;
    RADIUS_DATA_TYPE fDataType;
    uint cbDataLength;
    _Anonymous_e__Union Anonymous;
}

struct RADIUS_VSA_FORMAT
{
    ubyte VendorId;
    ubyte VendorType;
    ubyte VendorLength;
    ubyte AttributeSpecific;
}

enum RADIUS_ACTION
{
    raContinue = 0,
    raReject = 1,
    raAccept = 2,
}

alias PRADIUS_EXTENSION_INIT = extern(Windows) uint function();
alias PRADIUS_EXTENSION_TERM = extern(Windows) void function();
alias PRADIUS_EXTENSION_PROCESS = extern(Windows) uint function(const(RADIUS_ATTRIBUTE)* pAttrs, RADIUS_ACTION* pfAction);
alias PRADIUS_EXTENSION_PROCESS_EX = extern(Windows) uint function(const(RADIUS_ATTRIBUTE)* pInAttrs, RADIUS_ATTRIBUTE** pOutAttrs, RADIUS_ACTION* pfAction);
alias PRADIUS_EXTENSION_FREE_ATTRIBUTES = extern(Windows) void function(RADIUS_ATTRIBUTE* pAttrs);
enum RADIUS_EXTENSION_POINT
{
    repAuthentication = 0,
    repAuthorization = 1,
}

struct RADIUS_ATTRIBUTE_ARRAY
{
    uint cbSize;
    int Add;
    const(int) AttributeAt;
    int GetSize;
    int InsertAt;
    int RemoveAt;
    int SetAt;
}

struct RADIUS_EXTENSION_CONTROL_BLOCK
{
    uint cbSize;
    uint dwVersion;
    RADIUS_EXTENSION_POINT repPoint;
    RADIUS_CODE rcRequestType;
    RADIUS_CODE rcResponseType;
    int GetRequest;
    int GetResponse;
    int SetResponseType;
}

alias PRADIUS_EXTENSION_PROCESS_2 = extern(Windows) uint function(RADIUS_EXTENSION_CONTROL_BLOCK* pECB);
