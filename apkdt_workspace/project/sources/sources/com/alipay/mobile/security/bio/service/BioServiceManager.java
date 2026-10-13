package com.alipay.mobile.security.bio.service;

import android.content.Context;
import android.os.Process;
import android.text.TextUtils;
import com.alipay.mobile.security.bio.exception.BioIllegalArgumentException;
import com.alipay.mobile.security.bio.exception.InvalidCallException;
import com.alipay.mobile.security.bio.module.MicroModule;
import com.alipay.mobile.security.bio.runtime.Runtime;
import com.alipay.mobile.security.bio.service.impl.BioServiceManagerImpl;
import com.alipay.mobile.security.bio.service.local.LocalService;
import com.alipay.mobile.security.bio.service.local.monitorlog.MonitorLogService;
import com.alipay.mobile.security.bio.workspace.Env;

/* loaded from: classes.dex */
public abstract class BioServiceManager {
    private static Env ENV = Env.ONLINE;
    public static final String TAG = "BioServiceManager";
    protected static BioServiceManager sInstance;
    protected final Context mContext;
    private final String mZimId;

    /* JADX INFO: Access modifiers changed from: protected */
    public BioServiceManager(Context context, String str) {
        if (context != null) {
            this.mContext = context;
            this.mZimId = str;
            return;
        }
        throw new BioIllegalArgumentException();
    }

    @Deprecated
    public static synchronized void createInstance(Context context) {
        synchronized (BioServiceManager.class) {
            if (sInstance == null) {
                sInstance = new BioServiceManagerImpl(context, null);
            } else {
                new InvalidCallException("BioServiceManager.createInstance(Context) : null != sInstance");
            }
        }
    }

    public static void destroyInstance() {
        BioServiceManager bioServiceManager = sInstance;
        if (bioServiceManager != null) {
            bioServiceManager.destroy();
            String str = "BioServiceManager.destroyInstance() zimId=" + sInstance.mZimId;
            sInstance = null;
        }
    }

    public static BioServiceManager getCurrentInstance() {
        return sInstance;
    }

    public static Env getEnv() {
        return ENV;
    }

    public static <T extends LocalService> T getLocalService(Context context, Class<T> cls) {
        return (T) getLocalService(context, Runtime.getBioServiceDescriptionByInterface(context, cls.getName()));
    }

    public static void setEnv(Env env) {
        if (ENV != env) {
            ENV = env;
            String str = "setEnv: " + env.name;
        }
    }

    protected abstract void destroy();

    public Context getBioApplicationContext() {
        return this.mContext;
    }

    public abstract <T> T getBioService(Class<T> cls);

    public abstract <T> T getBioService(String str);

    public abstract int preLoad();

    public abstract <T extends BioService> T putBioService(String str, Class<T> cls);

    public abstract String startBioActivity(BioAppDescription bioAppDescription, MicroModule microModule);

    /* JADX WARN: Removed duplicated region for block: B:8:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static <T extends com.alipay.mobile.security.bio.service.local.LocalService> T getLocalService(android.content.Context r1, com.alipay.mobile.security.bio.service.BioServiceDescription r2) {
        /*
            r0 = 0
            if (r2 == 0) goto L10
            java.lang.Class r2 = r2.getClazz()
            if (r2 == 0) goto L10
            java.lang.Object r2 = r2.newInstance()     // Catch: java.lang.Throwable -> L10
            com.alipay.mobile.security.bio.service.local.LocalService r2 = (com.alipay.mobile.security.bio.service.local.LocalService) r2     // Catch: java.lang.Throwable -> L10
            goto L11
        L10:
            r2 = r0
        L11:
            if (r2 == 0) goto L1d
            android.content.Context r1 = r1.getApplicationContext()
            r2.setContext(r1)
            r2.create(r0)
        L1d:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alipay.mobile.security.bio.service.BioServiceManager.getLocalService(android.content.Context, com.alipay.mobile.security.bio.service.BioServiceDescription):com.alipay.mobile.security.bio.service.local.LocalService");
    }

    public static synchronized void createInstance(Context context, String str) {
        synchronized (BioServiceManager.class) {
            if (sInstance == null) {
                String str2 = "BioServiceManager.createInstance() zimId=" + str;
                sInstance = new BioServiceManagerImpl(context, str);
            } else if (TextUtils.isEmpty(sInstance.mZimId)) {
                new InvalidCallException("BioServiceManager already exist with zimId=null");
                sInstance.destroy();
                sInstance = new BioServiceManagerImpl(context, str);
            } else if (TextUtils.equals(sInstance.mZimId, str)) {
                String str3 = "Reuse the BioServiceManager.sInstance for zimId=" + str;
            } else {
                MonitorLogService monitorLogService = (MonitorLogService) sInstance.getBioService(MonitorLogService.class);
                if (monitorLogService != null) {
                    monitorLogService.trigUpload();
                }
                new InvalidCallException("BioServiceManager already exist with zimId=" + sInstance.mZimId);
                Process.killProcess(Process.myPid());
            }
        }
    }
}
