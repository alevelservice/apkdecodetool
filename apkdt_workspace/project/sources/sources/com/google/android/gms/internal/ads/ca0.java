package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import java.util.List;
import java.util.concurrent.Callable;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ca0 implements oe1<qz0<zzaok>> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<zu0> f5954a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<qz0<Bundle>> f5955b;

    /* renamed from: c, reason: collision with root package name */
    private final af1<zzawv> f5956c;

    /* renamed from: d, reason: collision with root package name */
    private final af1<ApplicationInfo> f5957d;

    /* renamed from: e, reason: collision with root package name */
    private final af1<String> f5958e;

    /* renamed from: f, reason: collision with root package name */
    private final af1<List<String>> f5959f;

    /* renamed from: g, reason: collision with root package name */
    private final af1<PackageInfo> f5960g;

    /* renamed from: h, reason: collision with root package name */
    private final af1<qz0<String>> f5961h;

    /* renamed from: i, reason: collision with root package name */
    private final af1<pa> f5962i;

    /* renamed from: j, reason: collision with root package name */
    private final af1<String> f5963j;

    private ca0(af1<zu0> af1Var, af1<qz0<Bundle>> af1Var2, af1<zzawv> af1Var3, af1<ApplicationInfo> af1Var4, af1<String> af1Var5, af1<List<String>> af1Var6, af1<PackageInfo> af1Var7, af1<qz0<String>> af1Var8, af1<pa> af1Var9, af1<String> af1Var10) {
        this.f5954a = af1Var;
        this.f5955b = af1Var2;
        this.f5956c = af1Var3;
        this.f5957d = af1Var4;
        this.f5958e = af1Var5;
        this.f5959f = af1Var6;
        this.f5960g = af1Var7;
        this.f5961h = af1Var8;
        this.f5962i = af1Var9;
        this.f5963j = af1Var10;
    }

    public static ca0 a(af1<zu0> af1Var, af1<qz0<Bundle>> af1Var2, af1<zzawv> af1Var3, af1<ApplicationInfo> af1Var4, af1<String> af1Var5, af1<List<String>> af1Var6, af1<PackageInfo> af1Var7, af1<qz0<String>> af1Var8, af1<pa> af1Var9, af1<String> af1Var10) {
        return new ca0(af1Var, af1Var2, af1Var3, af1Var4, af1Var5, af1Var6, af1Var7, af1Var8, af1Var9, af1Var10);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        zu0 zu0Var = this.f5954a.get();
        final qz0<Bundle> qz0Var = this.f5955b.get();
        final zzawv zzawvVar = this.f5956c.get();
        final ApplicationInfo applicationInfo = this.f5957d.get();
        final String str = this.f5958e.get();
        final List<String> list = this.f5959f.get();
        final PackageInfo packageInfo = this.f5960g.get();
        final qz0<String> qz0Var2 = this.f5961h.get();
        final pa paVar = this.f5962i.get();
        final String str2 = this.f5963j.get();
        hu0 a2 = zu0Var.a((zu0) wu0.REQUEST_PARCEL, qz0Var, qz0Var2).a(new Callable(qz0Var, zzawvVar, applicationInfo, str, list, packageInfo, qz0Var2, paVar, str2) { // from class: com.google.android.gms.internal.ads.da0

            /* renamed from: e, reason: collision with root package name */
            private final qz0 f6187e;

            /* renamed from: f, reason: collision with root package name */
            private final zzawv f6188f;

            /* renamed from: g, reason: collision with root package name */
            private final ApplicationInfo f6189g;

            /* renamed from: h, reason: collision with root package name */
            private final String f6190h;

            /* renamed from: i, reason: collision with root package name */
            private final List f6191i;

            /* renamed from: j, reason: collision with root package name */
            private final PackageInfo f6192j;

            /* renamed from: k, reason: collision with root package name */
            private final qz0 f6193k;

            /* renamed from: l, reason: collision with root package name */
            private final pa f6194l;
            private final String m;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f6187e = qz0Var;
                this.f6188f = zzawvVar;
                this.f6189g = applicationInfo;
                this.f6190h = str;
                this.f6191i = list;
                this.f6192j = packageInfo;
                this.f6193k = qz0Var2;
                this.f6194l = paVar;
                this.m = str2;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.concurrent.Callable
            public final Object call() {
                qz0 qz0Var3 = this.f6187e;
                zzawv zzawvVar2 = this.f6188f;
                ApplicationInfo applicationInfo2 = this.f6189g;
                String str3 = this.f6190h;
                List list2 = this.f6191i;
                PackageInfo packageInfo2 = this.f6192j;
                qz0 qz0Var4 = this.f6193k;
                pa paVar2 = this.f6194l;
                return new zzaok((Bundle) qz0Var3.get(), zzawvVar2, applicationInfo2, str3, list2, packageInfo2, (String) qz0Var4.get(), paVar2.i(), this.m);
            }
        }).a();
        ue1.a(a2, "Cannot return null from a non-@Nullable @Provides method");
        return a2;
    }
}
