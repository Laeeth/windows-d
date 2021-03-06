module windows.upnp;

public import system;
public import windows.automation;
public import windows.com;
public import windows.systemservices;

extern(Windows):

const GUID CLSID_UIAnimationManager = {0x4C1FC63A, 0x695C, 0x47E8, [0xA3, 0x39, 0x1A, 0x19, 0x4B, 0xE3, 0xD0, 0xB8]};
@GUID(0x4C1FC63A, 0x695C, 0x47E8, [0xA3, 0x39, 0x1A, 0x19, 0x4B, 0xE3, 0xD0, 0xB8]);
struct UIAnimationManager;

const GUID CLSID_UIAnimationManager2 = {0xD25D8842, 0x8884, 0x4A4A, [0xB3, 0x21, 0x09, 0x13, 0x14, 0x37, 0x9B, 0xDD]};
@GUID(0xD25D8842, 0x8884, 0x4A4A, [0xB3, 0x21, 0x09, 0x13, 0x14, 0x37, 0x9B, 0xDD]);
struct UIAnimationManager2;

const GUID CLSID_UIAnimationTransitionLibrary = {0x1D6322AD, 0xAA85, 0x4EF5, [0xA8, 0x28, 0x86, 0xD7, 0x10, 0x67, 0xD1, 0x45]};
@GUID(0x1D6322AD, 0xAA85, 0x4EF5, [0xA8, 0x28, 0x86, 0xD7, 0x10, 0x67, 0xD1, 0x45]);
struct UIAnimationTransitionLibrary;

const GUID CLSID_UIAnimationTransitionLibrary2 = {0x812F944A, 0xC5C8, 0x4CD9, [0xB0, 0xA6, 0xB3, 0xDA, 0x80, 0x2F, 0x22, 0x8D]};
@GUID(0x812F944A, 0xC5C8, 0x4CD9, [0xB0, 0xA6, 0xB3, 0xDA, 0x80, 0x2F, 0x22, 0x8D]);
struct UIAnimationTransitionLibrary2;

const GUID CLSID_UIAnimationTransitionFactory = {0x8A9B1CDD, 0xFCD7, 0x419C, [0x8B, 0x44, 0x42, 0xFD, 0x17, 0xDB, 0x18, 0x87]};
@GUID(0x8A9B1CDD, 0xFCD7, 0x419C, [0x8B, 0x44, 0x42, 0xFD, 0x17, 0xDB, 0x18, 0x87]);
struct UIAnimationTransitionFactory;

const GUID CLSID_UIAnimationTransitionFactory2 = {0x84302F97, 0x7F7B, 0x4040, [0xB1, 0x90, 0x72, 0xAC, 0x9D, 0x18, 0xE4, 0x20]};
@GUID(0x84302F97, 0x7F7B, 0x4040, [0xB1, 0x90, 0x72, 0xAC, 0x9D, 0x18, 0xE4, 0x20]);
struct UIAnimationTransitionFactory2;

const GUID CLSID_UIAnimationTimer = {0xBFCD4A0C, 0x06B6, 0x4384, [0xB7, 0x68, 0x0D, 0xAA, 0x79, 0x2C, 0x38, 0x0E]};
@GUID(0xBFCD4A0C, 0x06B6, 0x4384, [0xB7, 0x68, 0x0D, 0xAA, 0x79, 0x2C, 0x38, 0x0E]);
struct UIAnimationTimer;

const GUID CLSID_UPnPDeviceFinder = {0xE2085F28, 0xFEB7, 0x404A, [0xB8, 0xE7, 0xE6, 0x59, 0xBD, 0xEA, 0xAA, 0x02]};
@GUID(0xE2085F28, 0xFEB7, 0x404A, [0xB8, 0xE7, 0xE6, 0x59, 0xBD, 0xEA, 0xAA, 0x02]);
struct UPnPDeviceFinder;

