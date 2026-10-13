package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class a11<P> {

    /* renamed from: a, reason: collision with root package name */
    private final P f5498a;

    /* renamed from: b, reason: collision with root package name */
    private final byte[] f5499b;

    /* renamed from: c, reason: collision with root package name */
    private final p41 f5500c;

    /* renamed from: d, reason: collision with root package name */
    private final i51 f5501d;

    public a11(P p, byte[] bArr, p41 p41Var, i51 i51Var) {
        this.f5498a = p;
        this.f5499b = Arrays.copyOf(bArr, bArr.length);
        this.f5500c = p41Var;
        this.f5501d = i51Var;
    }

    public final P a() {
        return this.f5498a;
    }

    public final p41 b() {
        return this.f5500c;
    }

    public final i51 c() {
        return this.f5501d;
    }

    public final byte[] d() {
        byte[] bArr = this.f5499b;
        if (bArr == null) {
            return null;
        }
        return Arrays.copyOf(bArr, bArr.length);
    }
}
