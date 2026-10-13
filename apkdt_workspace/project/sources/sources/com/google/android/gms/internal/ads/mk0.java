package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class mk0 implements ko0<nk0> {

    /* renamed from: a, reason: collision with root package name */
    private final ko0<ro0> f8150a;

    /* renamed from: b, reason: collision with root package name */
    private final ws0 f8151b;

    /* renamed from: c, reason: collision with root package name */
    private final Context f8152c;

    /* renamed from: d, reason: collision with root package name */
    private final ca f8153d;

    public mk0(ul0<ro0> ul0Var, ws0 ws0Var, Context context, ca caVar) {
        this.f8150a = ul0Var;
        this.f8151b = ws0Var;
        this.f8152c = context;
        this.f8153d = caVar;
    }

    @Override // com.google.android.gms.internal.ads.ko0
    public final qz0<nk0> a() {
        return gz0.a(this.f8150a.a(), new pw0(this) { // from class: com.google.android.gms.internal.ads.pk0

            /* renamed from: a, reason: collision with root package name */
            private final mk0 f8712a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f8712a = this;
            }

            @Override // com.google.android.gms.internal.ads.pw0
            public final Object apply(Object obj) {
                return this.f8712a.a((ro0) obj);
            }
        }, yd.f10544e);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ nk0 a(ro0 ro0Var) {
        String str;
        boolean z;
        String str2;
        float f2;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        DisplayMetrics displayMetrics;
        zztw zztwVar = this.f8151b.f10196e;
        zztw[] zztwVarArr = zztwVar.f11252k;
        if (zztwVarArr == null) {
            str = zztwVar.f11246e;
            z = zztwVar.m;
        } else {
            str = null;
            boolean z2 = false;
            boolean z3 = false;
            z = false;
            for (zztw zztwVar2 : zztwVarArr) {
                if (!zztwVar2.m && !z2) {
                    str = zztwVar2.f11246e;
                    z2 = true;
                }
                if (zztwVar2.m && !z3) {
                    z3 = true;
                    z = true;
                }
                if (z2 && z3) {
                    break;
                }
            }
        }
        Resources resources = this.f8152c.getResources();
        if (resources == null || (displayMetrics = resources.getDisplayMetrics()) == null) {
            str2 = null;
            f2 = 0.0f;
            i2 = 0;
            i3 = 0;
        } else {
            float f3 = displayMetrics.density;
            int i7 = displayMetrics.widthPixels;
            i3 = displayMetrics.heightPixels;
            str2 = this.f8153d.i().a();
            i2 = i7;
            f2 = f3;
        }
        StringBuilder sb = new StringBuilder();
        zztw[] zztwVarArr2 = zztwVar.f11252k;
        if (zztwVarArr2 != null) {
            boolean z4 = false;
            for (zztw zztwVar3 : zztwVarArr2) {
                if (zztwVar3.m) {
                    z4 = true;
                } else {
                    if (sb.length() != 0) {
                        sb.append("|");
                    }
                    if (zztwVar3.f11250i == -1 && f2 != 0.0f) {
                        i5 = (int) (zztwVar3.f11251j / f2);
                    } else {
                        i5 = zztwVar3.f11250i;
                    }
                    sb.append(i5);
                    sb.append("x");
                    if (zztwVar3.f11247f == -2 && f2 != 0.0f) {
                        i6 = (int) (zztwVar3.f11248g / f2);
                        sb.append(i6);
                    }
                    i6 = zztwVar3.f11247f;
                    sb.append(i6);
                }
            }
            if (z4) {
                if (sb.length() != 0) {
                    i4 = 0;
                    sb.insert(0, "|");
                } else {
                    i4 = 0;
                }
                sb.insert(i4, "320x50");
            }
        }
        return new nk0(zztwVar, str, z, sb.toString(), f2, i2, i3, str2);
    }
}
