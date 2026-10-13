package com.ap.zoloz.hummer.common;

import com.alipay.mobile.security.bio.log.BehaviourIdEnum;
import com.alipay.mobile.security.bio.log.VerifyBehavior;
import com.alipay.mobile.security.bio.service.local.monitorlog.MonitorLogService;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class HummerLogService extends MonitorLogService {
    protected static Map<String, Object> config = new HashMap();
    protected static int mSequenceId;

    public static void reset() {
        mSequenceId = 0;
        config.clear();
    }

    @Override // com.alipay.mobile.security.bio.service.local.monitorlog.MonitorLogService
    public abstract void logBehavior(BehaviourIdEnum behaviourIdEnum, VerifyBehavior verifyBehavior);
}
