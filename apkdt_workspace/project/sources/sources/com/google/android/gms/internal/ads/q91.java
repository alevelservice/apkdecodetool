package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads-base@@18.1.0 */
/* loaded from: classes.dex */
public enum q91 {
    VOID(Void.class, Void.class, null),
    INT(Integer.TYPE, Integer.class, 0),
    LONG(Long.TYPE, Long.class, 0L),
    FLOAT(Float.TYPE, Float.class, Float.valueOf(0.0f)),
    DOUBLE(Double.TYPE, Double.class, Double.valueOf(0.0d)),
    BOOLEAN(Boolean.TYPE, Boolean.class, false),
    STRING(String.class, String.class, ""),
    BYTE_STRING(t71.class, t71.class, t71.zzhfn),
    ENUM(Integer.TYPE, Integer.class, null),
    MESSAGE(Object.class, Object.class, null);

    private final Class<?> zzhll;
    private final Class<?> zzhlm;
    private final Object zzhln;

    q91(Class cls, Class cls2, Object obj) {
        this.zzhll = cls;
        this.zzhlm = cls2;
        this.zzhln = obj;
    }

    public final Class<?> zzbag() {
        return this.zzhlm;
    }
}