const GUID CLSID_UPnPDevices = {0xB9E84FFD, 0xAD3C, 0x40A4, [0xB8, 0x35, 0x08, 0x82, 0xEB, 0xCB, 0xAA, 0xA8]};
@GUID(0xB9E84FFD, 0xAD3C, 0x40A4, [0xB8, 0x35, 0x08, 0x82, 0xEB, 0xCB, 0xAA, 0xA8]);
struct UPnPDevices;

const GUID CLSID_UPnPDevice = {0xA32552C5, 0xBA61, 0x457A, [0xB5, 0x9A, 0xA2, 0x56, 0x1E, 0x12, 0x5E, 0x33]};
@GUID(0xA32552C5, 0xBA61, 0x457A, [0xB5, 0x9A, 0xA2, 0x56, 0x1E, 0x12, 0x5E, 0x33]);
struct UPnPDevice;

const GUID CLSID_UPnPServices = {0xC0BC4B4A, 0xA406, 0x4EFC, [0x93, 0x2F, 0xB8, 0x54, 0x6B, 0x81, 0x00, 0xCC]};
@GUID(0xC0BC4B4A, 0xA406, 0x4EFC, [0x93, 0x2F, 0xB8, 0x54, 0x6B, 0x81, 0x00, 0xCC]);
struct UPnPServices;

const GUID CLSID_UPnPService = {0xC624BA95, 0xFBCB, 0x4409, [0x8C, 0x03, 0x8C, 0xCE, 0xEC, 0x53, 0x3E, 0xF1]};
@GUID(0xC624BA95, 0xFBCB, 0x4409, [0x8C, 0x03, 0x8C, 0xCE, 0xEC, 0x53, 0x3E, 0xF1]);
struct UPnPService;

const GUID CLSID_UPnPDescriptionDocument = {0x1D8A9B47, 0x3A28, 0x4CE2, [0x8A, 0x4B, 0xBD, 0x34, 0xE4, 0x5B, 0xCE, 0xEB]};
@GUID(0x1D8A9B47, 0x3A28, 0x4CE2, [0x8A, 0x4B, 0xBD, 0x34, 0xE4, 0x5B, 0xCE, 0xEB]);
struct UPnPDescriptionDocument;

const GUID CLSID_UPnPDeviceFinderEx = {0x181B54FC, 0x380B, 0x4A75, [0xB3, 0xF1, 0x4A, 0xC4, 0x5E, 0x96, 0x05, 0xB0]};
@GUID(0x181B54FC, 0x380B, 0x4A75, [0xB3, 0xF1, 0x4A, 0xC4, 0x5E, 0x96, 0x05, 0xB0]);
struct UPnPDeviceFinderEx;

const GUID CLSID_UPnPDescriptionDocumentEx = {0x33FD0563, 0xD81A, 0x4393, [0x83, 0xCC, 0x01, 0x95, 0xB1, 0xDA, 0x2F, 0x91]};
@GUID(0x33FD0563, 0xD81A, 0x4393, [0x83, 0xCC, 0x01, 0x95, 0xB1, 0xDA, 0x2F, 0x91]);
struct UPnPDescriptionDocumentEx;

const GUID IID_IUPnPDeviceFinder = {0xADDA3D55, 0x6F72, 0x4319, [0xBF, 0xF9, 0x18, 0x60, 0x0A, 0x53, 0x9B, 0x10]};
@GUID(0xADDA3D55, 0x6F72, 0x4319, [0xBF, 0xF9, 0x18, 0x60, 0x0A, 0x53, 0x9B, 0x10]);
interface IUPnPDeviceFinder : IDispatch
{
    HRESULT FindByType(BSTR bstrTypeURI, uint dwFlags, IUPnPDevices* pDevices);
    HRESULT CreateAsyncFind(BSTR bstrTypeURI, uint dwFlags, IUnknown punkDeviceFinderCallback, int* plFindData);
    HRESULT StartAsyncFind(int lFindData);
    HRESULT CancelAsyncFind(int lFindData);
    HRESULT FindByUDN(BSTR bstrUDN, IUPnPDevice* pDevice);
}

