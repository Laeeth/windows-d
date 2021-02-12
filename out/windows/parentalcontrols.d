module windows.parentalcontrols;

public import system;
public import windows.automation;
public import windows.com;
public import windows.windowsandmessaging;
public import windows.windowsprogramming;

extern(Windows):

enum WPCFLAG_ISBLOCKED
{
    WPCFLAG_ISBLOCKED_NOTBLOCKED = 0,
    WPCFLAG_ISBLOCKED_IMBLOCKED = 1,
    WPCFLAG_ISBLOCKED_EMAILBLOCKED = 2,
    WPCFLAG_ISBLOCKED_MEDIAPLAYBACKBLOCKED = 4,
    WPCFLAG_ISBLOCKED_WEBBLOCKED = 8,
    WPCFLAG_ISBLOCKED_GAMESBLOCKED = 16,
    WPCFLAG_ISBLOCKED_CONTACTBLOCKED = 32,
    WPCFLAG_ISBLOCKED_FEATUREBLOCKED = 64,
    WPCFLAG_ISBLOCKED_DOWNLOADBLOCKED = 128,
    WPCFLAG_ISBLOCKED_RATINGBLOCKED = 256,
    WPCFLAG_ISBLOCKED_DESCRIPTORBLOCKED = 512,
    WPCFLAG_ISBLOCKED_EXPLICITBLOCK = 1024,
    WPCFLAG_ISBLOCKED_BADPASS = 2048,
    WPCFLAG_ISBLOCKED_MAXHOURS = 4096,
    WPCFLAG_ISBLOCKED_SPECHOURS = 8192,
    WPCFLAG_ISBLOCKED_SETTINGSCHANGEBLOCKED = 16384,
    WPCFLAG_ISBLOCKED_ATTACHMENTBLOCKED = 32768,
    WPCFLAG_ISBLOCKED_SENDERBLOCKED = 65536,
    WPCFLAG_ISBLOCKED_RECEIVERBLOCKED = 131072,
    WPCFLAG_ISBLOCKED_NOTEXPLICITLYALLOWED = 262144,
    WPCFLAG_ISBLOCKED_NOTINLIST = 524288,
    WPCFLAG_ISBLOCKED_CATEGORYBLOCKED = 1048576,
    WPCFLAG_ISBLOCKED_CATEGORYNOTINLIST = 2097152,
    WPCFLAG_ISBLOCKED_NOTKIDS = 4194304,
    WPCFLAG_ISBLOCKED_UNRATED = 8388608,
    WPCFLAG_ISBLOCKED_NOACCESS = 16777216,
    WPCFLAG_ISBLOCKED_INTERNALERROR = -1,
}

enum WPCFLAG_LOGOFF_TYPE
{
    WPCFLAG_LOGOFF_TYPE_LOGOUT = 0,
    WPCFLAG_LOGOFF_TYPE_RESTART = 1,
    WPCFLAG_LOGOFF_TYPE_SHUTDOWN = 2,
    WPCFLAG_LOGOFF_TYPE_FUS = 4,
    WPCFLAG_LOGOFF_TYPE_FORCEDFUS = 8,
}

enum WPCFLAG_IM_LEAVE
{
    WPCFLAG_IM_LEAVE_NORMAL = 0,
    WPCFLAG_IM_LEAVE_FORCED = 1,
    WPCFLAG_IM_LEAVE_CONVERSATION_END = 2,
}

enum WPC_ARGS_SETTINGSCHANGEEVENT
{
    WPC_ARGS_SETTINGSCHANGEEVENT_CLASS = 0,
    WPC_ARGS_SETTINGSCHANGEEVENT_SETTING = 1,
    WPC_ARGS_SETTINGSCHANGEEVENT_OWNER = 2,
    WPC_ARGS_SETTINGSCHANGEEVENT_OLDVAL = 3,
    WPC_ARGS_SETTINGSCHANGEEVENT_NEWVAL = 4,
    WPC_ARGS_SETTINGSCHANGEEVENT_REASON = 5,
    WPC_ARGS_SETTINGSCHANGEEVENT_OPTIONAL = 6,
    WPC_ARGS_SETTINGSCHANGEEVENT_CARGS = 7,
}

