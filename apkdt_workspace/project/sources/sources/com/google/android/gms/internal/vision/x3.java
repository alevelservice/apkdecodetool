package com.google.android.gms.internal.vision;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
public final class x3 extends v3 {

    /* renamed from: a, reason: collision with root package name */
    private int f12597a;

    /* renamed from: b, reason: collision with root package name */
    private int f12598b;

    /* renamed from: c, reason: collision with root package name */
    private int f12599c;

    /* renamed from: d, reason: collision with root package name */
    private int f12600d;

    /* renamed from: e, reason: collision with root package name */
    private int f12601e;

    private x3(byte[] bArr, int i2, int i3, boolean z) {
        super();
        this.f12601e = Integer.MAX_VALUE;
        this.f12597a = i3 + i2;
        this.f12599c = i2;
        this.f12600d = this.f12599c;
    }

    public final int a() {
        return this.f12599c - this.f12600d;
    }

    public final int b(int i2) {
        if (i2 >= 0) {
            int a2 = i2 + a();
            int i3 = this.f12601e;
            if (a2 <= i3) {
                this.f12601e = a2;
                b();
                return i3;
            }
            throw d5.zzgm();
        }
        throw d5.zzgn();
    }

    private final void b() {
        this.f12597a += this.f12598b;
        int i2 = this.f12597a;
        int i3 = i2 - this.f12600d;
        int i4 = this.f12601e;
        if (i3 > i4) {
            this.f12598b = i3 - i4;
            this.f12597a = i2 - this.f12598b;
        } else {
            this.f12598b = 0;
        }
    }
}
