package com.zoloz.android.phone.zdoc.upload;

import android.content.Context;
import android.os.Build;
import com.alipay.bis.common.service.facade.gw.model.common.BisJson.BisBehavCommon;
import com.alipay.bis.common.service.facade.gw.model.common.BisJson.BisBehavLog;
import com.alipay.bis.common.service.facade.gw.model.common.BisJson.BisBehavTask;
import com.alipay.bis.common.service.facade.gw.model.common.BisJson.BisBehavToken;
import com.alipay.bis.common.service.facade.gw.model.common.BisJson.BisClientInfo;
import com.alipay.mobile.security.bio.api.BioDetector;
import com.alipay.mobile.security.bio.service.BioAppDescription;
import com.alipay.mobile.security.bio.service.BioServiceManager;
import com.alipay.mobile.security.bio.utils.FileUtil;
import com.alipay.mobile.security.faceauth.InvokeType;
import com.alipay.mobile.security.faceauth.UserVerifyInfo;
import com.alipay.mobile.security.zim.api.ZIMFacade;
import com.alipay.zoloz.toyger.upload.UploadContent;
import com.zoloz.android.phone.zdoc.module.ZdocRemoteConfig;
import java.lang.reflect.Constructor;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public class UploadManager {
    private BioAppDescription mBioAppDescription;
    private int mBioType;
    private String mBisToken;
    private Context mContext;
    private UploadChannel mUploadChannel;
    private ZdocRemoteConfig mZdocRemoteConfig;
    private String mPublicKey = null;
    private UserVerifyInfo mUserVerfyInfo = null;
    private int mRetryTimes = 0;

    public UploadManager(Context context, BioAppDescription bioAppDescription, ZdocRemoteConfig zdocRemoteConfig) {
        this.mBioAppDescription = null;
        this.mZdocRemoteConfig = null;
        this.mContext = context;
        this.mBioAppDescription = bioAppDescription;
        this.mZdocRemoteConfig = zdocRemoteConfig;
    }

    private BisBehavLog getBehavLogData(InvokeType invokeType) {
        BisBehavLog bisBehavLog = new BisBehavLog();
        BisClientInfo bisClientInfo = new BisClientInfo();
        bisClientInfo.clientVer = "1.0";
        bisClientInfo.model = Build.MODEL;
        bisClientInfo.os = "android";
        bisClientInfo.osVer = Build.VERSION.CODENAME;
        BisBehavToken bisBehavToken = new BisBehavToken();
        bisBehavToken.token = this.mBisToken;
        bisBehavToken.type = this.mBioType;
        bisBehavToken.sampleMode = 300;
        UserVerifyInfo userVerifyInfo = this.mUserVerfyInfo;
        bisBehavToken.apdid = userVerifyInfo.apdid;
        bisBehavToken.bizid = "";
        bisBehavToken.appid = userVerifyInfo.appid;
        bisBehavToken.behid = userVerifyInfo.behid;
        bisBehavToken.uid = userVerifyInfo.userid;
        bisBehavToken.verifyid = userVerifyInfo.verifyid;
        bisBehavToken.vtoken = userVerifyInfo.vtoken;
        Date date = new Date(System.currentTimeMillis());
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy:MM:dd HH:mm:ss");
        BisBehavCommon bisBehavCommon = new BisBehavCommon();
        bisBehavCommon.invtp = invokeType.toString();
        bisBehavCommon.retry = Integer.toString(this.mRetryTimes);
        bisBehavCommon.tm = simpleDateFormat.format((java.util.Date) date);
        ArrayList arrayList = new ArrayList();
        BisBehavTask bisBehavTask = new BisBehavTask();
        bisBehavTask.dur = 0;
        bisBehavTask.idx = "CommonCardActivity";
        bisBehavTask.name = "CommonCardActivity";
        bisBehavTask.quality = 0;
        arrayList.add(bisBehavTask);
        bisBehavLog.behavCommon = bisBehavCommon;
        bisBehavLog.behavTask = arrayList;
        bisBehavLog.behavToken = bisBehavToken;
        bisBehavLog.clientInfo = bisClientInfo;
        return bisBehavLog;
    }

    private void initUserVerifyInfo() {
        this.mUserVerfyInfo = new UserVerifyInfo();
        this.mUserVerfyInfo.apdid = this.mBioAppDescription.getExtProperty().get("APDID") != null ? this.mBioAppDescription.getExtProperty().get("APDID") : "";
        this.mUserVerfyInfo.appid = this.mBioAppDescription.getExtProperty().get("appid") != null ? this.mBioAppDescription.getExtProperty().get("appid") : "";
        this.mUserVerfyInfo.behid = this.mBioAppDescription.getTag();
        this.mUserVerfyInfo.sceid = this.mBioAppDescription.getExtProperty().get("SCENE_ID") != null ? this.mBioAppDescription.getExtProperty().get("SCENE_ID") : "";
        this.mUserVerfyInfo.bistoken = this.mBioAppDescription.getBistoken();
        this.mUserVerfyInfo.userid = this.mBioAppDescription.getExtProperty().get("userid") != null ? this.mBioAppDescription.getExtProperty().get("userid") : "";
        this.mUserVerfyInfo.vtoken = this.mBioAppDescription.getExtProperty().get("TOKEN_ID") != null ? this.mBioAppDescription.getExtProperty().get("TOKEN_ID") : "";
        this.mUserVerfyInfo.verifyid = this.mBioAppDescription.getExtProperty().get(BioDetector.EXT_KEY_VERIFYID) != null ? this.mBioAppDescription.getExtProperty().get(BioDetector.EXT_KEY_VERIFYID) : "";
    }

    public String getPublicKey() {
        String str;
        int env = this.mZdocRemoteConfig.getEnv();
        String str2 = "public key env" + env;
        try {
            if (env == 0) {
                String str3 = this.mBioAppDescription.getExtProperty().get(ZIMFacade.KEY_PUBLIC_KEY_PROD);
                if (str3 == null) {
                    try {
                        str = new String(FileUtil.getAssetsData(this.mContext, "bid-log-key-public.key"));
                    } catch (IllegalArgumentException e2) {
                        e = e2;
                        str = str3;
                        e.toString();
                        return str;
                    } catch (IllegalStateException e3) {
                        e = e3;
                        str = str3;
                        e.toString();
                        return str;
                    }
                } else {
                    str = str3;
                }
            } else {
                String str4 = this.mBioAppDescription.getExtProperty().get(ZIMFacade.KEY_PUBLIC_KEY_TEST);
                if (str4 == null) {
                    try {
                        str = new String(FileUtil.getAssetsData(this.mContext, "bid-log-key-public_t.key"));
                    } catch (IllegalArgumentException e4) {
                        str = str4;
                        e = e4;
                        e.toString();
                        return str;
                    } catch (IllegalStateException e5) {
                        str = str4;
                        e = e5;
                        e.toString();
                        return str;
                    }
                } else {
                    str = str4;
                }
            }
        } catch (IllegalArgumentException e6) {
            e = e6;
            str = "";
        } catch (IllegalStateException e7) {
            e = e7;
            str = "";
        }
        return str;
    }

    public String getmPublicKey() {
        return this.mPublicKey;
    }

    public void init() {
        initUserVerifyInfo();
        this.mBisToken = this.mUserVerfyInfo.bistoken;
        this.mBioType = this.mBioAppDescription.getBioType();
        BioServiceManager currentInstance = BioServiceManager.getCurrentInstance();
        this.mPublicKey = getPublicKey();
        try {
            Constructor<?> constructor = Class.forName("com.zoloz.android.phone.zdoc.upload.UploadChannelByJson").getConstructor(BioServiceManager.class);
            constructor.setAccessible(true);
            this.mUploadChannel = (UploadChannel) constructor.newInstance(currentInstance);
        } catch (Throwable th) {
            th.toString();
        }
    }

    public void setRetryTimes(int i2) {
        this.mRetryTimes = i2;
    }

    public void upload(byte[] bArr, byte[] bArr2, boolean z) {
        this.mUploadChannel.uploadPaperInfo(new UploadContent(bArr, bArr2, z), getBehavLogData(InvokeType.NORMAL), this.mBisToken, this.mPublicKey);
    }

    public void uploadNineShoot(byte[] bArr, byte[] bArr2, boolean z) {
        this.mUploadChannel.uploadNineShoot(new UploadContent(bArr, bArr2, z), getBehavLogData(InvokeType.MONITOR), this.mBisToken, this.mPublicKey);
    }
}