enum WPC_ARGS_SAFERAPPBLOCKED
{
    WPC_ARGS_SAFERAPPBLOCKED_TIMESTAMP = 0,
    WPC_ARGS_SAFERAPPBLOCKED_USERID = 1,
    WPC_ARGS_SAFERAPPBLOCKED_PATH = 2,
    WPC_ARGS_SAFERAPPBLOCKED_RULEID = 3,
    WPC_ARGS_SAFERAPPBLOCKED_CARGS = 4,
}

enum WPC_ARGS_EMAILRECEIEVEDEVENT
{
    WPC_ARGS_EMAILRECEIEVEDEVENT_SENDER = 0,
    WPC_ARGS_EMAILRECEIEVEDEVENT_APPNAME = 1,
    WPC_ARGS_EMAILRECEIEVEDEVENT_APPVERSION = 2,
    WPC_ARGS_EMAILRECEIEVEDEVENT_SUBJECT = 3,
    WPC_ARGS_EMAILRECEIEVEDEVENT_REASON = 4,
    WPC_ARGS_EMAILRECEIEVEDEVENT_RECIPCOUNT = 5,
    WPC_ARGS_EMAILRECEIEVEDEVENT_RECIPIENT = 6,
    WPC_ARGS_EMAILRECEIEVEDEVENT_ATTACHCOUNT = 7,
    WPC_ARGS_EMAILRECEIEVEDEVENT_ATTACHMENTNAME = 8,
    WPC_ARGS_EMAILRECEIEVEDEVENT_RECEIVEDTIME = 9,
    WPC_ARGS_EMAILRECEIEVEDEVENT_EMAILACCOUNT = 10,
    WPC_ARGS_EMAILRECEIEVEDEVENT_CARGS = 11,
}

enum WPC_ARGS_EMAILSENTEVENT
{
    WPC_ARGS_EMAILSENTEVENT_SENDER = 0,
    WPC_ARGS_EMAILSENTEVENT_APPNAME = 1,
    WPC_ARGS_EMAILSENTEVENT_APPVERSION = 2,
    WPC_ARGS_EMAILSENTEVENT_SUBJECT = 3,
    WPC_ARGS_EMAILSENTEVENT_REASON = 4,
    WPC_ARGS_EMAILSENTEVENT_RECIPCOUNT = 5,
    WPC_ARGS_EMAILSENTEVENT_RECIPIENT = 6,
    WPC_ARGS_EMAILSENTEVENT_ATTACHCOUNT = 7,
    WPC_ARGS_EMAILSENTEVENT_ATTACHMENTNAME = 8,
    WPC_ARGS_EMAILSENTEVENT_EMAILACCOUNT = 9,
    WPC_ARGS_EMAILSENTEVENT_CARGS = 10,
}

enum WPC_ARGS_EMAILCONTACTEVENT
{
    WPC_ARGS_EMAILCONTACTEVENT_APPNAME = 0,
    WPC_ARGS_EMAILCONTACTEVENT_APPVERSION = 1,
    WPC_ARGS_EMAILCONTACTEVENT_OLDNAME = 2,
    WPC_ARGS_EMAILCONTACTEVENT_OLDID = 3,
    WPC_ARGS_EMAILCONTACTEVENT_NEWNAME = 4,
    WPC_ARGS_EMAILCONTACTEVENT_NEWID = 5,
    WPC_ARGS_EMAILCONTACTEVENT_REASON = 6,
    WPC_ARGS_EMAILCONTACTEVENT_EMAILACCOUNT = 7,
    WPC_ARGS_EMAILCONTACTEVENT_CARGS = 8,
}

enum WPC_MEDIA_TYPE
{
    WPC_MEDIA_TYPE_OTHER = 0,
    WPC_MEDIA_TYPE_DVD = 1,
    WPC_MEDIA_TYPE_RECORDED_TV = 2,
    WPC_MEDIA_TYPE_AUDIO_FILE = 3,
    WPC_MEDIA_TYPE_CD_AUDIO = 4,
    WPC_MEDIA_TYPE_VIDEO_FILE = 5,
    WPC_MEDIA_TYPE_PICTURE_FILE = 6,
    WPC_MEDIA_TYPE_MAX = 7,
}

