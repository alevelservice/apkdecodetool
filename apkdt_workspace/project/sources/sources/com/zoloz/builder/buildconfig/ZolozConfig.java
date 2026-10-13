package com.zoloz.builder.buildconfig;

import android.app.Application;
import android.content.Context;
import android.util.Log;
import com.alipay.mobile.security.bio.utils.BioLog;
import com.alipay.mobile.security.bio.utils.Logger;
import com.ap.zoloz.hummer.api.EkycFacade;
import com.ap.zoloz.hummer.biz.HummerLogger;
import com.zoloz.builder.R;
import com.zoloz.builder.plugin.HummerFoundationLite;
import com.zoloz.builder.plugin.HummerIdentityLite;
import com.zoloz.rpc.RpcConfig;
import com.zoloz.webcontainer.i.a;
import com.zoloz.webcontainer.p.b;
import com.zoloz.webcontainer.q;

/* loaded from: classes.dex */
public class ZolozConfig {
    private static ZolozConfig config;
    private String appKey;
    private String deviceId;
    private String gwLogUrl;
    private String gwUrl;
    private String lang;
    private String workSpaceId;

    public static synchronized ZolozConfig getInstance() {
        ZolozConfig zolozConfig;
        synchronized (ZolozConfig.class) {
            if (config == null) {
                config = new ZolozConfig();
            }
            zolozConfig = config;
        }
        return zolozConfig;
    }

    public static void init(Application application, ZolozConfig zolozConfig) {
        if (zolozConfig != config) {
            config = zolozConfig;
        }
        init(application);
    }

    private static void initContainer(Application application) {
        q.i().a(application, R.raw.ekyc_web);
        a.a(application);
        q.i().a().a(new HummerFoundationLite());
        q.i().a().a(new HummerIdentityLite());
        q.i().a(b.a());
        Logger logger = new Logger() { // from class: com.zoloz.builder.buildconfig.ZolozConfig.1
            @Override // com.alipay.mobile.security.bio.utils.Logger
            public int debug(String str, String str2) {
                b.a();
                return 0;
            }

            @Override // com.alipay.mobile.security.bio.utils.Logger
            public int error(String str, String str2) {
                b.a();
                return 0;
            }

            @Override // com.alipay.mobile.security.bio.utils.Logger
            protected String getStackTraceString(Throwable th) {
                return b.a() ? Log.getStackTraceString(th) : "";
            }

            @Override // com.alipay.mobile.security.bio.utils.Logger
            public int info(String str, String str2) {
                b.a();
                return 0;
            }

            @Override // com.alipay.mobile.security.bio.utils.Logger
            public int verbose(String str, String str2) {
                b.a();
                return 0;
            }

            @Override // com.alipay.mobile.security.bio.utils.Logger
            public int warn(String str, String str2) {
                b.a();
                return 0;
            }
        };
        HummerLogger.setLogger(logger);
        BioLog.setLogger(logger);
    }

    private static void initHummer(Context context) {
        EkycFacade.getInstance().init(context);
    }

    private static void initRpc(Application application) {
        if (b.a()) {
            RpcConfig.f16664k = true;
        }
    }

    public String getAppKey() {
        return this.appKey;
    }

    public String getDeviceId() {
        return this.deviceId;
    }

    public String getGwLogUrl() {
        return this.gwLogUrl;
    }

    public String getGwUrl() {
        return this.gwUrl;
    }

    public String getLang() {
        return this.lang;
    }

    public String getWorkSpaceId() {
        return this.workSpaceId;
    }

    @Deprecated
    public void setAppKey(String str) {
        this.appKey = str;
    }

    public void setDeviceId(String str) {
        this.deviceId = str;
    }

    public void setGwLogUrl(String str) {
        this.gwLogUrl = str;
    }

    public void setGwUrl(String str) {
        this.gwUrl = str;
    }

    public void setLang(String str) {
        this.lang = str;
        q.i().e(str);
    }

    @Deprecated
    public void setWorkSpaceId(String str) {
        this.workSpaceId = str;
    }

    public static void init(Application application) {
        initContainer(application);
        initHummer(application);
        initRpc(application);
    }
}
