package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public class t90 extends Exception {
    private final int errorCode;

    public t90(int i2) {
        this.errorCode = i2;
    }

    public static int zzd(Throwable th) {
        if (th instanceof t90) {
            return ((t90) th).errorCode;
        }
        if (th instanceof ac) {
            return ((ac) th).getErrorCode();
        }
        return 0;
    }

    public final int getErrorCode() {
        return this.errorCode;
    }

    public t90(String str, int i2) {
        super(str);
        this.errorCode = i2;
    }

    public t90(String str, Throwable th, int i2) {
        super(str, th);
        this.errorCode = 0;
    }
}