enum WPC_MEDIA_EXPLICIT
{
    WPC_MEDIA_EXPLICIT_FALSE = 0,
    WPC_MEDIA_EXPLICIT_TRUE = 1,
    WPC_MEDIA_EXPLICIT_UNKNOWN = 2,
}

enum WPC_ARGS_MEDIAPLAYBACKEVENT
{
    WPC_ARGS_MEDIAPLAYBACKEVENT_APPNAME = 0,
    WPC_ARGS_MEDIAPLAYBACKEVENT_APPVERSION = 1,
    WPC_ARGS_MEDIAPLAYBACKEVENT_MEDIATYPE = 2,
    WPC_ARGS_MEDIAPLAYBACKEVENT_PATH = 3,
    WPC_ARGS_MEDIAPLAYBACKEVENT_TITLE = 4,
    WPC_ARGS_MEDIAPLAYBACKEVENT_PML = 5,
    WPC_ARGS_MEDIAPLAYBACKEVENT_ALBUM = 6,
    WPC_ARGS_MEDIAPLAYBACKEVENT_EXPLICIT = 7,
    WPC_ARGS_MEDIAPLAYBACKEVENT_REASON = 8,
    WPC_ARGS_MEDIAPLAYBACKEVENT_CARGS = 9,
}

enum WPC_ARGS_MEDIADOWNLOADEVENT
{
    WPC_ARGS_MEDIADOWNLOADEVENT_APPNAME = 0,
    WPC_ARGS_MEDIADOWNLOADEVENT_APPVERSION = 1,
    WPC_ARGS_MEDIADOWNLOADEVENT_MEDIATYPE = 2,
    WPC_ARGS_MEDIADOWNLOADEVENT_PATH = 3,
    WPC_ARGS_MEDIADOWNLOADEVENT_TITLE = 4,
    WPC_ARGS_MEDIADOWNLOADEVENT_PML = 5,
    WPC_ARGS_MEDIADOWNLOADEVENT_ALBUM = 6,
    WPC_ARGS_MEDIADOWNLOADEVENT_EXPLICIT = 7,
    WPC_ARGS_MEDIADOWNLOADEVENT_REASON = 8,
    WPC_ARGS_MEDIADOWNLOADEVENT_CARGS = 9,
}

enum WPC_ARGS_CONVERSATIONINITEVENT
{
    WPC_ARGS_CONVERSATIONINITEVENT_APPNAME = 0,
    WPC_ARGS_CONVERSATIONINITEVENT_APPVERSION = 1,
    WPC_ARGS_CONVERSATIONINITEVENT_ACCOUNTNAME = 2,
    WPC_ARGS_CONVERSATIONINITEVENT_CONVID = 3,
    WPC_ARGS_CONVERSATIONINITEVENT_REQUESTINGIP = 4,
    WPC_ARGS_CONVERSATIONINITEVENT_SENDER = 5,
    WPC_ARGS_CONVERSATIONINITEVENT_REASON = 6,
    WPC_ARGS_CONVERSATIONINITEVENT_RECIPCOUNT = 7,
    WPC_ARGS_CONVERSATIONINITEVENT_RECIPIENT = 8,
    WPC_ARGS_CONVERSATIONINITEVENT_CARGS = 9,
}

enum WPC_ARGS_CONVERSATIONJOINEVENT
{
    WPC_ARGS_CONVERSATIONJOINEVENT_APPNAME = 0,
    WPC_ARGS_CONVERSATIONJOINEVENT_APPVERSION = 1,
    WPC_ARGS_CONVERSATIONJOINEVENT_ACCOUNTNAME = 2,
    WPC_ARGS_CONVERSATIONJOINEVENT_CONVID = 3,
    WPC_ARGS_CONVERSATIONJOINEVENT_JOININGIP = 4,
    WPC_ARGS_CONVERSATIONJOINEVENT_JOININGUSER = 5,
    WPC_ARGS_CONVERSATIONJOINEVENT_REASON = 6,
    WPC_ARGS_CONVERSATIONJOINEVENT_MEMBERCOUNT = 7,
    WPC_ARGS_CONVERSATIONJOINEVENT_MEMBER = 8,
    WPC_ARGS_CONVERSATIONJOINEVENT_SENDER = 9,
    WPC_ARGS_CONVERSATIONJOINEVENT_CARGS = 10,
}

