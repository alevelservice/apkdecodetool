package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-gass@@18.1.0 */
/* loaded from: classes.dex */
public enum m60 implements i91 {
    ENUM_FALSE(0),
    ENUM_TRUE(1),
    ENUM_FAILURE(2),
    ENUM_UNKNOWN(1000);

    private final int value;

    static {
        new h91<m60>() { // from class: com.google.android.gms.internal.ads.l50
        };
    }

    m60(int i2) {
        this.value = i2;
    }

    public static k91 zzac() {
        return o80.f8497a;
    }

    public static m60 zzj(int i2) {
        if (i2 == 0) {
            return ENUM_FALSE;
        }
        if (i2 == 1) {
            return ENUM_TRUE;
        }
        if (i2 == 2) {
            return ENUM_FAILURE;
        }
        if (i2 != 1000) {
            return null;
        }
        return ENUM_UNKNOWN;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "<" + m60.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.value + " name=" + name() + '>';
    }

    @Override // com.google.android.gms.internal.ads.i91
    public final int zzab() {
        return this.value;
    }
}
