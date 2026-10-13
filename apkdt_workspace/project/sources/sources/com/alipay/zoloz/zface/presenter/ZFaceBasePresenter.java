package com.alipay.zoloz.zface.presenter;

import a.n.a.a;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.PointF;
import android.os.Bundle;
import android.text.TextUtils;
import com.alibaba.fastjson.JSON;
import com.alipay.mobile.security.bio.api.BioDetector;
import com.alipay.mobile.security.bio.api.BioResponse;
import com.alipay.mobile.security.bio.config.Constant;
import com.alipay.mobile.security.bio.constants.CodeConstants;
import com.alipay.mobile.security.bio.service.BioAppDescription;
import com.alipay.mobile.security.bio.service.BioAppManager;
import com.alipay.mobile.security.bio.service.BioServiceManager;
import com.alipay.mobile.security.bio.service.BioUploadCallBack;
import com.alipay.mobile.security.bio.service.BioUploadResult;
import com.alipay.mobile.security.bio.service.BioUploadService;
import com.alipay.mobile.security.bio.service.local.apsecurity.ApSecurityService;
import com.alipay.mobile.security.bio.utils.NetworkUtil;
import com.alipay.mobile.security.bio.utils.StringUtil;
import com.alipay.mobile.security.bio.workspace.BioFragmentResponse;
import com.alipay.mobile.security.faceauth.InvokeType;
import com.alipay.mobile.security.faceauth.circle.protocol.DeviceSetting;
import com.alipay.zoloz.hardware.camera.CameraData;
import com.alipay.zoloz.hardware.camera.CameraParams;
import com.alipay.zoloz.hardware.camera.ICameraCallback;
import com.alipay.zoloz.hardware.camera.ICameraInterface;
import com.alipay.zoloz.hardware.camera.widget.CameraSurfaceView;
import com.alipay.zoloz.toyger.ToygerService;
import com.alipay.zoloz.toyger.algorithm.TGDepthFrame;
import com.alipay.zoloz.toyger.algorithm.TGFrame;
import com.alipay.zoloz.toyger.algorithm.ToygerCameraConfig;
import com.alipay.zoloz.toyger.face.ToygerFaceAttr;
import com.alipay.zoloz.toyger.face.ToygerFaceCallback;
import com.alipay.zoloz.toyger.face.ToygerFaceService;
import com.alipay.zoloz.toyger.face.ToygerFaceState;
import com.alipay.zoloz.toyger.upload.UploadContent;
import com.alipay.zoloz.zface.beans.AlertData;
import com.alipay.zoloz.zface.beans.FaceRemoteConfig;
import com.alipay.zoloz.zface.beans.FrameStateData;
import com.alipay.zoloz.zface.beans.PreviewData;
import com.alipay.zoloz.zface.beans.ToygerFrame;
import com.alipay.zoloz.zface.beans.UploadData;
import com.alipay.zoloz.zface.manager.AlertManager;
import com.alipay.zoloz.zface.manager.UploadManager;
import com.alipay.zoloz.zface.services.TimeRecord;
import com.alipay.zoloz.zface.services.ToygerIspService;
import com.alipay.zoloz.zface.services.ZFaceRecordService;
import com.alipay.zoloz.zface.utils.ObjectUtil;
import com.alipay.zoloz.zface.utils.Tools;
import com.alipay.zoloz.zface.utils.ToygerFrameUtil;
import com.alipay.zoloz.zface.utils.ToygerMonitor;
import com.ap.zoloz.hummer.biz.HummerConstants;
import java.nio.ByteBuffer;
import java.nio.ShortBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class ZFaceBasePresenter implements BioUploadCallBack, ICameraCallback, ToygerFaceCallback {
    private static final String TAG = "ZFaceCore";
    private Context context;
    private AlertManager mAlertManager;
    private BioAppDescription mBioAppDescription;
    private BioUploadService mBioUploadService;
    private ICameraInterface mCameraInterface;
    private ToygerFrame mCurrentToygerFrame;
    private ToygerMonitor mFpsMonitor;
    private ToygerFaceAttr mHighQualityAttr;
    private a mLocalBroadcastManager;
    private FaceRemoteConfig mRemoteConfig;
    private ToygerIspService mToygerIspService;
    private UploadContent mUploadContent;
    private UploadManager mUploadManager;
    private ZFaceRecordService mZFaceRecordService;
    private ZFaceCallback view;
    private ToygerFaceService mToygerFaceService = new ToygerFaceService();
    private DeviceSetting mDeviceSetting = null;
    private int mAlgorithAngle = 270;
    private boolean isAttached = false;
    private boolean isPaused = false;
    private int frameTime = 0;
    private int mRecordTgResult = 1;
    private int cameraFrameCount = 0;
    private int tgFrameCount = 0;
    private boolean isFirstFrame = true;
    private PreviewData mPreviewData = new PreviewData();

    public ZFaceBasePresenter(ZFaceCallback zFaceCallback, String str, CameraSurfaceView cameraSurfaceView) {
        BioServiceManager currentInstance = BioServiceManager.getCurrentInstance();
        this.mBioAppDescription = ((BioAppManager) currentInstance.getBioService(BioAppManager.class)).getBioAppDescription(str);
        String str2 = "route|get protocol:" + this.mBioAppDescription;
        if (this.mBioAppDescription != null) {
            try {
                this.mRemoteConfig = (FaceRemoteConfig) JSON.parseObject(this.mBioAppDescription.getCfg(), FaceRemoteConfig.class);
            } catch (Exception e2) {
                String str3 = "exception|" + e2.getMessage();
                this.mRemoteConfig = new FaceRemoteConfig();
            }
            this.view = zFaceCallback;
            this.mAlertManager = new AlertManager(this.mRemoteConfig);
            this.mZFaceRecordService = (ZFaceRecordService) currentInstance.getBioService(ZFaceRecordService.class);
            recordExtEntrySDK();
            this.context = currentInstance.getBioApplicationContext();
            this.mBioUploadService = (BioUploadService) currentInstance.getBioService(BioUploadService.class);
            this.mBioUploadService.addCallBack(this);
            this.mToygerIspService = (ToygerIspService) currentInstance.getBioService(ToygerIspService.class);
            this.mUploadManager = new UploadManager(currentInstance, this.mToygerFaceService, this.mRemoteConfig, this.mBioAppDescription);
            this.mLocalBroadcastManager = a.a(this.context);
            this.mCameraInterface = CameraSurfaceView.getCameraImpl(this.context);
            initRotation();
            cameraSurfaceView.setCameraCallback(this);
            ICameraInterface iCameraInterface = this.mCameraInterface;
            if (iCameraInterface != null) {
                iCameraInterface.setCallback(this);
            }
            cameraSurfaceView.init(convert(this.mRemoteConfig.getDeviceSettings()));
            if (this.mCameraInterface != null) {
                ToygerCameraConfig toygerCameraConfig = new ToygerCameraConfig();
                CameraParams cameraParams = this.mCameraInterface.getCameraParams();
                if (cameraParams != null) {
                    toygerCameraConfig.colorIntrin = cameraParams.color_intrin;
                    toygerCameraConfig.depthIntrin = cameraParams.depth_intrin;
                    toygerCameraConfig.color2depthExtrin = cameraParams.extrin;
                    toygerCameraConfig.isAligned = cameraParams.isAligned;
                }
                toygerCameraConfig.roiRect = this.mCameraInterface.getROI();
            }
            Map<String, String> extProperty = this.mBioAppDescription.getExtProperty();
            HashMap hashMap = new HashMap();
            hashMap.put(ToygerService.KEY_PUBLIC_KEY, UploadManager.getPublicKey(this.context, this.mBioAppDescription, this.mRemoteConfig.getEnv()));
            if (extProperty != null && !extProperty.isEmpty() && extProperty.containsKey("meta_serializer")) {
                hashMap.put("meta_serializer", extProperty.get("meta_serializer"));
            }
            String jSONString = this.mRemoteConfig.getUpload() == null ? "" : JSON.toJSONString(this.mRemoteConfig.getUpload());
            String jSONString2 = this.mRemoteConfig.getAlgorithm() == null ? "" : JSON.toJSONString(this.mRemoteConfig.getAlgorithm());
            this.mFpsMonitor = new ToygerMonitor();
            this.mFpsMonitor.initStart();
            if (!this.mToygerFaceService.init2(this.context, (ToygerFaceCallback) this, jSONString2, jSONString, (Map<String, Object>) hashMap)) {
                zFaceCallback.onErrorEvent(this.mAlertManager.parseAlertData(10));
            }
            record(ZFaceRecordService.DETECT_COND_START, null);
            HashMap<String, String> objectToStringMap = ObjectUtil.objectToStringMap(this.mRemoteConfig.getAlgorithm());
            TimeRecord.getInstance().recordTime(ZFaceRecordService.ENTER_DETECTION_START);
            this.mZFaceRecordService.write(ZFaceRecordService.ENTER_DETECTION_START, objectToStringMap);
        }
    }

    private DeviceSetting[] convert(DeviceSetting[] deviceSettingArr) {
        if (deviceSettingArr == null) {
            return null;
        }
        int length = deviceSettingArr.length;
        DeviceSetting[] deviceSettingArr2 = new DeviceSetting[length];
        for (int i2 = 0; i2 < length; i2++) {
            deviceSettingArr2[i2] = new DeviceSetting();
            deviceSettingArr2[i2].setDisplayAuto(deviceSettingArr[i2].isDisplayAuto());
            deviceSettingArr2[i2].setDisplayAngle(deviceSettingArr[i2].getDisplayAngle());
            deviceSettingArr2[i2].setAlgorithmAuto(deviceSettingArr[i2].isAlgorithmAuto());
            deviceSettingArr2[i2].setAlgorithmAngle(deviceSettingArr[i2].getAlgorithmAngle());
            deviceSettingArr2[i2].setCameraAuto(deviceSettingArr[i2].isCameraAuto());
            deviceSettingArr2[i2].setCameraID(deviceSettingArr[i2].getCameraID());
            deviceSettingArr2[i2].setMaxApiLevel(deviceSettingArr[i2].getMaxApiLevel());
            deviceSettingArr2[i2].setMinApiLevel(deviceSettingArr[i2].getMinApiLevel());
        }
        return deviceSettingArr2;
    }

    private void initRotation() {
        DeviceSetting[] deviceSettings = this.mRemoteConfig.getDeviceSettings();
        if (deviceSettings != null && deviceSettings.length > 0) {
            this.mDeviceSetting = deviceSettings[0];
        } else {
            this.mDeviceSetting = new DeviceSetting();
        }
        ICameraInterface iCameraInterface = this.mCameraInterface;
        int cameraViewRotation = (360 - (iCameraInterface != null ? iCameraInterface.getCameraViewRotation() : 0)) % 360;
        if (this.mDeviceSetting.isAlgorithmAuto()) {
            String str = "common|initRotation is auto : " + cameraViewRotation;
            this.mAlgorithAngle = cameraViewRotation;
            return;
        }
        this.mAlgorithAngle = this.mDeviceSetting.getAlgorithmAngle();
        String str2 = "common|initRotation is not auto : " + this.mAlgorithAngle;
    }

    private void onProcessOneImageFinish(TGFrame tGFrame) {
        UploadManager uploadManager = this.mUploadManager;
        if (uploadManager != null) {
            uploadManager.getNineShootManager().shootToygerFrame(tGFrame);
        }
    }

    private void record(String str, Map<String, String> map) {
        ZFaceRecordService zFaceRecordService = this.mZFaceRecordService;
        if (zFaceRecordService != null) {
            zFaceRecordService.write(str, map);
        }
    }

    private void recordExtEntrySDK() {
        ApSecurityService apSecurityService;
        if (this.mBioAppDescription == null) {
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("sceneId", this.mRemoteConfig.getSceneEnv().getSceneCode() + "");
        hashMap.put("uiVersion", this.mRemoteConfig.getUi() + "");
        hashMap.put("verifyId", this.mBioAppDescription.getExtProperty().get(BioDetector.EXT_KEY_VERIFYID));
        String staticApDidToken = ApSecurityService.getStaticApDidToken();
        if (TextUtils.isEmpty(staticApDidToken) && (apSecurityService = (ApSecurityService) BioServiceManager.getCurrentInstance().getBioService(ApSecurityService.class)) != null) {
            staticApDidToken = apSecurityService.getApDidToken();
        }
        hashMap.put("APDIDTOKEN", staticApDidToken);
        hashMap.put("TOKEN_ID", this.mBioAppDescription.getExtProperty().get("TOKEN_ID"));
        hashMap.put("product", "toyger");
        hashMap.put("bioType", "facedetect");
        hashMap.put("networkType", NetworkUtil.getNetworkType(this.context));
        this.mZFaceRecordService.addExtProperties(hashMap);
        this.mZFaceRecordService.write(ZFaceRecordService.ENTRY_SDK, hashMap);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void attachView() {
        this.isAttached = true;
    }

    public void clearUpload() {
        BioUploadService bioUploadService = this.mBioUploadService;
        if (bioUploadService != null) {
            bioUploadService.clearUp();
        }
    }

    public AlertData getAlertData(int i2) {
        AlertManager alertManager = this.mAlertManager;
        if (alertManager == null) {
            return null;
        }
        return alertManager.parseAlertData(i2);
    }

    public BioAppDescription getBioAppDescription() {
        return this.mBioAppDescription;
    }

    public FaceRemoteConfig getFaceRemoteConfig() {
        return this.mRemoteConfig;
    }

    @Override // com.alipay.zoloz.toyger.ToygerCallback
    public PointF onAlignDepthPoint(PointF pointF) {
        PointF pointF2 = new PointF(pointF.x, pointF.y);
        ICameraInterface iCameraInterface = this.mCameraInterface;
        if (iCameraInterface != null) {
            int colorWidth = iCameraInterface.getColorWidth();
            int colorHeight = this.mCameraInterface.getColorHeight();
            int depthWidth = this.mCameraInterface.getDepthWidth();
            int depthHeight = this.mCameraInterface.getDepthHeight();
            PointF pointF3 = new PointF();
            pointF3.x = pointF.x * colorWidth;
            pointF3.y = pointF.y * colorHeight;
            PointF colorToDepth = this.mCameraInterface.colorToDepth(pointF3);
            pointF2.x = colorToDepth.x / depthWidth;
            pointF2.y = colorToDepth.y / depthHeight;
        }
        return pointF2;
    }

    @Override // com.alipay.zoloz.toyger.ToygerCallback
    public boolean onComplete(int i2, byte[] bArr, byte[] bArr2, boolean z) {
        if (this.isPaused) {
            return false;
        }
        this.mRecordTgResult = 0;
        pause();
        if (this.isAttached) {
            Tools.runMainLooper(new Runnable() { // from class: com.alipay.zoloz.zface.presenter.ZFaceBasePresenter.1
                @Override // java.lang.Runnable
                public void run() {
                    ZFaceBasePresenter.this.view.onFrameComplete();
                }
            });
        }
        UploadContent uploadContent = new UploadContent(bArr, bArr2, z);
        Map<String, String> faceParam = ToygerFrameUtil.getFaceParam(this.mCurrentToygerFrame.tgFaceAttr);
        faceParam.put("bis_action", "live_body_end");
        faceParam.put("timecost", String.valueOf(TimeRecord.getInstance().getTimeInterval(ZFaceRecordService.LIVEBODY_START)));
        record(ZFaceRecordService.LIVEBODY_END, faceParam);
        TimeRecord.getInstance().recordTime("uploadStart");
        HashMap hashMap = new HashMap();
        hashMap.put("faceQuality", this.mHighQualityAttr.quality + "");
        if (uploadContent.content != null) {
            String str = (uploadContent.content.length / 1024.0f) + "";
            faceParam.put(HummerConstants.PAYLOAD, str);
            String str2 = "payload " + str;
        }
        record("uploadStart", hashMap);
        this.mUploadContent = uploadContent;
        this.mUploadManager.uploadFaceInfo(uploadContent);
        return true;
    }

    @Override // com.alipay.zoloz.hardware.camera.ICameraCallback
    public void onError(int i2) {
        AlertData parseAlertData;
        String str = "exception|camera error : " + i2;
        if (i2 == -1) {
            parseAlertData = this.mAlertManager.parseAlertData(5);
        } else {
            parseAlertData = this.mAlertManager.parseAlertData(4);
        }
        ZFaceCallback zFaceCallback = this.view;
        if (zFaceCallback != null) {
            zFaceCallback.onErrorEvent(parseAlertData);
        }
    }

    @Override // com.alipay.zoloz.toyger.ToygerCallback
    public boolean onEvent(int i2, Map<String, Object> map) {
        String str = "route|onEvent:" + i2;
        if (i2 != -7) {
            if (i2 == -6) {
                String str2 = getClass().getSimpleName() + ".onEvent() : " + StringUtil.map2String(map);
                return true;
            }
            if (i2 == -3) {
                if (this.isAttached) {
                    this.view.onErrorEvent(this.mAlertManager.parseAlertData(9));
                }
                this.mRecordTgResult = 2;
                return true;
            }
            if (i2 == -2) {
                if (!this.isAttached) {
                    return true;
                }
                this.view.onErrorEvent(this.mAlertManager.parseAlertData(2));
                return true;
            }
            if (i2 == -1) {
                return true;
            }
            if (i2 == 1) {
                String str3 = getClass().getSimpleName() + "onEvent init success";
                this.mFpsMonitor.initEnd();
            }
        }
        return false;
    }

    @Override // com.alipay.zoloz.hardware.camera.ICameraCallback
    public void onPreviewFrame(CameraData cameraData) {
        ArrayList arrayList;
        if (this.isFirstFrame) {
            if (this.mCameraInterface != null) {
                ToygerCameraConfig toygerCameraConfig = new ToygerCameraConfig();
                CameraParams cameraParams = this.mCameraInterface.getCameraParams();
                if (cameraParams != null) {
                    toygerCameraConfig.colorIntrin = cameraParams.color_intrin;
                    toygerCameraConfig.depthIntrin = cameraParams.depth_intrin;
                    toygerCameraConfig.color2depthExtrin = cameraParams.extrin;
                    toygerCameraConfig.isAligned = cameraParams.isAligned;
                }
                toygerCameraConfig.roiRect = this.mCameraInterface.getROI();
            }
            this.isFirstFrame = false;
        }
        if (!this.isPaused) {
            this.cameraFrameCount++;
        }
        if (!this.mToygerIspService.isInitialized()) {
            this.mToygerIspService.init(cameraData.getColorWidth(), cameraData.getColorHeight(), cameraData.getPreviewWidth(), cameraData.getPreviewHeight(), cameraData.getColorFrameMode());
        }
        try {
            ByteBuffer colorData = cameraData.getColorData();
            if (this.isAttached) {
                this.mPreviewData.rgbData = colorData;
                this.mPreviewData.frameMode = cameraData.getColorFrameMode();
                this.mPreviewData.rotation = this.mAlgorithAngle;
                this.view.onPreviewFrame(this.mPreviewData);
            }
            if (colorData != null) {
                arrayList = new ArrayList();
                arrayList.add(new TGFrame(colorData, cameraData.getColorWidth(), cameraData.getColorHeight(), this.mAlgorithAngle, cameraData.getColorFrameMode(), 0));
            } else {
                arrayList = null;
            }
            ShortBuffer depthData = cameraData.getDepthData();
            TGDepthFrame tGDepthFrame = depthData != null ? new TGDepthFrame(depthData, cameraData.getDepthWidth(), cameraData.getDepthHeight(), this.mAlgorithAngle) : null;
            if (this.isPaused || this.mToygerFaceService == null || arrayList == null || !this.mToygerFaceService.processImage(arrayList, tGDepthFrame) || arrayList == null || arrayList.size() <= 0) {
                return;
            }
            onProcessOneImageFinish((TGFrame) arrayList.get(0));
        } catch (Exception e2) {
            String str = "exception|onPreviewFrame|" + e2.getMessage();
        }
    }

    @Override // com.alipay.mobile.security.bio.service.BioUploadCallBack
    public boolean onResponse(BioUploadResult bioUploadResult) {
        HashMap hashMap = new HashMap();
        hashMap.put("serverReturnCode", bioUploadResult.productRetCode + "");
        hashMap.put(HummerConstants.CODE, bioUploadResult.productRetCode + "");
        hashMap.put("productRetCode", bioUploadResult.productRetCode + "");
        hashMap.put("validationRetCode", bioUploadResult.validationRetCode + "");
        hashMap.put("hasNext", bioUploadResult.hasNext + "");
        Map<String, String> map = bioUploadResult.extParams;
        if (map != null && !map.isEmpty()) {
            hashMap.putAll(bioUploadResult.extParams);
        }
        hashMap.put("networkResult", bioUploadResult.productRetCode == 1001 ? "yes" : "no");
        hashMap.put("timecost", String.valueOf(TimeRecord.getInstance().getTimeInterval("uploadStart")));
        if (hashMap.containsKey("avatar")) {
            hashMap.remove("avatar");
        }
        record("uploadEnd", hashMap);
        String str = "response|upload|" + bioUploadResult;
        int i2 = bioUploadResult.productRetCode;
        if (i2 == 1001) {
            UploadData uploadData = new UploadData(bioUploadResult);
            if (this.isAttached) {
                this.view.onUploadSuccess(uploadData);
            }
        } else if (i2 == 2001) {
            AlertData alertData = new AlertData();
            alertData.type = 11;
            alertData.subCode = bioUploadResult.subCode;
            alertData.subMsg = bioUploadResult.subMsg;
            BioFragmentResponse bioFragmentResponse = new BioFragmentResponse();
            bioFragmentResponse.isSucess = false;
            bioFragmentResponse.suggest = bioUploadResult.productRetCode;
            bioFragmentResponse.errorCode = 208;
            String str2 = bioUploadResult.subMsg;
            bioFragmentResponse.resultMessage = str2;
            bioFragmentResponse.subCode = bioUploadResult.subCode;
            bioFragmentResponse.subMsg = str2;
            bioFragmentResponse.ext.put(BioDetector.EXT_KEY_UPLOAD_RESPONSE, JSON.toJSONString(bioUploadResult));
            BioResponse bioResponse = new BioResponse();
            bioResponse.setSuccess(bioFragmentResponse.isSucess);
            bioResponse.setToken(bioFragmentResponse.token);
            bioResponse.subCode = bioFragmentResponse.subCode;
            bioResponse.subMsg = bioFragmentResponse.subMsg;
            bioResponse.setResultMessage(bioFragmentResponse.resultMessage);
            bioResponse.setResult(bioFragmentResponse.errorCode);
            bioResponse.setTag(this.mBioAppDescription.getTag());
            Map<String, String> map2 = bioFragmentResponse.ext;
            if (map2 != null) {
                bioResponse.setExt(map2);
            }
            sendResponse(bioResponse);
            if (this.isAttached) {
                this.view.onErrorEvent(alertData);
            }
        } else if (i2 != 2002) {
            if (i2 != 3001 && i2 != 3002) {
                if (this.isAttached) {
                    AlertData parseAlertData = this.mAlertManager.parseAlertData(2);
                    parseAlertData.subCode = bioUploadResult.subCode;
                    parseAlertData.subMsg = bioUploadResult.subMsg;
                    this.view.onErrorEvent(parseAlertData);
                }
            } else if (this.isAttached) {
                this.view.onErrorEvent(this.mAlertManager.parseAlertData(1));
            }
        } else if (this.isAttached) {
            this.view.onErrorEvent(this.mAlertManager.parseAlertData(0));
        }
        return false;
    }

    @Override // com.alipay.zoloz.toyger.ToygerCallback
    public /* bridge */ /* synthetic */ boolean onStateUpdated(ToygerFaceState toygerFaceState, ToygerFaceAttr toygerFaceAttr, Map map) {
        return onStateUpdated2(toygerFaceState, toygerFaceAttr, (Map<String, Object>) map);
    }

    @Override // com.alipay.zoloz.hardware.camera.ICameraCallback
    public void onSurfaceChanged(double d2, double d3) {
        String str = "route|onSurfaceChanged|width:" + d2 + " height:" + d3;
        ICameraInterface iCameraInterface = this.mCameraInterface;
        int cameraViewRotation = (360 - (iCameraInterface != null ? iCameraInterface.getCameraViewRotation() : 0)) % 360;
        this.view.onSurfaceviewInit(d2, d3);
        if (this.mDeviceSetting.isAlgorithmAuto()) {
            String str2 = "common|initRotation is auto : " + cameraViewRotation;
            this.mAlgorithAngle = cameraViewRotation;
            return;
        }
        this.mAlgorithAngle = this.mDeviceSetting.getAlgorithmAngle();
        String str3 = "common|initRotation is not auto : " + this.mAlgorithAngle;
    }

    @Override // com.alipay.zoloz.hardware.camera.ICameraCallback
    public void onSurfaceCreated() {
        this.mZFaceRecordService.write(ZFaceRecordService.IMAGE_CAPTURE_START);
    }

    @Override // com.alipay.zoloz.hardware.camera.ICameraCallback
    public void onSurfaceDestroyed() {
    }

    public void pause() {
        this.isPaused = true;
    }

    public void retry() {
        this.isPaused = false;
        this.mZFaceRecordService.retry();
        this.mToygerFaceService.reset();
        record(ZFaceRecordService.DETECT_COND_START, null);
    }

    public void retryUpload() {
        UploadContent uploadContent = this.mUploadContent;
        if (uploadContent != null) {
            this.mUploadManager.uploadFaceInfo(uploadContent);
        }
    }

    public void sendResponse(BioResponse bioResponse) {
        HashMap hashMap = new HashMap();
        StringBuilder sb = new StringBuilder();
        sb.append("");
        sb.append(bioResponse != null ? Integer.valueOf(bioResponse.getResult()) : "");
        hashMap.put("returncode", sb.toString());
        this.mZFaceRecordService.write(ZFaceRecordService.CALLBACK_VERIFY_SYSTEM, hashMap);
        bioResponse.setTag(this.mBioAppDescription.getTag());
        Intent intent = new Intent(Constant.BIOLOGY_CALLBACK_ACTION);
        Bundle bundle = new Bundle();
        bundle.putString(Constant.BIOLOGY_INTENT_ACTION_REV, JSON.toJSONString(bioResponse));
        intent.putExtras(bundle);
        this.mLocalBroadcastManager.a(intent);
        if (this.isAttached) {
            this.view.handleFinish(true);
        }
    }

    public void sendResponseWithSubcode(int i2, String str, String str2) {
        String str3 = "route|sendResponseWithSubcode|" + i2 + "," + str + "," + str2;
        BioResponse bioResponse = new BioResponse();
        bioResponse.setSuccess(false);
        bioResponse.setResult(i2);
        bioResponse.subCode = str;
        if (TextUtils.isEmpty(str2)) {
            str2 = CodeConstants.getMessage(bioResponse.subCode);
        }
        bioResponse.subMsg = str2;
        bioResponse.setResultMessage("");
        sendResponse(bioResponse);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void unAttachView() {
        Map<String, String> hashMap;
        ToygerFrame toygerFrame = this.mCurrentToygerFrame;
        if (toygerFrame != null) {
            hashMap = ToygerFrameUtil.getFaceParam(toygerFrame);
        } else {
            hashMap = new HashMap<>();
        }
        hashMap.put("result", "" + this.mRecordTgResult);
        hashMap.put("frameCount", this.cameraFrameCount + "");
        hashMap.put("tgFrameCount", this.tgFrameCount + "");
        ZFaceRecordService zFaceRecordService = this.mZFaceRecordService;
        if (zFaceRecordService != null) {
            zFaceRecordService.write(ZFaceRecordService.IMAGE_CAPTURE_END, hashMap);
        }
        UploadManager uploadManager = this.mUploadManager;
        if (uploadManager != null) {
            uploadManager.uploadNineShoot(InvokeType.MONITOR);
        }
        HashMap hashMap2 = new HashMap();
        ICameraInterface iCameraInterface = this.mCameraInterface;
        String cameraSN = iCameraInterface == null ? "" : iCameraInterface.getCameraSN();
        ICameraInterface iCameraInterface2 = this.mCameraInterface;
        String firmwareVersion = iCameraInterface2 != null ? iCameraInterface2.getFirmwareVersion() : "";
        hashMap2.put("cameraSN", cameraSN);
        hashMap2.put("cameraVN", firmwareVersion);
        ZFaceRecordService zFaceRecordService2 = this.mZFaceRecordService;
        if (zFaceRecordService2 != null) {
            zFaceRecordService2.write(ZFaceRecordService.EXIT_SDK, hashMap2);
        }
        this.isAttached = false;
        ToygerFaceService toygerFaceService = this.mToygerFaceService;
        if (toygerFaceService != null) {
            toygerFaceService.reset();
            this.mToygerFaceService.release();
            this.mToygerFaceService = null;
        }
        ICameraInterface iCameraInterface3 = this.mCameraInterface;
        if (iCameraInterface3 != null) {
            iCameraInterface3.releaseCamera();
            this.mCameraInterface = null;
        }
        this.mCurrentToygerFrame = null;
        UploadManager uploadManager2 = this.mUploadManager;
        if (uploadManager2 != null) {
            uploadManager2.destroy();
            this.mUploadManager = null;
        }
        BioUploadService bioUploadService = this.mBioUploadService;
        if (bioUploadService != null) {
            bioUploadService.clearUp();
            this.mBioUploadService = null;
        }
    }

    @Override // com.alipay.zoloz.toyger.ToygerCallback
    public boolean onHighQualityFrame(Bitmap bitmap, ToygerFaceAttr toygerFaceAttr) {
        this.mHighQualityAttr = toygerFaceAttr;
        if (!this.isAttached) {
            return true;
        }
        this.view.onFrameQualify(bitmap, toygerFaceAttr);
        return true;
    }

    /* renamed from: onStateUpdated, reason: avoid collision after fix types in other method */
    public boolean onStateUpdated2(ToygerFaceState toygerFaceState, ToygerFaceAttr toygerFaceAttr, Map<String, Object> map) {
        if (this.isPaused) {
            return false;
        }
        this.tgFrameCount++;
        this.mFpsMonitor.oneFrameUpdate(this.mZFaceRecordService);
        TGFrame tGFrame = (TGFrame) map.remove(ToygerFaceService.KEY_TOYGER_FRAME);
        TGDepthFrame tGDepthFrame = (TGDepthFrame) map.remove(ToygerFaceService.KEY_TOYGER_DEPTH_FRAME);
        if (tGFrame != null && tGDepthFrame != null) {
            this.mToygerIspService.adjustIsp(tGFrame, tGDepthFrame, toygerFaceState, toygerFaceAttr);
        }
        ToygerFrame toygerFrame = new ToygerFrame();
        toygerFrame.tgFaceState = toygerFaceState;
        toygerFrame.tgFaceAttr = toygerFaceAttr;
        toygerFrame.extInfo = map;
        this.mCurrentToygerFrame = toygerFrame;
        this.frameTime++;
        if (this.frameTime % 5 == 0) {
            this.mZFaceRecordService.write(ZFaceRecordService.FACE_SLICE, ToygerFrameUtil.getFaceParam(this.mCurrentToygerFrame));
        }
        FrameStateData frameStateData = new FrameStateData();
        frameStateData.uiDesState = toygerFaceState.getMessageCode();
        frameStateData.attr = toygerFaceAttr;
        frameStateData.tgFaceState = toygerFaceState;
        frameStateData.extMap = map;
        if (this.isAttached) {
            this.view.onFrameStateUpdate(frameStateData);
        }
        return true;
    }
}
