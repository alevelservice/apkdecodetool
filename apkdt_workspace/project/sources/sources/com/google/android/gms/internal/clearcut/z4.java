package com.google.android.gms.internal.clearcut;

/* loaded from: classes.dex */
public enum z4 implements g1 {
    DEFAULT(0),
    UNMETERED_ONLY(1),
    UNMETERED_OR_DAILY(2),
    FAST_IF_RADIO_AWAKE(3),
    NEVER(4);


    /* renamed from: i, reason: collision with root package name */
    private static final h1<z4> f11663i = new h1<z4>() { // from class: com.google.android.gms.internal.clearcut.d5
        @Override // com.google.android.gms.internal.clearcut.h1
        public final /* synthetic */ z4 a(int i2) {
            return z4.zzbc(i2);
        }
    };
    private final int value;

    z4(int i2) {
        this.value = i2;
    }

    public static z4 zzbc(int i2) {
        if (i2 == 0) {
            return DEFAULT;
        }
        if (i2 == 1) {
            return UNMETERED_ONLY;
        }
        if (i2 == 2) {
            return UNMETERED_OR_DAILY;
        }
        if (i2 == 3) {
            return FAST_IF_RADIO_AWAKE;
        }
        if (i2 != 4) {
            return null;
        }
        return NEVER;
    }

    public static h1<z4> zzd() {
        return f11663i;
    }

    @Override // com.google.android.gms.internal.clearcut.g1
    public final int zzc() {
        return this.value;
    }
}
