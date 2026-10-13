package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public enum gd1 implements i91 {
    AD_RESOURCE_UNKNOWN(0),
    AD_RESOURCE_CREATIVE(1),
    AD_RESOURCE_POST_CLICK(2),
    AD_RESOURCE_AUTO_CLICK_DESTINATION(3);

    private final int value;

    static {
        new h91<gd1>() { // from class: com.google.android.gms.internal.ads.qd1
        };
    }

    gd1(int i2) {
        this.value = i2;
    }

    public static k91 zzac() {
        return pd1.f8687a;
    }

    public static gd1 zzhk(int i2) {
        if (i2 == 0) {
            return AD_RESOURCE_UNKNOWN;
        }
        if (i2 == 1) {
            return AD_RESOURCE_CREATIVE;
        }
        if (i2 == 2) {
            return AD_RESOURCE_POST_CLICK;
        }
        if (i2 != 3) {
            return null;
        }
        return AD_RESOURCE_AUTO_CLICK_DESTINATION;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "<" + gd1.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.value + " name=" + name() + '>';
    }

    @Override // com.google.android.gms.internal.ads.i91
    public final int zzab() {
        return this.value;
    }
}
