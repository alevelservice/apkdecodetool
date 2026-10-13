package com.google.android.gms.internal.clearcut;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class j0 extends h0 {

    /* renamed from: a, reason: collision with root package name */
    private int f11440a;

    /* renamed from: b, reason: collision with root package name */
    private int f11441b;

    /* renamed from: c, reason: collision with root package name */
    private int f11442c;

    /* renamed from: d, reason: collision with root package name */
    private int f11443d;

    /* renamed from: e, reason: collision with root package name */
    private int f11444e;

    private j0(byte[] bArr, int i2, int i3, boolean z) {
        super();
        this.f11444e = Integer.MAX_VALUE;
        this.f11440a = i3 + i2;
        this.f11442c = i2;
        this.f11443d = this.f11442c;
    }

    public final int a() {
        return this.f11442c - this.f11443d;
    }

    public final int b(int i2) {
        if (i2 < 0) {
            throw new j1("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        int a2 = i2 + a();
        int i3 = this.f11444e;
        if (a2 > i3) {
            throw j1.zzbl();
        }
        this.f11444e = a2;
        this.f11440a += this.f11441b;
        int i4 = this.f11440a;
        int i5 = i4 - this.f11443d;
        int i6 = this.f11444e;
        if (i5 > i6) {
            this.f11441b = i5 - i6;
            this.f11440a = i4 - this.f11441b;
        } else {
            this.f11441b = 0;
        }
        return i3;
    }
}
