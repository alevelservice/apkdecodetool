package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads-base@@18.1.0 */
/* loaded from: classes.dex */
public final class b81 {

    /* renamed from: a, reason: collision with root package name */
    private final m81 f5729a;

    /* renamed from: b, reason: collision with root package name */
    private final byte[] f5730b;

    private b81(int i2) {
        this.f5730b = new byte[i2];
        this.f5729a = m81.a(this.f5730b);
    }

    public final t71 a() {
        this.f5729a.c();
        return new e81(this.f5730b);
    }

    public final m81 b() {
        return this.f5729a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ b81(int i2, w71 w71Var) {
        this(i2);
    }
}