const GUID IID_IUPnPAddressFamilyControl = {0xE3BF6178, 0x694E, 0x459F, [0xA5, 0xA6, 0x19, 0x1E, 0xA0, 0xFF, 0xA1, 0xC7]};
@GUID(0xE3BF6178, 0x694E, 0x459F, [0xA5, 0xA6, 0x19, 0x1E, 0xA0, 0xFF, 0xA1, 0xC7]);
interface IUPnPAddressFamilyControl : IUnknown
{
    HRESULT SetAddressFamily(int dwFlags);
    HRESULT GetAddressFamily(int* pdwFlags);
}

const GUID IID_IUPnPHttpHeaderControl = {0x0405AF4F, 0x8B5C, 0x447C, [0x80, 0xF2, 0xB7, 0x59, 0x84, 0xA3, 0x1F, 0x3C]};
@GUID(0x0405AF4F, 0x8B5C, 0x447C, [0x80, 0xF2, 0xB7, 0x59, 0x84, 0xA3, 0x1F, 0x3C]);
interface IUPnPHttpHeaderControl : IUnknown
{
    HRESULT AddRequestHeaders(BSTR bstrHttpHeaders);
}

const GUID IID_IUPnPDeviceFinderCallback = {0x415A984A, 0x88B3, 0x49F3, [0x92, 0xAF, 0x05, 0x08, 0xBE, 0xDF, 0x0D, 0x6C]};
@GUID(0x415A984A, 0x88B3, 0x49F3, [0x92, 0xAF, 0x05, 0x08, 0xBE, 0xDF, 0x0D, 0x6C]);
interface IUPnPDeviceFinderCallback : IUnknown
{
    HRESULT DeviceAdded(int lFindData, IUPnPDevice pDevice);
    HRESULT DeviceRemoved(int lFindData, BSTR bstrUDN);
    HRESULT SearchComplete(int lFindData);
}

const GUID IID_IUPnPServices = {0x3F8C8E9E, 0x9A7A, 0x4DC8, [0xBC, 0x41, 0xFF, 0x31, 0xFA, 0x37, 0x49, 0x56]};
@GUID(0x3F8C8E9E, 0x9A7A, 0x4DC8, [0xBC, 0x41, 0xFF, 0x31, 0xFA, 0x37, 0x49, 0x56]);
interface IUPnPServices : IDispatch
{
    HRESULT get_Count(int* plCount);
    HRESULT get__NewEnum(IUnknown* ppunk);
    HRESULT get_Item(BSTR bstrServiceId, IUPnPService* ppService);
}

const GUID IID_IUPnPService = {0xA295019C, 0xDC65, 0x47DD, [0x90, 0xDC, 0x7F, 0xE9, 0x18, 0xA1, 0xAB, 0x44]};
@GUID(0xA295019C, 0xDC65, 0x47DD, [0x90, 0xDC, 0x7F, 0xE9, 0x18, 0xA1, 0xAB, 0x44]);
interface IUPnPService : IDispatch
{
    HRESULT QueryStateVariable(BSTR bstrVariableName, VARIANT* pValue);
    HRESULT InvokeAction(BSTR bstrActionName, VARIANT vInActionArgs, VARIANT* pvOutActionArgs, VARIANT* pvRetVal);
    HRESULT get_ServiceTypeIdentifier(BSTR* pVal);
    HRESULT AddCallback(IUnknown pUnkCallback);
    HRESULT get_Id(BSTR* pbstrId);
    HRESULT get_LastTransportStatus(int* plValue);
}

const GUID IID_IUPnPAsyncResult = {0x4D65FD08, 0xD13E, 0x4274, [0x9C, 0x8B, 0xDD, 0x8D, 0x02, 0x8C, 0x86, 0x44]};
@GUID(0x4D65FD08, 0xD13E, 0x4274, [0x9C, 0x8B, 0xDD, 0x8D, 0x02, 0x8C, 0x86, 0x44]);
interface IUPnPAsyncResult : IUnknown
{
    HRESULT AsyncOperationComplete(ulong ullRequestID);
}

