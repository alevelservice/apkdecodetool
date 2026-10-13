package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-gass@@18.1.0 */
/* loaded from: classes.dex */
public enum ct implements i91 {
    ENUM_SIGNAL_SOURCE_UNKNOWN(0),
    ENUM_SIGNAL_SOURCE_DISABLE(1),
    ENUM_SIGNAL_SOURCE_ADSHIELD(2),
    ENUM_SIGNAL_SOURCE_GASS(3),
    ENUM_SIGNAL_SOURCE_CALLER_PROVIDED(4);

    private final int value;

    static {
        new h91<ct>() { // from class: com.google.android.gms.internal.ads.bs
        };
    }

    ct(int i2) {
        this.value = i2;
    }

    public static k91 zzac() {
        return du.f6310a;
    }

    public static ct zze(int i2) {
        if (i2 == 0) {
            return ENUM_SIGNAL_SOURCE_UNKNOWN;
        }
        if (i2 == 1) {
            return ENUM_SIGNAL_SOURCE_DISABLE;
        }
        if (i2 == 2) {
            return ENUM_SIGNAL_SOURCE_ADSHIELD;
        }
        if (i2 == 3) {
            return ENUM_SIGNAL_SOURCE_GASS;
        }
        if (i2 != 4) {
            return null;
        }
        return ENUM_SIGNAL_SOURCE_CALLER_PROVIDED;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "<" + ct.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.value + " name=" + name() + '>';
    }

    @Override // com.google.android.gms.internal.ads.i91
    public final int zzab() {
        return this.value;
    }
}
