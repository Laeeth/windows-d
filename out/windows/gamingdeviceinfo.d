module windows.gamingdeviceinfo;

public import windows.com;

extern(Windows):

enum GAMING_DEVICE_VENDOR_ID
{
    GAMING_DEVICE_VENDOR_ID_NONE = 0,
    GAMING_DEVICE_VENDOR_ID_MICROSOFT = -1024700366,
}

enum GAMING_DEVICE_DEVICE_ID
{
    GAMING_DEVICE_DEVICE_ID_NONE = 0,
    GAMING_DEVICE_DEVICE_ID_XBOX_ONE = 1988865574,
    GAMING_DEVICE_DEVICE_ID_XBOX_ONE_S = 712204761,
    GAMING_DEVICE_DEVICE_ID_XBOX_ONE_X = 1523980231,
    GAMING_DEVICE_DEVICE_ID_XBOX_ONE_X_DEVKIT = 284675555,
}

struct GAMING_DEVICE_MODEL_INFORMATION
{
    GAMING_DEVICE_VENDOR_ID vendorId;
    GAMING_DEVICE_DEVICE_ID deviceId;
}

@DllImport("api-ms-win-gaming-deviceinformation-l1-1-0.dll")
HRESULT GetGamingDeviceModelInformation(GAMING_DEVICE_MODEL_INFORMATION* information);