const GUID IID_IUPnPServiceAsync = {0x098BDAF5, 0x5EC1, 0x49E7, [0xA2, 0x60, 0xB3, 0xA1, 0x1D, 0xD8, 0x68, 0x0C]};
@GUID(0x098BDAF5, 0x5EC1, 0x49E7, [0xA2, 0x60, 0xB3, 0xA1, 0x1D, 0xD8, 0x68, 0x0C]);
interface IUPnPServiceAsync : IUnknown
{
    HRESULT BeginInvokeAction(BSTR bstrActionName, VARIANT vInActionArgs, IUPnPAsyncResult pAsyncResult, ulong* pullRequestID);
    HRESULT EndInvokeAction(ulong ullRequestID, VARIANT* pvOutActionArgs, VARIANT* pvRetVal);
    HRESULT BeginQueryStateVariable(BSTR bstrVariableName, IUPnPAsyncResult pAsyncResult, ulong* pullRequestID);
    HRESULT EndQueryStateVariable(ulong ullRequestID, VARIANT* pValue);
    HRESULT BeginSubscribeToEvents(IUnknown pUnkCallback, IUPnPAsyncResult pAsyncResult, ulong* pullRequestID);
    HRESULT EndSubscribeToEvents(ulong ullRequestID);
    HRESULT BeginSCPDDownload(IUPnPAsyncResult pAsyncResult, ulong* pullRequestID);
    HRESULT EndSCPDDownload(ulong ullRequestID, BSTR* pbstrSCPDDoc);
    HRESULT CancelAsyncOperation(ulong ullRequestID);
}

const GUID IID_IUPnPServiceCallback = {0x31FADCA9, 0xAB73, 0x464B, [0xB6, 0x7D, 0x5C, 0x1D, 0x0F, 0x83, 0xC8, 0xB8]};
@GUID(0x31FADCA9, 0xAB73, 0x464B, [0xB6, 0x7D, 0x5C, 0x1D, 0x0F, 0x83, 0xC8, 0xB8]);
interface IUPnPServiceCallback : IUnknown
{
    HRESULT StateVariableChanged(IUPnPService pus, const(wchar)* pcwszStateVarName, VARIANT vaValue);
    HRESULT ServiceInstanceDied(IUPnPService pus);
}

const GUID IID_IUPnPServiceEnumProperty = {0x38873B37, 0x91BB, 0x49F4, [0xB2, 0x49, 0x2E, 0x8E, 0xFB, 0xB8, 0xA8, 0x16]};
@GUID(0x38873B37, 0x91BB, 0x49F4, [0xB2, 0x49, 0x2E, 0x8E, 0xFB, 0xB8, 0xA8, 0x16]);
interface IUPnPServiceEnumProperty : IUnknown
{
    HRESULT SetServiceEnumProperty(uint dwMask);
}

const GUID IID_IUPnPServiceDocumentAccess = {0x21905529, 0x0A5E, 0x4589, [0x82, 0x5D, 0x7E, 0x6D, 0x87, 0xEA, 0x69, 0x98]};
@GUID(0x21905529, 0x0A5E, 0x4589, [0x82, 0x5D, 0x7E, 0x6D, 0x87, 0xEA, 0x69, 0x98]);
interface IUPnPServiceDocumentAccess : IUnknown
{
    HRESULT GetDocumentURL(BSTR* pbstrDocUrl);
    HRESULT GetDocument(BSTR* pbstrDoc);
}

const GUID IID_IUPnPDevices = {0xFDBC0C73, 0xBDA3, 0x4C66, [0xAC, 0x4F, 0xF2, 0xD9, 0x6F, 0xDA, 0xD6, 0x8C]};
@GUID(0xFDBC0C73, 0xBDA3, 0x4C66, [0xAC, 0x4F, 0xF2, 0xD9, 0x6F, 0xDA, 0xD6, 0x8C]);
interface IUPnPDevices : IDispatch
{
    HRESULT get_Count(int* plCount);
    HRESULT get__NewEnum(IUnknown* ppunk);
    HRESULT get_Item(BSTR bstrUDN, IUPnPDevice* ppDevice);
}

