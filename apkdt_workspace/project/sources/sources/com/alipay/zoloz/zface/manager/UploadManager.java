package com.alipay.zoloz.zface.manager;

import android.content.Context;
import com.alipay.bis.common.service.facade.gw.model.common.BisJson.BisBehavCommon;
import com.alipay.bis.common.service.facade.gw.model.common.BisJson.BisBehavLog;
import com.alipay.mobile.security.bio.service.BioAppDescription;
import com.alipay.mobile.security.bio.service.BioServiceManager;
import com.alipay.mobile.security.faceauth.InvokeType;
import com.alipay.mobile.security.zim.api.ZIMFacade;
import com.alipay.zoloz.toyger.face.ToygerFaceService;
import com.alipay.zoloz.toyger.upload.UploadContent;
import com.alipay.zoloz.zface.beans.FaceRemoteConfig;
import java.lang.reflect.Constructor;
import java.util.Map;

/* loaded from: classes.dex */
public class UploadManager {
    private Map<String, Object> blob;
    private BioAppDescription mBioAppDescription;
    private Context mContext;
    private NineShootManager mNineShootManager;
    ToygerFaceService mToygerFaceService;
    private UploadChannel mUploadChannel;
    private String publicKey;

    public UploadManager(BioServiceManager bioServiceManager, ToygerFaceService toygerFaceService, FaceRemoteConfig faceRemoteConfig, BioAppDescription bioAppDescription) {
        this.mContext = bioServiceManager.getBioApplicationContext();
        this.mToygerFaceService = toygerFaceService;
        this.mBioAppDescription = bioAppDescription;
        this.publicKey = getPublicKey(this.mContext, bioAppDescription, faceRemoteConfig.getEnv());
        try {
            Constructor<?> constructor = Class.forName("com.alipay.zoloz.toyger.upload.UploadChannelByJson").getConstructor(BioServiceManager.class);
            constructor.setAccessible(true);
            this.mUploadChannel = (UploadChannel) constructor.newInstance(bioServiceManager);
        } catch (Throwable unused) {
        }
        this.mNineShootManager = new NineShootManager(faceRemoteConfig, getPublicKey(this.mContext, bioAppDescription, faceRemoteConfig.getEnv()));
    }

    private BisBehavLog getBisBehavLogData(InvokeType invokeType) {
        BisBehavLog bisBehavLog = new BisBehavLog();
        BisBehavCommon bisBehavCommon = new BisBehavCommon();
        bisBehavCommon.invtp = invokeType.toString();
        bisBehavCommon.tm = "";
        bisBehavCommon.retry = "1";
        bisBehavLog.behavCommon = bisBehavCommon;
        return bisBehavLog;
    }

    public static String getPublicKey(Context context, BioAppDescription bioAppDescription, int i2) {
        String str;
        try {
            if (i2 == 0) {
                str = bioAppDescription.getExtProperty().get(ZIMFacade.KEY_PUBLIC_KEY_PROD);
            } else {
                str = bioAppDescription.getExtProperty().get(ZIMFacade.KEY_PUBLIC_KEY_TEST);
            }
            return str;
        } catch (IllegalArgumentException e2) {
            e2.toString();
            return "";
        } catch (IllegalStateException e3) {
            e3.toString();
            return "";
        }
    }

    public void destroy() {
        NineShootManager nineShootManager = this.mNineShootManager;
        if (nineShootManager != null) {
            nineShootManager.destroy();
        }
        this.mToygerFaceService = null;
    }

    public UploadContent getNineShoot() {
        NineShootManager nineShootManager = this.mNineShootManager;
        if (nineShootManager == null) {
            return null;
        }
        return nineShootManager.getUploadContent();
    }

    public NineShootManager getNineShootManager() {
        return this.mNineShootManager;
    }

    public void setBlob(Map<String, Object> map) {
        String str = "set blob:" + map;
        this.blob = map;
    }

    public void uploadFaceInfo(UploadContent uploadContent) {
        if (this.mUploadChannel != null) {
            this.mUploadChannel.uploadFaceInfo(uploadContent, getBisBehavLogData(InvokeType.NORMAL), this.mBioAppDescription.getBistoken(), this.publicKey);
        }
        uploadNineShoot(InvokeType.MONITOR);
    }

    public void uploadNineShoot(InvokeType invokeType) {
        NineShootManager nineShootManager;
        if (this.mUploadChannel == null || (nineShootManager = this.mNineShootManager) == null || !nineShootManager.isNeedUpload()) {
            return;
        }
        this.mUploadChannel.uploadNineShoot(getNineShoot(), getBisBehavLogData(invokeType), this.mBioAppDescription.getBistoken(), this.publicKey);
    }
}
