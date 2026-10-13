package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class pl {

    /* renamed from: a, reason: collision with root package name */
    private lk f8713a;

    /* renamed from: b, reason: collision with root package name */
    private cm f8714b;

    /* renamed from: c, reason: collision with root package name */
    private gv0 f8715c;

    /* renamed from: d, reason: collision with root package name */
    private jm f8716d;

    /* renamed from: e, reason: collision with root package name */
    private gt0 f8717e;

    private pl() {
    }

    public final pl a(lk lkVar) {
        ue1.a(lkVar);
        this.f8713a = lkVar;
        return this;
    }

    public final pl a(cm cmVar) {
        ue1.a(cmVar);
        this.f8714b = cmVar;
        return this;
    }

    public final mk a() {
        ue1.a(this.f8713a, (Class<lk>) lk.class);
        ue1.a(this.f8714b, (Class<cm>) cm.class);
        if (this.f8715c == null) {
            this.f8715c = new gv0();
        }
        if (this.f8716d == null) {
            this.f8716d = new jm();
        }
        if (this.f8717e == null) {
            this.f8717e = new gt0();
        }
        return new bl(this.f8713a, this.f8714b, this.f8715c, this.f8716d, this.f8717e);
    }
}
