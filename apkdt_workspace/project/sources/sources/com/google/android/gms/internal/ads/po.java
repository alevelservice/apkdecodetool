package com.google.android.gms.internal.ads;

import android.view.View;
import androidx.annotation.Nullable;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class po extends sq {

    /* renamed from: f, reason: collision with root package name */
    private final View f8735f;

    /* renamed from: g, reason: collision with root package name */
    @Nullable
    private final fi f8736g;

    /* renamed from: h, reason: collision with root package name */
    private final ms0 f8737h;

    /* renamed from: i, reason: collision with root package name */
    private final int f8738i;

    /* renamed from: j, reason: collision with root package name */
    @Nullable
    private zzqz f8739j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public po(rq rqVar, View view, @Nullable fi fiVar, ms0 ms0Var, int i2) {
        super(rqVar);
        this.f8735f = view;
        this.f8736g = fiVar;
        this.f8737h = ms0Var;
        this.f8738i = i2;
    }

    public final void a(nr1 nr1Var) {
        fi fiVar = this.f8736g;
        if (fiVar != null) {
            fiVar.zza(nr1Var);
        }
    }

    public final int f() {
        return this.f8738i;
    }

    public final ms0 g() {
        return at0.a(this.f9422b.o, this.f8737h);
    }

    public final View h() {
        return this.f8735f;
    }

    public final boolean i() {
        fi fiVar = this.f8736g;
        return fiVar != null && fiVar.zzza();
    }

    @Nullable
    public final zzqz j() {
        return this.f8739j;
    }

    public final boolean k() {
        fi fiVar = this.f8736g;
        return fiVar != null && fiVar.zzyy().c();
    }

    public final void a(zzqz zzqzVar) {
        this.f8739j = zzqzVar;
    }
}
