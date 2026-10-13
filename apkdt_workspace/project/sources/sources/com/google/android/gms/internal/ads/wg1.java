package com.google.android.gms.internal.ads;

import java.io.IOException;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class wg1 extends Exception {
    private final int type;
    private final int zzace;

    private wg1(int i2, String str, Throwable th, int i3) {
        super(null, th);
        this.type = i2;
        this.zzace = i3;
    }

    public static wg1 zza(Exception exc, int i2) {
        return new wg1(1, null, exc, i2);
    }

    public static wg1 zza(IOException iOException) {
        return new wg1(0, null, iOException, -1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static wg1 zza(RuntimeException runtimeException) {
        return new wg1(2, null, runtimeException, -1);
    }
}