enum WPC_ARGS_CONVERSATIONLEAVEEVENT
{
    WPC_ARGS_CONVERSATIONLEAVEEVENT_APPNAME = 0,
    WPC_ARGS_CONVERSATIONLEAVEEVENT_APPVERSION = 1,
    WPC_ARGS_CONVERSATIONLEAVEEVENT_ACCOUNTNAME = 2,
    WPC_ARGS_CONVERSATIONLEAVEEVENT_CONVID = 3,
    WPC_ARGS_CONVERSATIONLEAVEEVENT_LEAVINGIP = 4,
    WPC_ARGS_CONVERSATIONLEAVEEVENT_LEAVINGUSER = 5,
    WPC_ARGS_CONVERSATIONLEAVEEVENT_REASON = 6,
    WPC_ARGS_CONVERSATIONLEAVEEVENT_MEMBERCOUNT = 7,
    WPC_ARGS_CONVERSATIONLEAVEEVENT_MEMBER = 8,
    WPC_ARGS_CONVERSATIONLEAVEEVENT_FLAGS = 9,
    WPC_ARGS_CONVERSATIONLEAVEEVENT_CARGS = 10,
}

enum WPCFLAG_IM_FEATURE
{
    WPCFLAG_IM_FEATURE_NONE = 0,
    WPCFLAG_IM_FEATURE_VIDEO = 1,
    WPCFLAG_IM_FEATURE_AUDIO = 2,
    WPCFLAG_IM_FEATURE_GAME = 4,
    WPCFLAG_IM_FEATURE_SMS = 8,
    WPCFLAG_IM_FEATURE_FILESWAP = 16,
    WPCFLAG_IM_FEATURE_URLSWAP = 32,
    WPCFLAG_IM_FEATURE_SENDING = -2147483648,
    WPCFLAG_IM_FEATURE_ALL = -1,
}

enum WPC_ARGS_IMFEATUREEVENT
{
    WPC_ARGS_IMFEATUREEVENT_APPNAME = 0,
    WPC_ARGS_IMFEATUREEVENT_APPVERSION = 1,
    WPC_ARGS_IMFEATUREEVENT_ACCOUNTNAME = 2,
    WPC_ARGS_IMFEATUREEVENT_CONVID = 3,
    WPC_ARGS_IMFEATUREEVENT_MEDIATYPE = 4,
    WPC_ARGS_IMFEATUREEVENT_REASON = 5,
    WPC_ARGS_IMFEATUREEVENT_RECIPCOUNT = 6,
    WPC_ARGS_IMFEATUREEVENT_RECIPIENT = 7,
    WPC_ARGS_IMFEATUREEVENT_SENDER = 8,
    WPC_ARGS_IMFEATUREEVENT_SENDERIP = 9,
    WPC_ARGS_IMFEATUREEVENT_DATA = 10,
    WPC_ARGS_IMFEATUREEVENT_CARGS = 11,
}

enum WPC_ARGS_IMCONTACTEVENT
{
    WPC_ARGS_IMCONTACTEVENT_APPNAME = 0,
    WPC_ARGS_IMCONTACTEVENT_APPVERSION = 1,
    WPC_ARGS_IMCONTACTEVENT_ACCOUNTNAME = 2,
    WPC_ARGS_IMCONTACTEVENT_OLDNAME = 3,
    WPC_ARGS_IMCONTACTEVENT_OLDID = 4,
    WPC_ARGS_IMCONTACTEVENT_NEWNAME = 5,
    WPC_ARGS_IMCONTACTEVENT_NEWID = 6,
    WPC_ARGS_IMCONTACTEVENT_REASON = 7,
    WPC_ARGS_IMCONTACTEVENT_CARGS = 8,
}

