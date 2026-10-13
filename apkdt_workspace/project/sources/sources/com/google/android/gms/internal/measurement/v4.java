package com.google.android.gms.internal.measurement;

import java.util.List;

/* loaded from: classes.dex */
abstract class v4 {

    /* renamed from: a, reason: collision with root package name */
    private static final v4 f12149a;

    /* renamed from: b, reason: collision with root package name */
    private static final v4 f12150b;

    static {
        u4 u4Var = null;
        f12149a = new x4();
        f12150b = new w4();
    }

    private v4() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static v4 a() {
        return f12149a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static v4 b() {
        return f12150b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract <L> List<L> a(Object obj, long j2);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract <L> void a(Object obj, Object obj2, long j2);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void b(Object obj, long j2);
}