const GUID IID_IUPnPDevice = {0x3D44D0D1, 0x98C9, 0x4889, [0xAC, 0xD1, 0xF9, 0xD6, 0x74, 0xBF, 0x22, 0x21]};
@GUID(0x3D44D0D1, 0x98C9, 0x4889, [0xAC, 0xD1, 0xF9, 0xD6, 0x74, 0xBF, 0x22, 0x21]);
interface IUPnPDevice : IDispatch
{
    HRESULT get_IsRootDevice(short* pvarb);
    HRESULT get_RootDevice(IUPnPDevice* ppudRootDevice);
    HRESULT get_ParentDevice(IUPnPDevice* ppudDeviceParent);
    HRESULT get_HasChildren(short* pvarb);
    HRESULT get_Children(IUPnPDevices* ppudChildren);
    HRESULT get_UniqueDeviceName(BSTR* pbstr);
    HRESULT get_FriendlyName(BSTR* pbstr);
    HRESULT get_Type(BSTR* pbstr);
    HRESULT get_PresentationURL(BSTR* pbstr);
    HRESULT get_ManufacturerName(BSTR* pbstr);
    HRESULT get_ManufacturerURL(BSTR* pbstr);
    HRESULT get_ModelName(BSTR* pbstr);
    HRESULT get_ModelNumber(BSTR* pbstr);
    HRESULT get_Description(BSTR* pbstr);
    HRESULT get_ModelURL(BSTR* pbstr);
    HRESULT get_UPC(BSTR* pbstr);
    HRESULT get_SerialNumber(BSTR* pbstr);
    HRESULT IconURL(BSTR bstrEncodingFormat, int lSizeX, int lSizeY, int lBitDepth, BSTR* pbstrIconURL);
    HRESULT get_Services(IUPnPServices* ppusServices);
}

const GUID IID_IUPnPDeviceDocumentAccess = {0xE7772804, 0x3287, 0x418E, [0x90, 0x72, 0xCF, 0x2B, 0x47, 0x23, 0x89, 0x81]};
@GUID(0xE7772804, 0x3287, 0x418E, [0x90, 0x72, 0xCF, 0x2B, 0x47, 0x23, 0x89, 0x81]);
interface IUPnPDeviceDocumentAccess : IUnknown
{
    HRESULT GetDocumentURL(BSTR* pbstrDocument);
}

const GUID IID_IUPnPDeviceDocumentAccessEx = {0xC4BC4050, 0x6178, 0x4BD1, [0xA4, 0xB8, 0x63, 0x98, 0x32, 0x1F, 0x32, 0x47]};
@GUID(0xC4BC4050, 0x6178, 0x4BD1, [0xA4, 0xB8, 0x63, 0x98, 0x32, 0x1F, 0x32, 0x47]);
interface IUPnPDeviceDocumentAccessEx : IUnknown
{
    HRESULT GetDocument(BSTR* pbstrDocument);
}

const GUID IID_IUPnPDescriptionDocument = {0x11D1C1B2, 0x7DAA, 0x4C9E, [0x95, 0x95, 0x7F, 0x82, 0xED, 0x20, 0x6D, 0x1E]};
@GUID(0x11D1C1B2, 0x7DAA, 0x4C9E, [0x95, 0x95, 0x7F, 0x82, 0xED, 0x20, 0x6D, 0x1E]);
interface IUPnPDescriptionDocument : IDispatch
{
    HRESULT get_ReadyState(int* plReadyState);
    HRESULT Load(BSTR bstrUrl);
    HRESULT LoadAsync(BSTR bstrUrl, IUnknown punkCallback);
    HRESULT get_LoadResult(int* phrError);
    HRESULT Abort();
    HRESULT RootDevice(IUPnPDevice* ppudRootDevice);
    HRESULT DeviceByUDN(BSTR bstrUDN, IUPnPDevice* ppudDevice);
}