enum WPC_ARGS_GAMESTARTEVENT
{
    WPC_ARGS_GAMESTARTEVENT_APPID = 0,
    WPC_ARGS_GAMESTARTEVENT_INSTANCEID = 1,
    WPC_ARGS_GAMESTARTEVENT_APPVERSION = 2,
    WPC_ARGS_GAMESTARTEVENT_PATH = 3,
    WPC_ARGS_GAMESTARTEVENT_RATING = 4,
    WPC_ARGS_GAMESTARTEVENT_RATINGSYSTEM = 5,
    WPC_ARGS_GAMESTARTEVENT_REASON = 6,
    WPC_ARGS_GAMESTARTEVENT_DESCCOUNT = 7,
    WPC_ARGS_GAMESTARTEVENT_DESCRIPTOR = 8,
    WPC_ARGS_GAMESTARTEVENT_PID = 9,
    WPC_ARGS_GAMESTARTEVENT_CARGS = 10,
}

enum WPC_ARGS_FILEDOWNLOADEVENT
{
    WPC_ARGS_FILEDOWNLOADEVENT_URL = 0,
    WPC_ARGS_FILEDOWNLOADEVENT_APPNAME = 1,
    WPC_ARGS_FILEDOWNLOADEVENT_VERSION = 2,
    WPC_ARGS_FILEDOWNLOADEVENT_BLOCKED = 3,
    WPC_ARGS_FILEDOWNLOADEVENT_PATH = 4,
    WPC_ARGS_FILEDOWNLOADEVENT_CARGS = 5,
}

enum WPC_ARGS_URLVISITEVENT
{
    WPC_ARGS_URLVISITEVENT_URL = 0,
    WPC_ARGS_URLVISITEVENT_APPNAME = 1,
    WPC_ARGS_URLVISITEVENT_VERSION = 2,
    WPC_ARGS_URLVISITEVENT_REASON = 3,
    WPC_ARGS_URLVISITEVENT_RATINGSYSTEMID = 4,
    WPC_ARGS_URLVISITEVENT_CATCOUNT = 5,
    WPC_ARGS_URLVISITEVENT_CATEGORY = 6,
    WPC_ARGS_URLVISITEVENT_CARGS = 7,
}

enum WPC_ARGS_WEBSITEVISITEVENT
{
    WPC_ARGS_WEBSITEVISITEVENT_URL = 0,
    WPC_ARGS_WEBSITEVISITEVENT_DECISION = 1,
    WPC_ARGS_WEBSITEVISITEVENT_CATEGORIES = 2,
    WPC_ARGS_WEBSITEVISITEVENT_BLOCKEDCATEGORIES = 3,
    WPC_ARGS_WEBSITEVISITEVENT_SERIALIZEDAPPLICATION = 4,
    WPC_ARGS_WEBSITEVISITEVENT_TITLE = 5,
    WPC_ARGS_WEBSITEVISITEVENT_CONTENTTYPE = 6,
    WPC_ARGS_WEBSITEVISITEVENT_REFERRER = 7,
    WPC_ARGS_WEBSITEVISITEVENT_TELEMETRY = 8,
    WPC_ARGS_WEBSITEVISITEVENT_CARGS = 9,
}

enum WPC_ARGS_APPLICATIONEVENT
{
    WPC_ARGS_APPLICATIONEVENT_SERIALIZEDAPPLICATION = 0,
    WPC_ARGS_APPLICATIONEVENT_DECISION = 1,
    WPC_ARGS_APPLICATIONEVENT_PROCESSID = 2,
    WPC_ARGS_APPLICATIONEVENT_CREATIONTIME = 3,
    WPC_ARGS_APPLICATIONEVENT_TIMEUSED = 4,
    WPC_ARGS_APPLICATIONEVENT_CARGS = 5,
}

enum WPC_ARGS_COMPUTERUSAGEEVENT
{
    WPC_ARGS_COMPUTERUSAGEEVENT_ID = 0,
    WPC_ARGS_COMPUTERUSAGEEVENT_TIMEUSED = 1,
    WPC_ARGS_COMPUTERUSAGEEVENT_CARGS = 2,
}

enum WPC_ARGS_CONTENTUSAGEEVENT
{
    WPC_ARGS_CONTENTUSAGEEVENT_CONTENTPROVIDERID = 0,
    WPC_ARGS_CONTENTUSAGEEVENT_CONTENTPROVIDERTITLE = 1,
    WPC_ARGS_CONTENTUSAGEEVENT_ID = 2,
    WPC_ARGS_CONTENTUSAGEEVENT_TITLE = 3,
    WPC_ARGS_CONTENTUSAGEEVENT_CATEGORY = 4,
    WPC_ARGS_CONTENTUSAGEEVENT_RATINGS = 5,
    WPC_ARGS_CONTENTUSAGEEVENT_DECISION = 6,
    WPC_ARGS_CONTENTUSAGEEVENT_CARGS = 7,
}

