package com.zoloz.builder.service;

import android.content.Context;
import com.alipay.mobile.security.bio.service.local.apsecurity.ApSecurityService;
import com.zoloz.builder.buildconfig.ZolozConfig;
import com.zoloz.dfp.a;

/* loaded from: classes2.dex */
public class DfpServiceProxy extends ApSecurityService {
    @Override // com.alipay.mobile.security.bio.service.local.apsecurity.ApSecurityService
    public String getApDidToken() {
        if (ZolozConfig.getInstance().getDeviceId() != null) {
            return ZolozConfig.getInstance().getDeviceId();
        }
        return a.c().b();
    }

    @Override // com.alipay.mobile.security.bio.service.local.apsecurity.ApSecurityService
    public void init(Context context) {
        a.a(context);
        if (ZolozConfig.getInstance().getDeviceId() != null) {
            ApSecurityService.sApdidToken = ZolozConfig.getInstance().getDeviceId();
        } else {
            ApSecurityService.sApdidToken = a.c().b();
        }
    }
}