const GUID IID_IUPnPDeviceFinderAddCallbackWithInterface = {0x983DFC0B, 0x1796, 0x44DF, [0x89, 0x75, 0xCA, 0x54, 0x5B, 0x62, 0x0E, 0xE5]};
@GUID(0x983DFC0B, 0x1796, 0x44DF, [0x89, 0x75, 0xCA, 0x54, 0x5B, 0x62, 0x0E, 0xE5]);
interface IUPnPDeviceFinderAddCallbackWithInterface : IUnknown
{
    HRESULT DeviceAddedWithInterface(int lFindData, IUPnPDevice pDevice, Guid* pguidInterface);
}

const GUID IID_IUPnPDescriptionDocumentCallback = {0x77394C69, 0x5486, 0x40D6, [0x9B, 0xC3, 0x49, 0x91, 0x98, 0x3E, 0x02, 0xDA]};
@GUID(0x77394C69, 0x5486, 0x40D6, [0x9B, 0xC3, 0x49, 0x91, 0x98, 0x3E, 0x02, 0xDA]);
interface IUPnPDescriptionDocumentCallback : IUnknown
{
    HRESULT LoadComplete(HRESULT hrLoadResult);
}

const GUID CLSID_UPnPRegistrar = {0x204810B9, 0x73B2, 0x11D4, [0xBF, 0x42, 0x00, 0xB0, 0xD0, 0x11, 0x8B, 0x56]};
@GUID(0x204810B9, 0x73B2, 0x11D4, [0xBF, 0x42, 0x00, 0xB0, 0xD0, 0x11, 0x8B, 0x56]);
struct UPnPRegistrar;

const GUID CLSID_UPnPRemoteEndpointInfo = {0x2E5E84E9, 0x4049, 0x4244, [0xB7, 0x28, 0x2D, 0x24, 0x22, 0x71, 0x57, 0xC7]};
@GUID(0x2E5E84E9, 0x4049, 0x4244, [0xB7, 0x28, 0x2D, 0x24, 0x22, 0x71, 0x57, 0xC7]);
struct UPnPRemoteEndpointInfo;

const GUID IID_IUPnPEventSink = {0x204810B4, 0x73B2, 0x11D4, [0xBF, 0x42, 0x00, 0xB0, 0xD0, 0x11, 0x8B, 0x56]};
@GUID(0x204810B4, 0x73B2, 0x11D4, [0xBF, 0x42, 0x00, 0xB0, 0xD0, 0x11, 0x8B, 0x56]);
interface IUPnPEventSink : IUnknown
{
    HRESULT OnStateChanged(uint cChanges, char* rgdispidChanges);
    HRESULT OnStateChangedSafe(VARIANT varsadispidChanges);
}

const GUID IID_IUPnPEventSource = {0x204810B5, 0x73B2, 0x11D4, [0xBF, 0x42, 0x00, 0xB0, 0xD0, 0x11, 0x8B, 0x56]};
@GUID(0x204810B5, 0x73B2, 0x11D4, [0xBF, 0x42, 0x00, 0xB0, 0xD0, 0x11, 0x8B, 0x56]);
interface IUPnPEventSource : IUnknown
{
    HRESULT Advise(IUPnPEventSink pesSubscriber);
    HRESULT Unadvise(IUPnPEventSink pesSubscriber);
}

const GUID IID_IUPnPRegistrar = {0x204810B6, 0x73B2, 0x11D4, [0xBF, 0x42, 0x00, 0xB0, 0xD0, 0x11, 0x8B, 0x56]};
@GUID(0x204810B6, 0x73B2, 0x11D4, [0xBF, 0x42, 0x00, 0xB0, 0xD0, 0x11, 0x8B, 0x56]);
interface IUPnPRegistrar : IUnknown
{
    HRESULT RegisterDevice(BSTR bstrXMLDesc, BSTR bstrProgIDDeviceControlClass, BSTR bstrInitString, BSTR bstrContainerId, BSTR bstrResourcePath, int nLifeTime, BSTR* pbstrDeviceIdentifier);
    HRESULT RegisterRunningDevice(BSTR bstrXMLDesc, IUnknown punkDeviceControl, BSTR bstrInitString, BSTR bstrResourcePath, int nLifeTime, BSTR* pbstrDeviceIdentifier);
    HRESULT RegisterDeviceProvider(BSTR bstrProviderName, BSTR bstrProgIDProviderClass, BSTR bstrInitString, BSTR bstrContainerId);
    HRESULT GetUniqueDeviceName(BSTR bstrDeviceIdentifier, BSTR bstrTemplateUDN, BSTR* pbstrUDN);
    HRESULT UnregisterDevice(BSTR bstrDeviceIdentifier, BOOL fPermanent);
    HRESULT UnregisterDeviceProvider(BSTR bstrProviderName);
}

