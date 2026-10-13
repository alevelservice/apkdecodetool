package com.google.android.gms.internal.measurement;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class m3 {

    /* renamed from: a, reason: collision with root package name */
    private static final Class<?> f11969a = a();

    private static Class<?> a() {
        try {
            return Class.forName("com.google.protobuf.ExtensionRegistry");
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }

    public static o3 b() {
        if (f11969a != null) {
            try {
                return a("getEmptyRegistry");
            } catch (Exception unused) {
            }
        }
        return o3.f12013d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:10:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:5:0x000e  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.measurement.o3 c() {
        /*
            java.lang.Class<?> r0 = com.google.android.gms.internal.measurement.m3.f11969a
            if (r0 == 0) goto Lb
            java.lang.String r0 = "loadGeneratedRegistry"
            com.google.android.gms.internal.measurement.o3 r0 = a(r0)     // Catch: java.lang.Exception -> Lb
            goto Lc
        Lb:
            r0 = 0
        Lc:
            if (r0 != 0) goto L12
            com.google.android.gms.internal.measurement.o3 r0 = com.google.android.gms.internal.measurement.o3.a()
        L12:
            if (r0 != 0) goto L18
            com.google.android.gms.internal.measurement.o3 r0 = b()
        L18:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.m3.c():com.google.android.gms.internal.measurement.o3");
    }

    private static final o3 a(String str) {
        return (o3) f11969a.getDeclaredMethod(str, new Class[0]).invoke(null, new Object[0]);
    }
}