enum WPC_ARGS_CUSTOMEVENT
{
    WPC_ARGS_CUSTOMEVENT_PUBLISHER = 0,
    WPC_ARGS_CUSTOMEVENT_APPNAME = 1,
    WPC_ARGS_CUSTOMEVENT_APPVERSION = 2,
    WPC_ARGS_CUSTOMEVENT_EVENT = 3,
    WPC_ARGS_CUSTOMEVENT_VALUE1 = 4,
    WPC_ARGS_CUSTOMEVENT_VALUE2 = 5,
    WPC_ARGS_CUSTOMEVENT_VALUE3 = 6,
    WPC_ARGS_CUSTOMEVENT_BLOCKED = 7,
    WPC_ARGS_CUSTOMEVENT_REASON = 8,
    WPC_ARGS_CUSTOMEVENT_CARGS = 9,
}

enum WPC_ARGS_WEBOVERRIDEEVENT
{
    WPC_ARGS_WEBOVERRIDEEVENT_USERID = 0,
    WPC_ARGS_WEBOVERRIDEEVENT_URL = 1,
    WPC_ARGS_WEBOVERRIDEEVENT_REASON = 2,
    WPC_ARGS_WEBOVERRIDEEVENT_CARGS = 3,
}

enum WPC_ARGS_APPOVERRIDEEVENT
{
    WPC_ARGS_APPOVERRIDEEVENT_USERID = 0,
    WPC_ARGS_APPOVERRIDEEVENT_PATH = 1,
    WPC_ARGS_APPOVERRIDEEVENT_REASON = 2,
    WPC_ARGS_APPOVERRIDEEVENT_CARGS = 3,
}

enum WPC_SETTINGS
{
    WPC_SETTINGS_WPC_EXTENSION_PATH = 0,
    WPC_SETTINGS_WPC_EXTENSION_SILO = 1,
    WPC_SETTINGS_WPC_EXTENSION_IMAGE_PATH = 2,
    WPC_SETTINGS_WPC_EXTENSION_DISABLEDIMAGE_PATH = 3,
    WPC_SETTINGS_WPC_EXTENSION_NAME = 4,
    WPC_SETTINGS_WPC_EXTENSION_SUB_TITLE = 5,
    WPC_SETTINGS_SYSTEM_CURRENT_RATING_SYSTEM = 6,
    WPC_SETTINGS_SYSTEM_LAST_LOG_VIEW = 7,
    WPC_SETTINGS_SYSTEM_LOG_VIEW_REMINDER_INTERVAL = 8,
    WPC_SETTINGS_SYSTEM_HTTP_EXEMPTION_LIST = 9,
    WPC_SETTINGS_SYSTEM_URL_EXEMPTION_LIST = 10,
    WPC_SETTINGS_SYSTEM_FILTER_ID = 11,
    WPC_SETTINGS_SYSTEM_FILTER_NAME = 12,
    WPC_SETTINGS_SYSTEM_LOCALE = 13,
    WPC_SETTINGS_ALLOW_BLOCK = 14,
    WPC_SETTINGS_GAME_BLOCKED = 15,
    WPC_SETTINGS_GAME_ALLOW_UNRATED = 16,
    WPC_SETTINGS_GAME_MAX_ALLOWED = 17,
    WPC_SETTINGS_GAME_DENIED_DESCRIPTORS = 18,
    WPC_SETTINGS_USER_WPC_ENABLED = 19,
    WPC_SETTINGS_USER_LOGGING_REQUIRED = 20,
    WPC_SETTINGS_USER_HOURLY_RESTRICTIONS = 21,
    WPC_SETTINGS_USER_OVERRRIDE_REQUESTS = 22,
    WPC_SETTINGS_USER_LOGON_HOURS = 23,
    WPC_SETTINGS_USER_APP_RESTRICTIONS = 24,
    WPC_SETTINGS_WEB_FILTER_ON = 25,
    WPC_SETTINGS_WEB_DOWNLOAD_BLOCKED = 26,
    WPC_SETTINGS_WEB_FILTER_LEVEL = 27,
    WPC_SETTINGS_WEB_BLOCKED_CATEGORY_LIST = 28,
    WPC_SETTINGS_WEB_BLOCK_UNRATED = 29,
    WPC_SETTINGS_WPC_ENABLED = 30,
    WPC_SETTINGS_WPC_LOGGING_REQUIRED = 31,
    WPC_SETTINGS_RATING_SYSTEM_PATH = 32,
    WPC_SETTINGS_WPC_PROVIDER_CURRENT = 33,
    WPC_SETTINGS_USER_TIME_ALLOWANCE = 34,
    WPC_SETTINGS_USER_TIME_ALLOWANCE_RESTRICTIONS = 35,
    WPC_SETTINGS_GAME_RESTRICTED = 36,
    WPC_SETTING_COUNT = 37,
}

