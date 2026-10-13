package com.google.android.gms.internal.ads;

import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads-base@@18.1.0 */
/* loaded from: classes.dex */
abstract class y91 {

    /* renamed from: a, reason: collision with root package name */
    private static final y91 f10518a;

    /* renamed from: b, reason: collision with root package name */
    private static final y91 f10519b;

    static {
        x91 x91Var = null;
        f10518a = new aa1();
        f10519b = new z91();
    }

    private y91() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static y91 a() {
        return f10518a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static y91 b() {
        return f10519b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract <L> List<L> a(Object obj, long j2);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract <L> void a(Object obj, Object obj2, long j2);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void b(Object obj, long j2);
}
