package com.google.android.gms.internal.ads;

import com.alipay.mobile.security.zim.api.ZIMResponseCode;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public enum ms1 implements i91 {
    UNKNOWN_EVENT_TYPE(0),
    AD_REQUEST(1),
    AD_LOADED(2),
    AD_IMPRESSION(5),
    AD_FIRST_CLICK(6),
    AD_SUBSEQUENT_CLICK(7),
    REQUEST_WILL_START(8),
    REQUEST_DID_END(9),
    REQUEST_WILL_UPDATE_SIGNALS(10),
    REQUEST_DID_UPDATE_SIGNALS(11),
    REQUEST_WILL_BUILD_URL(12),
    REQUEST_DID_BUILD_URL(13),
    REQUEST_WILL_MAKE_NETWORK_REQUEST(14),
    REQUEST_DID_RECEIVE_NETWORK_RESPONSE(15),
    REQUEST_WILL_PROCESS_RESPONSE(16),
    REQUEST_DID_PROCESS_RESPONSE(17),
    REQUEST_WILL_RENDER(18),
    REQUEST_DID_RENDER(19),
    AD_FAILED_TO_LOAD(3),
    AD_FAILED_TO_LOAD_NO_FILL(4),
    AD_FAILED_TO_LOAD_INVALID_REQUEST(100),
    AD_FAILED_TO_LOAD_NETWORK_ERROR(101),
    AD_FAILED_TO_LOAD_TIMEOUT(102),
    AD_FAILED_TO_LOAD_CANCELLED(103),
    AD_FAILED_TO_LOAD_NO_ERROR(104),
    AD_FAILED_TO_LOAD_NOT_FOUND(105),
    REQUEST_WILL_UPDATE_GMS_SIGNALS(1000),
    REQUEST_DID_UPDATE_GMS_SIGNALS(1001),
    REQUEST_FAILED_TO_UPDATE_GMS_SIGNALS(1002),
    REQUEST_FAILED_TO_BUILD_URL(1003),
    REQUEST_FAILED_TO_MAKE_NETWORK_REQUEST(ZIMResponseCode.ZIM_RESPONSE_TIMEOUT_BY_USER),
    REQUEST_FAILED_TO_PROCESS_RESPONSE(ZIMResponseCode.ZIM_RESPONSE_CHOOSE_OTHER_PAYMENT),
    REQUEST_FAILED_TO_UPDATE_SIGNALS(1006),
    REQUEST_FAILED_TO_RENDER(1007),
    REQUEST_IS_PREFETCH(1100),
    REQUEST_SAVED_TO_CACHE(1101),
    REQUEST_LOADED_FROM_CACHE(1102),
    REQUEST_PREFETCH_INTERCEPTED(1103),
    BANNER_SIZE_INVALID(e.b.b.a.a.a.c.DEBUG_INT),
    BANNER_SIZE_VALID(10001),
    ANDROID_WEBVIEW_CRASH(10002),
    OFFLINE_UPLOAD(10003),
    DELAY_PAGE_LOAD_CANCELLED_AD(10004);

    private final int value;

    static {
        new h91<ms1>() { // from class: com.google.android.gms.internal.ads.ns1
        };
    }

    ms1(int i2) {
        this.value = i2;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "<" + ms1.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.value + " name=" + name() + '>';
    }

    @Override // com.google.android.gms.internal.ads.i91
    public final int zzab() {
        return this.value;
    }
}