const GUID CLSID_WpcSettingsProvider = {0x355DFFAA, 0x3B9F, 0x435C, [0xB4, 0x28, 0x5D, 0x44, 0x29, 0x0B, 0xC5, 0xF2]};
@GUID(0x355DFFAA, 0x3B9F, 0x435C, [0xB4, 0x28, 0x5D, 0x44, 0x29, 0x0B, 0xC5, 0xF2]);
struct WpcSettingsProvider;

const GUID CLSID_WpcProviderSupport = {0xBB18C7A0, 0x2186, 0x4BE0, [0x97, 0xD8, 0x04, 0x84, 0x7B, 0x62, 0x8E, 0x02]};
@GUID(0xBB18C7A0, 0x2186, 0x4BE0, [0x97, 0xD8, 0x04, 0x84, 0x7B, 0x62, 0x8E, 0x02]);
struct WpcProviderSupport;

const GUID CLSID_WindowsParentalControls = {0xE77CC89B, 0x7401, 0x4C04, [0x8C, 0xED, 0x14, 0x9D, 0xB3, 0x5A, 0xDD, 0x04]};
@GUID(0xE77CC89B, 0x7401, 0x4C04, [0x8C, 0xED, 0x14, 0x9D, 0xB3, 0x5A, 0xDD, 0x04]);
struct WindowsParentalControls;

const GUID IID_IWPCProviderState = {0x50B6A267, 0xC4BD, 0x450B, [0xAD, 0xB5, 0x75, 0x90, 0x73, 0x83, 0x7C, 0x9E]};
@GUID(0x50B6A267, 0xC4BD, 0x450B, [0xAD, 0xB5, 0x75, 0x90, 0x73, 0x83, 0x7C, 0x9E]);
interface IWPCProviderState : IUnknown
{
    HRESULT Enable();
    HRESULT Disable();
}

enum WPCFLAG_OVERRIDE
{
    WPCFLAG_APPLICATION = 1,
}

const GUID IID_IWPCProviderConfig = {0xBEF54196, 0x2D02, 0x4A26, [0xB6, 0xE5, 0xD6, 0x5A, 0xF2, 0x95, 0xD0, 0xF1]};
@GUID(0xBEF54196, 0x2D02, 0x4A26, [0xB6, 0xE5, 0xD6, 0x5A, 0xF2, 0x95, 0xD0, 0xF1]);
interface IWPCProviderConfig : IUnknown
{
    HRESULT GetUserSummary(BSTR bstrSID, BSTR* pbstrUserSummary);
    HRESULT Configure(HWND hWnd, BSTR bstrSID);
    HRESULT RequestOverride(HWND hWnd, BSTR bstrPath, uint dwFlags);
}

enum WPCFLAG_RESTRICTION
{
    WPCFLAG_NO_RESTRICTION = 0,
    WPCFLAG_LOGGING_REQUIRED = 1,
    WPCFLAG_WEB_FILTERED = 2,
    WPCFLAG_HOURS_RESTRICTED = 4,
    WPCFLAG_GAMES_BLOCKED = 8,
    WPCFLAG_APPS_RESTRICTED = 16,
    WPCFLAG_TIME_ALLOWANCE_RESTRICTED = 32,
    WPCFLAG_GAMES_RESTRICTED = 64,
}

