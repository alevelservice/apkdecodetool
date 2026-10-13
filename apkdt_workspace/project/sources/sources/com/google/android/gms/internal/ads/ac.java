package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ac extends Exception {
    private final int errorCode;

    public ac(String str, int i2) {
        super(str);
        this.errorCode = i2;
    }

    public final int getErrorCode() {
        return this.errorCode;
    }
}