const GUID IID_IUPnPReregistrar = {0x204810B7, 0x73B2, 0x11D4, [0xBF, 0x42, 0x00, 0xB0, 0xD0, 0x11, 0x8B, 0x56]};
@GUID(0x204810B7, 0x73B2, 0x11D4, [0xBF, 0x42, 0x00, 0xB0, 0xD0, 0x11, 0x8B, 0x56]);
interface IUPnPReregistrar : IUnknown
{
    HRESULT ReregisterDevice(BSTR bstrDeviceIdentifier, BSTR bstrXMLDesc, BSTR bstrProgIDDeviceControlClass, BSTR bstrInitString, BSTR bstrContainerId, BSTR bstrResourcePath, int nLifeTime);
    HRESULT ReregisterRunningDevice(BSTR bstrDeviceIdentifier, BSTR bstrXMLDesc, IUnknown punkDeviceControl, BSTR bstrInitString, BSTR bstrResourcePath, int nLifeTime);
}

const GUID IID_IUPnPDeviceControl = {0x204810BA, 0x73B2, 0x11D4, [0xBF, 0x42, 0x00, 0xB0, 0xD0, 0x11, 0x8B, 0x56]};
@GUID(0x204810BA, 0x73B2, 0x11D4, [0xBF, 0x42, 0x00, 0xB0, 0xD0, 0x11, 0x8B, 0x56]);
interface IUPnPDeviceControl : IUnknown
{
    HRESULT Initialize(BSTR bstrXMLDesc, BSTR bstrDeviceIdentifier, BSTR bstrInitString);
    HRESULT GetServiceObject(BSTR bstrUDN, BSTR bstrServiceId, IDispatch* ppdispService);
}

const GUID IID_IUPnPDeviceControlHttpHeaders = {0x204810BB, 0x73B2, 0x11D4, [0xBF, 0x42, 0x00, 0xB0, 0xD0, 0x11, 0x8B, 0x56]};
@GUID(0x204810BB, 0x73B2, 0x11D4, [0xBF, 0x42, 0x00, 0xB0, 0xD0, 0x11, 0x8B, 0x56]);
interface IUPnPDeviceControlHttpHeaders : IUnknown
{
    HRESULT GetAdditionalResponseHeaders(BSTR* bstrHttpResponseHeaders);
}

const GUID IID_IUPnPDeviceProvider = {0x204810B8, 0x73B2, 0x11D4, [0xBF, 0x42, 0x00, 0xB0, 0xD0, 0x11, 0x8B, 0x56]};
@GUID(0x204810B8, 0x73B2, 0x11D4, [0xBF, 0x42, 0x00, 0xB0, 0xD0, 0x11, 0x8B, 0x56]);
interface IUPnPDeviceProvider : IUnknown
{
    HRESULT Start(BSTR bstrInitString);
    HRESULT Stop();
}

const GUID IID_IUPnPRemoteEndpointInfo = {0xC92EB863, 0x0269, 0x4AFF, [0x9C, 0x72, 0x75, 0x32, 0x1B, 0xBA, 0x29, 0x52]};
@GUID(0xC92EB863, 0x0269, 0x4AFF, [0x9C, 0x72, 0x75, 0x32, 0x1B, 0xBA, 0x29, 0x52]);
interface IUPnPRemoteEndpointInfo : IUnknown
{
    HRESULT GetDwordValue(BSTR bstrValueName, uint* pdwValue);
    HRESULT GetStringValue(BSTR bstrValueName, BSTR* pbstrValue);
    HRESULT GetGuidValue(BSTR bstrValueName, Guid* pguidValue);
}