const GUID IID_IWPCSettings = {0x8FDF6CA1, 0x0189, 0x47E4, [0xB6, 0x70, 0x1A, 0x8A, 0x46, 0x36, 0xE3, 0x40]};
@GUID(0x8FDF6CA1, 0x0189, 0x47E4, [0xB6, 0x70, 0x1A, 0x8A, 0x46, 0x36, 0xE3, 0x40]);
interface IWPCSettings : IUnknown
{
    HRESULT IsLoggingRequired(int* pfRequired);
    HRESULT GetLastSettingsChangeTime(SYSTEMTIME* pTime);
    HRESULT GetRestrictions(uint* pdwRestrictions);
}

const GUID IID_IWPCGamesSettings = {0x95E87780, 0xE158, 0x489E, [0xB4, 0x52, 0xBB, 0xB8, 0x50, 0x79, 0x07, 0x15]};
@GUID(0x95E87780, 0xE158, 0x489E, [0xB4, 0x52, 0xBB, 0xB8, 0x50, 0x79, 0x07, 0x15]);
interface IWPCGamesSettings : IWPCSettings
{
    HRESULT IsBlocked(Guid guidAppID, uint* pdwReasons);
}

enum WPCFLAG_WEB_SETTING
{
    WPCFLAG_WEB_SETTING_NOTBLOCKED = 0,
    WPCFLAG_WEB_SETTING_DOWNLOADSBLOCKED = 1,
}

const GUID IID_IWPCWebSettings = {0xFFCCBDB8, 0x0992, 0x4C30, [0xB0, 0xF1, 0x1C, 0xBB, 0x09, 0xC2, 0x40, 0xAA]};
@GUID(0xFFCCBDB8, 0x0992, 0x4C30, [0xB0, 0xF1, 0x1C, 0xBB, 0x09, 0xC2, 0x40, 0xAA]);
interface IWPCWebSettings : IWPCSettings
{
    HRESULT GetSettings(uint* pdwSettings);
    HRESULT RequestURLOverride(HWND hWnd, const(wchar)* pcszURL, uint cURLs, char* ppcszSubURLs, int* pfChanged);
}

enum WPCFLAG_VISIBILITY
{
    WPCFLAG_WPC_VISIBLE = 0,
    WPCFLAG_WPC_HIDDEN = 1,
}

const GUID IID_IWindowsParentalControlsCore = {0x4FF40A0F, 0x3F3B, 0x4D7C, [0xA4, 0x1B, 0x4F, 0x39, 0xD7, 0xB4, 0x4D, 0x05]};
@GUID(0x4FF40A0F, 0x3F3B, 0x4D7C, [0xA4, 0x1B, 0x4F, 0x39, 0xD7, 0xB4, 0x4D, 0x05]);
interface IWindowsParentalControlsCore : IUnknown
{
    HRESULT GetVisibility(WPCFLAG_VISIBILITY* peVisibility);
    HRESULT GetUserSettings(const(wchar)* pcszSID, IWPCSettings* ppSettings);
    HRESULT GetWebSettings(const(wchar)* pcszSID, IWPCWebSettings* ppSettings);
    HRESULT GetWebFilterInfo(Guid* pguidID, ushort** ppszName);
}

const GUID IID_IWindowsParentalControls = {0x28B4D88B, 0xE072, 0x49E6, [0x80, 0x4D, 0x26, 0xED, 0xBE, 0x21, 0xA7, 0xB9]};
@GUID(0x28B4D88B, 0xE072, 0x49E6, [0x80, 0x4D, 0x26, 0xED, 0xBE, 0x21, 0xA7, 0xB9]);
interface IWindowsParentalControls : IWindowsParentalControlsCore
{
    HRESULT GetGamesSettings(const(wchar)* pcszSID, IWPCGamesSettings* ppSettings);
}

const GUID IID_IWPCProviderSupport = {0x41EBA572, 0x23ED, 0x4779, [0xBE, 0xC1, 0x8D, 0xF9, 0x62, 0x06, 0xC4, 0x4C]};
@GUID(0x41EBA572, 0x23ED, 0x4779, [0xBE, 0xC1, 0x8D, 0xF9, 0x62, 0x06, 0xC4, 0x4C]);
interface IWPCProviderSupport : IUnknown
{
    HRESULT GetCurrent(Guid* pguidProvider);
}

