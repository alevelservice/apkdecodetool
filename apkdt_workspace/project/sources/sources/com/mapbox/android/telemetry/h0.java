package com.mapbox.android.telemetry;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import com.mapbox.android.telemetry.i0;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TelemetryClientFactory.java */
/* loaded from: classes2.dex */
public class h0 {

    /* renamed from: a, reason: collision with root package name */
    private final String f15588a;

    /* renamed from: b, reason: collision with root package name */
    private final String f15589b;

    /* renamed from: c, reason: collision with root package name */
    private final w f15590c;

    /* renamed from: d, reason: collision with root package name */
    private final e f15591d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: TelemetryClientFactory.java */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f15592a = new int[o.values().length];

        static {
            try {
                f15592a[o.STAGING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public h0(String str, String str2, w wVar, e eVar) {
        this.f15588a = str;
        this.f15589b = str2;
        this.f15590c = wVar;
        this.f15591d = eVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public g0 a(Context context) {
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            if (applicationInfo != null && applicationInfo.metaData != null) {
                return a(new p().a().a(applicationInfo.metaData), context);
            }
        } catch (Exception e2) {
            this.f15590c.b("TelemetryClientFactory", String.format("Failed when retrieving app meta-data: %s", e2.getMessage()));
        }
        return a(o.COM, this.f15591d, context);
    }

    private g0 a(o oVar, e eVar, Context context) {
        String str = this.f15588a;
        String str2 = this.f15589b;
        String b2 = l0.b(context);
        i0.b bVar = new i0.b(context);
        bVar.a(oVar);
        return new g0(str, str2, b2, bVar.a(), this.f15590c, eVar);
    }

    private g0 a(b0 b0Var, e eVar, Context context) {
        i0.b bVar = new i0.b(context);
        bVar.a(b0Var.b());
        bVar.a(i0.a(b0Var.c()));
        return new g0(b0Var.a(), this.f15589b, l0.b(context), bVar.a(), this.f15590c, eVar);
    }

    private g0 a(b0 b0Var, Context context) {
        o b2 = b0Var.b();
        if (a.f15592a[b2.ordinal()] != 1) {
            return a(b2, this.f15591d, context);
        }
        return a(b0Var, this.f15591d, context);
    }
}
