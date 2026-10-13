package com.zoloz.builder.service;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import com.alipay.mobile.security.bio.api.BioError;
import com.alipay.mobile.security.bio.log.BehaviourIdEnum;
import com.alipay.mobile.security.bio.log.VerifyBehavior;
import com.alipay.mobile.security.bio.service.local.apsecurity.ApSecurityService;
import com.ap.zoloz.hummer.biz.HummerConstants;
import com.ap.zoloz.hummer.common.HummerLogService;
import com.zoloz.builder.buildconfig.ZolozConfig;
import e.b.b.a.a.a.b;
import e.b.b.a.a.b.c.d;
import e.b.b.a.a.d.i;
import java.util.HashMap;

/* loaded from: classes2.dex */
public class LogServiceProxy extends HummerLogService {
    public static String TAG = "LogServiceProxy";
    private int mSequenceId;

    @Override // com.alipay.mobile.security.bio.service.local.monitorlog.MonitorLogService
    public void install(Context context) {
        super.install(context);
        if (context instanceof Application) {
            i.a((Application) context);
        } else if (context instanceof Activity) {
            i.a(((Activity) context).getApplication());
        } else {
            i.a((Application) context.getApplicationContext());
        }
        String gwLogUrl = ZolozConfig.getInstance().getGwLogUrl();
        if (gwLogUrl != null) {
            if (!gwLogUrl.startsWith("http")) {
                gwLogUrl = "https://" + gwLogUrl;
            }
            i.a().b(gwLogUrl);
            i.a().e(gwLogUrl);
            i.a().a("3F3B61F220828_ANDROID-prod");
            i.a().a(10000L);
            i.a().a(BioError.RESULT_TWINS_SIMILAR);
        }
    }

    @Override // com.ap.zoloz.hummer.common.HummerLogService, com.alipay.mobile.security.bio.service.local.monitorlog.MonitorLogService
    public void logBehavior(BehaviourIdEnum behaviourIdEnum, VerifyBehavior verifyBehavior) {
        this.mSequenceId++;
        i.a().a(new b() { // from class: com.zoloz.builder.service.LogServiceProxy.1
            @Override // e.b.b.a.a.a.b
            public String getDeviceId() {
                return ApSecurityService.getStaticApDidToken();
            }
        });
        d dVar = new d();
        dVar.b(verifyBehavior.getSeedID());
        dVar.d(HummerConstants.BIZ_TYPE);
        HashMap hashMap = new HashMap();
        try {
            hashMap.put("ekycId", (String) HummerLogService.config.get(HummerConstants.HUMMER_ID));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        hashMap.put(HummerConstants.SEQUENCE_ID, Integer.toString(this.mSequenceId));
        hashMap.putAll(verifyBehavior.getExtParams());
        for (String str : hashMap.keySet()) {
            dVar.a(str, (String) hashMap.get(str));
        }
        i.a().a(dVar);
    }
}
