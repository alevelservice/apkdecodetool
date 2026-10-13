package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import javax.annotation.ParametersAreNonnullByDefault;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class p50 implements z0 {

    /* renamed from: e, reason: collision with root package name */
    private final fu f8646e;

    /* renamed from: f, reason: collision with root package name */
    @Nullable
    private final zzaqd f8647f;

    /* renamed from: g, reason: collision with root package name */
    private final String f8648g;

    /* renamed from: h, reason: collision with root package name */
    private final String f8649h;

    public p50(fu fuVar, ns0 ns0Var) {
        this.f8646e = fuVar;
        this.f8647f = ns0Var.f8426l;
        this.f8648g = ns0Var.f8424j;
        this.f8649h = ns0Var.f8425k;
    }

    @Override // com.google.android.gms.internal.ads.z0
    @ParametersAreNonnullByDefault
    public final void a(zzaqd zzaqdVar) {
        String str;
        int i2;
        zzaqd zzaqdVar2 = this.f8647f;
        if (zzaqdVar2 != null) {
            zzaqdVar = zzaqdVar2;
        }
        if (zzaqdVar != null) {
            str = zzaqdVar.f10979e;
            i2 = zzaqdVar.f10980f;
        } else {
            str = "";
            i2 = 1;
        }
        this.f8646e.a(new zzapc(str, i2), this.f8648g, this.f8649h);
    }

    @Override // com.google.android.gms.internal.ads.z0
    public final void e() {
        this.f8646e.j();
    }

    @Override // com.google.android.gms.internal.ads.z0
    public final void f() {
        this.f8646e.k();
    }
}
