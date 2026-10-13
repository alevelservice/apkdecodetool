package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public abstract class fe1 {
    public static fe1 a(Class cls) {
        if (System.getProperty("java.vm.name").equalsIgnoreCase("Dalvik")) {
            return new ce1(cls.getSimpleName());
        }
        return new ee1(cls.getSimpleName());
    }

    public abstract void a(String str);
}
