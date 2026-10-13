package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class d40 {

    /* renamed from: a, reason: collision with root package name */
    private final Context f6153a;

    /* renamed from: b, reason: collision with root package name */
    private final ws0 f6154b;

    /* renamed from: c, reason: collision with root package name */
    private final Executor f6155c;

    /* renamed from: d, reason: collision with root package name */
    private final d60 f6156d;

    public d40(Context context, ws0 ws0Var, Executor executor, d60 d60Var) {
        this.f6153a = context;
        this.f6154b = ws0Var;
        this.f6155c = executor;
        this.f6156d = d60Var;
    }

    public final qz0<fi> a(final JSONObject jSONObject) {
        return gz0.a(gz0.a(gz0.a((Object) null), new qy0(this) { // from class: com.google.android.gms.internal.ads.e40

            /* renamed from: a, reason: collision with root package name */
            private final d40 f6336a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f6336a = this;
            }

            @Override // com.google.android.gms.internal.ads.qy0
            public final qz0 b(Object obj) {
                return this.f6336a.a(obj);
            }
        }, this.f6155c), new qy0(this, jSONObject) { // from class: com.google.android.gms.internal.ads.c40

            /* renamed from: a, reason: collision with root package name */
            private final d40 f5919a;

            /* renamed from: b, reason: collision with root package name */
            private final JSONObject f5920b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f5919a = this;
                this.f5920b = jSONObject;
            }

            @Override // com.google.android.gms.internal.ads.qy0
            public final qz0 b(Object obj) {
                return this.f5919a.a(this.f5920b, (fi) obj);
            }
        }, this.f6155c);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void b(fi fiVar, ee eeVar, boolean z) {
        if (this.f6154b.f10193b != null && fiVar.zzxj() != null) {
            fiVar.zzxj().zzb(this.f6154b.f10193b);
        }
        eeVar.a();
    }

    public final qz0<fi> a(final String str, final String str2) {
        return gz0.a(gz0.a((Object) null), new qy0(this, str, str2) { // from class: com.google.android.gms.internal.ads.f40

            /* renamed from: a, reason: collision with root package name */
            private final d40 f6559a;

            /* renamed from: b, reason: collision with root package name */
            private final String f6560b;

            /* renamed from: c, reason: collision with root package name */
            private final String f6561c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f6559a = this;
                this.f6560b = str;
                this.f6561c = str2;
            }

            @Override // com.google.android.gms.internal.ads.qy0
            public final qz0 b(Object obj) {
                return this.f6559a.a(this.f6560b, this.f6561c, obj);
            }
        }, this.f6155c);
    }

    private final void a(fi fiVar) {
        fiVar.zza("/video", b0.f5696l);
        fiVar.zza("/videoMeta", b0.m);
        fiVar.zza("/precache", new oh());
        fiVar.zza("/delayPageLoaded", b0.p);
        fiVar.zza("/instrument", b0.n);
        fiVar.zza("/log", b0.f5691g);
        fiVar.zza("/videoClicked", b0.f5692h);
        fiVar.zzyy().a(true);
        fiVar.zza("/click", b0.f5687c);
        if (this.f6154b.f10194c != null) {
            fiVar.zza("/open", new t0(null, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ qz0 a(Object obj) {
        fi a2 = this.f6156d.a(zztw.a(this.f6153a), false);
        final ee c2 = ee.c(a2);
        a(a2);
        a2.zzyy().a(new qj(c2) { // from class: com.google.android.gms.internal.ads.h40

            /* renamed from: a, reason: collision with root package name */
            private final ee f6997a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f6997a = c2;
            }

            @Override // com.google.android.gms.internal.ads.qj
            public final void a() {
                this.f6997a.a();
            }
        });
        a2.loadUrl((String) mu1.e().a(aw1.P1));
        return c2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ qz0 a(String str, String str2, Object obj) {
        final fi a2 = this.f6156d.a(zztw.a(this.f6153a), false);
        final ee c2 = ee.c(a2);
        a(a2);
        if (this.f6154b.f10194c != null) {
            a2.zza(uj.h());
        } else {
            a2.zza(uj.g());
        }
        a2.zzyy().a(new rj(this, a2, c2) { // from class: com.google.android.gms.internal.ads.g40

            /* renamed from: a, reason: collision with root package name */
            private final d40 f6798a;

            /* renamed from: b, reason: collision with root package name */
            private final fi f6799b;

            /* renamed from: c, reason: collision with root package name */
            private final ee f6800c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f6798a = this;
                this.f6799b = a2;
                this.f6800c = c2;
            }

            @Override // com.google.android.gms.internal.ads.rj
            public final void a(boolean z) {
                this.f6798a.a(this.f6799b, this.f6800c, z);
            }
        });
        a2.zzb(str, str2, null);
        return c2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void a(fi fiVar, ee eeVar, boolean z) {
        if (this.f6154b.f10193b != null && fiVar.zzxj() != null) {
            fiVar.zzxj().zzb(this.f6154b.f10193b);
        }
        eeVar.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ qz0 a(JSONObject jSONObject, final fi fiVar) {
        final ee c2 = ee.c(fiVar);
        if (this.f6154b.f10194c != null) {
            fiVar.zza(uj.h());
        } else {
            fiVar.zza(uj.g());
        }
        fiVar.zzyy().a(new rj(this, fiVar, c2) { // from class: com.google.android.gms.internal.ads.j40

            /* renamed from: a, reason: collision with root package name */
            private final d40 f7425a;

            /* renamed from: b, reason: collision with root package name */
            private final fi f7426b;

            /* renamed from: c, reason: collision with root package name */
            private final ee f7427c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f7425a = this;
                this.f7426b = fiVar;
                this.f7427c = c2;
            }

            @Override // com.google.android.gms.internal.ads.rj
            public final void a(boolean z) {
                this.f7425a.b(this.f7426b, this.f7427c, z);
            }
        });
        fiVar.zzb("google.afma.nativeAds.renderVideo", jSONObject);
        return c2;
    }
}
