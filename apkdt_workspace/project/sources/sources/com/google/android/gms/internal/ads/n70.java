package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-gass@@18.1.0 */
/* loaded from: classes.dex */
public enum n70 implements i91 {
    UNKNOWN_PROTO(0),
    AFMA_SIGNALS(1),
    UNITY_SIGNALS(2),
    PARTNER_SIGNALS(3);

    private final int value;

    static {
        new h91<n70>() { // from class: com.google.android.gms.internal.ads.pa0
        };
    }

    n70(int i2) {
        this.value = i2;
    }

    public static k91 zzac() {
        return p90.f8665a;
    }

    public static n70 zzk(int i2) {
        if (i2 == 0) {
            return UNKNOWN_PROTO;
        }
        if (i2 == 1) {
            return AFMA_SIGNALS;
        }
        if (i2 == 2) {
            return UNITY_SIGNALS;
        }
        if (i2 != 3) {
            return null;
        }
        return PARTNER_SIGNALS;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "<" + n70.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.value + " name=" + name() + '>';
    }

    @Override // com.google.android.gms.internal.ads.i91
    public final int zzab() {
        return this.value;
    }
}
