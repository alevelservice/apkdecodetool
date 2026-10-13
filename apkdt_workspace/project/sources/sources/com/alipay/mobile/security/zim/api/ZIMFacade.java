package com.alipay.mobile.security.zim.api;

import android.app.Application;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.text.TextUtils;
import com.alibaba.fastjson.JSON;
import com.alipay.bis.common.service.facade.gw.zim.ZimInitGwResponse;
import com.alipay.mobile.security.bio.api.BioDetectorBuilder;
import com.alipay.mobile.security.bio.runtime.Runtime;
import com.alipay.mobile.security.bio.service.BioServiceManager;
import com.alipay.mobile.security.bio.service.local.apsecurity.ApSecurityService;
import com.alipay.mobile.security.bio.service.local.monitorlog.MonitorLogService;
import com.alipay.mobile.security.bio.utils.DeviceUtil;
import com.alipay.mobile.security.bio.workspace.Env;
import com.alipay.mobile.security.zim.biz.RecordProcessor;
import com.alipay.mobile.security.zim.biz.ZimActivityLifecycleCallbacks;
import com.alipay.mobile.security.zim.biz.ZimComponentCallbacks;
import com.alipay.mobile.security.zim.info.AppDataProvider;
import com.alipay.mobile.security.zim.msgchannel.ZimMessageChannel;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class ZIMFacade {
    public static final int COMMAND_CANCLE = 4099;
    public static final int COMMAND_SERVER_CONTINUE = 4098;
    public static final int COMMAND_SERVER_FAIL = 8193;
    public static final int COMMAND_SERVER_RETRY = 8194;
    public static final int COMMAND_SERVER_SUCCESS = 4097;
    public static final int COMMAND_VALIDATE_FAIL = 4100;
    public static final String KEY_AUTO_CLOSE = "zimAutoClose";
    public static final String KEY_AVATAR = "avatar";
    public static final String KEY_BIO_ACTION = "zimAction";
    public static final String KEY_BIZ_DATA = "bizData";
    public static final String KEY_CERT_NAME = "certName";
    public static final String KEY_CERT_NO = "certNo";
    public static final String KEY_ENV_NAME = "env_name";
    public static final String KEY_FACE_PAY_INFO = "facepayInfoMap";
    public static final String KEY_FACE_TOKEN = "ftoken";
    public static final String KEY_INIT_RESP = "zimInitResp";
    public static final String KEY_INIT_RESP_OLD = "zim.init.resp";
    public static final String KEY_LOCALE = "locale";
    public static final String KEY_PUBLIC_KEY_PROD = "public_key_prod";
    public static final String KEY_PUBLIC_KEY_TEST = "public_key_test";
    public static final String KEY_ZIM_MSG_CHANNEL = "zimMessageChannel";
    public static final String TAG = "ZimPlatform";
    protected static Map<String, Object> mCustomEnvs = new HashMap();
    private static String ZIM_VERSION = "1.0.0";

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0123, code lost:
    
        if (android.text.TextUtils.isEmpty(r7) == false) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x007c, code lost:
    
        if (android.text.TextUtils.isEmpty(r7) == false) goto L14;
     */
    /* JADX WARN: Removed duplicated region for block: B:20:0x010b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String getApDidToken(android.content.Context r7) {
        /*
            Method dump skipped, instructions count: 312
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alipay.mobile.security.zim.api.ZIMFacade.getApDidToken(android.content.Context):java.lang.String");
    }

    public static String getMetaInfos(Context context) {
        return getMetaInfos(context, null);
    }

    public static ZIMMetaInfo getZimMetaInfo(Context context) {
        return getZimMetaInfo(context, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void initEnv(Context context, String str) {
        StringBuilder sb;
        if (!DeviceUtil.isDebug(context)) {
            String str2 = "initEnv(). envName=[" + str + "] is ignored, because only debug apk can set env manually.";
            str = null;
        }
        if (TextUtils.isEmpty(str)) {
            try {
                ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
                if (applicationInfo != null && applicationInfo.metaData != null) {
                    str = applicationInfo.metaData.getString(KEY_ENV_NAME);
                }
                sb = new StringBuilder();
            } catch (PackageManager.NameNotFoundException unused) {
                sb = new StringBuilder();
            } catch (Throwable th) {
                String str3 = "ApplicationInfo.metaData.env_name == " + str;
                throw th;
            }
            sb.append("ApplicationInfo.metaData.env_name == ");
            sb.append(str);
            sb.toString();
        }
        if (TextUtils.isEmpty(str)) {
            str = Env.NAME_ONLINE;
        }
        String str4 = "initEnv() : env=" + str;
        Env envByName = Env.getEnvByName(str);
        if (envByName != null) {
            BioServiceManager.setEnv(envByName);
        }
    }

    public static void install(Context context, Map<String, Object> map) {
        if (map != null && map.containsKey(KEY_ENV_NAME)) {
            initEnv(context, (String) map.remove(KEY_ENV_NAME));
        }
        install(context);
    }

    public static void setEnv(Map<String, Object> map) {
        mCustomEnvs.putAll(map);
    }

    public abstract void command(int i2);

    public abstract void destroy();

    public abstract void init(String str, ZimInitGwResponse zimInitGwResponse, Map<String, String> map, ZIMCallback zIMCallback);

    public abstract void init(String str, ZimInitGwResponse zimInitGwResponse, Map<String, String> map, ZimMessageChannel zimMessageChannel, ZIMCallback zIMCallback);

    public abstract ZimInitGwResponse parse(String str);

    public abstract void retry();

    public abstract void retry(String str);

    public abstract void verify(String str, ZimInitGwResponse zimInitGwResponse, Map<String, String> map, ZIMCallback zIMCallback);

    public abstract void verify(String str, ZimInitGwResponse zimInitGwResponse, Map<String, String> map, ZimMessageChannel zimMessageChannel, ZIMCallback zIMCallback);

    public abstract void verify(String str, Map<String, String> map, ZIMCallback zIMCallback);

    public abstract void verify(String str, Map<String, String> map, ZimMessageChannel zimMessageChannel, ZIMCallback zIMCallback);

    public static String getMetaInfos(Context context, Map<String, Object> map) {
        return getMetaInfos(context, map, true);
    }

    public static ZIMMetaInfo getZimMetaInfo(Context context, Map<String, Object> map) {
        AppDataProvider appDataProvider = new AppDataProvider() { // from class: com.alipay.mobile.security.zim.api.ZIMFacade.1
            @Override // com.alipay.mobile.security.zim.info.AppDataProvider
            public String getApdidToken(Context context2) {
                return ZIMFacade.getApDidToken(context2);
            }

            @Override // com.alipay.mobile.security.zim.info.AppDataProvider
            public String getAppName(Context context2) {
                return context2 == null ? "" : context2.getPackageName();
            }

            @Override // com.alipay.mobile.security.zim.info.AppDataProvider
            public String getAppVersion(Context context2) {
                try {
                    return context2.getPackageManager().getPackageInfo(context2.getPackageName(), 0).versionName;
                } catch (PackageManager.NameNotFoundException unused) {
                    return "";
                }
            }

            @Override // com.alipay.mobile.security.zim.info.AppDataProvider
            public String getDeviceModel() {
                return Build.MODEL;
            }

            @Override // com.alipay.mobile.security.zim.info.AppDataProvider
            public String getDeviceType() {
                return "android";
            }

            @Override // com.alipay.mobile.security.zim.info.AppDataProvider
            public String getOsVersion() {
                return Build.VERSION.RELEASE;
            }
        };
        ZIMMetaInfo zIMMetaInfo = new ZIMMetaInfo();
        zIMMetaInfo.setApdidToken(appDataProvider.getApdidToken(context));
        zIMMetaInfo.setAppName(appDataProvider.getAppName(context));
        zIMMetaInfo.setAppVersion(appDataProvider.getAppVersion(context));
        zIMMetaInfo.setDeviceModel(appDataProvider.getDeviceModel());
        zIMMetaInfo.setDeviceType(appDataProvider.getDeviceType());
        zIMMetaInfo.setOsVersion(appDataProvider.getOsVersion());
        zIMMetaInfo.setBioMetaInfo(BioDetectorBuilder.getMetaInfos(context, map));
        zIMMetaInfo.setZimVer(ZIM_VERSION);
        return zIMMetaInfo;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static String getMetaInfos(Context context, Map<String, Object> map, boolean z) {
        if (z) {
            RecordProcessor.createInstance(context);
        }
        try {
            return JSON.toJSONString(getZimMetaInfo(context, map));
        } catch (Throwable unused) {
            return "";
        }
    }

    public static void install(Context context) {
        MonitorLogService monitorLogService = (MonitorLogService) BioServiceManager.getLocalService(context, MonitorLogService.class);
        if (monitorLogService != null) {
            monitorLogService.install(context);
        }
        ApSecurityService apSecurityService = (ApSecurityService) BioServiceManager.getLocalService(context, ApSecurityService.class);
        if (apSecurityService != null) {
            apSecurityService.init(context);
        }
        if (Runtime.isRunningOnQuinox(context)) {
            return;
        }
        Application application = (Application) context.getApplicationContext();
        ZimActivityLifecycleCallbacks.getInstance(application);
        ZimComponentCallbacks.getInstance(application);
    }
}
