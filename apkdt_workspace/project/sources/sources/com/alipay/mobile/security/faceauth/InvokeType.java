package com.alipay.mobile.security.faceauth;

import com.ap.zoloz.hummer.biz.HummerConstants;

/* loaded from: classes.dex */
public enum InvokeType {
    NETWORK("network"),
    SERVER_FAIL("server_fail"),
    INTERRUPT("interrupt"),
    TIMEOUT("timeout"),
    NORMAL("normal"),
    FAIL(HummerConstants.HUMMER_FAIL),
    MONITOR("monitor"),
    LIVENESS_FAILED("liveness_failed"),
    ASYNC_UPLOAD("async_upload"),
    VIDEO("video");

    public String value;

    InvokeType(String str) {
        this.value = str;
    }
}
