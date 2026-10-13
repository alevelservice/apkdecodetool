package com.google.android.gms.internal.clearcut;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class d0 {

    /* renamed from: a, reason: collision with root package name */
    private final k0 f11383a;

    /* renamed from: b, reason: collision with root package name */
    private final byte[] f11384b;

    private d0(int i2) {
        this.f11384b = new byte[i2];
        this.f11383a = k0.a(this.f11384b);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ d0(int i2, z zVar) {
        this(i2);
    }

    public final y a() {
        if (this.f11383a.b() == 0) {
            return new f0(this.f11384b);
        }
        throw new IllegalStateException("Did not write as much data as expected.");
    }

    public final k0 b() {
        return this.f11383a;
    }
}
