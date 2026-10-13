package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.annotation.concurrent.GuardedBy;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class zzbfk extends zzvt {

    /* renamed from: e, reason: collision with root package name */
    private final Context f11043e;

    /* renamed from: f, reason: collision with root package name */
    private final zzawv f11044f;

    /* renamed from: g, reason: collision with root package name */
    private final ke0 f11045g;

    /* renamed from: h, reason: collision with root package name */
    private final ed0<zzaji, zzcgt> f11046h;

    /* renamed from: i, reason: collision with root package name */
    private final ji0 f11047i;

    /* renamed from: j, reason: collision with root package name */
    private final e90 f11048j;

    /* renamed from: k, reason: collision with root package name */
    private final a9 f11049k;

    /* renamed from: l, reason: collision with root package name */
    @GuardedBy("this")
    private boolean f11050l = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbfk(Context context, zzawv zzawvVar, ke0 ke0Var, ed0<zzaji, zzcgt> ed0Var, ji0 ji0Var, e90 e90Var, a9 a9Var) {
        this.f11043e = context;
        this.f11044f = zzawvVar;
        this.f11045g = ke0Var;
        this.f11046h = ed0Var;
        this.f11047i = ji0Var;
        this.f11048j = e90Var;
        this.f11049k = a9Var;
    }

    private final String a() {
        Context applicationContext = this.f11043e.getApplicationContext() == null ? this.f11043e : this.f11043e.getApplicationContext();
        try {
            String string = com.google.android.gms.common.o.c.a(applicationContext).a(applicationContext.getPackageName(), 128).metaData.getString("com.google.android.gms.ads.APPLICATION_ID");
            return TextUtils.isEmpty(string) ? "" : (string.matches("^ca-app-pub-[0-9]{16}~[0-9]{10}$") || string.matches("^/\\d+~.+$")) ? string : "";
        } catch (PackageManager.NameNotFoundException | NullPointerException e2) {
            na.e("Error getting metadata", e2);
            return "";
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final String getVersionString() {
        return this.f11044f.f11000e;
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final synchronized void initialize() {
        if (this.f11050l) {
            qd.d("Mobile ads is initialized already.");
            return;
        }
        aw1.a(this.f11043e);
        com.google.android.gms.ads.internal.n.g().a(this.f11043e, this.f11044f);
        com.google.android.gms.ads.internal.n.i().a(this.f11043e);
        this.f11050l = true;
        this.f11048j.a();
        if (((Boolean) mu1.e().a(aw1.i1)).booleanValue()) {
            this.f11047i.a();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final synchronized void setAppMuted(boolean z) {
        com.google.android.gms.ads.internal.n.h().a(z);
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final synchronized void setAppVolume(float f2) {
        com.google.android.gms.ads.internal.n.h().a(f2);
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zza(zzajd zzajdVar) {
        this.f11045g.a(zzajdVar);
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zzb(@Nullable String str, IObjectWrapper iObjectWrapper) {
        aw1.a(this.f11043e);
        String a2 = ((Boolean) mu1.e().a(aw1.a2)).booleanValue() ? a() : "";
        if (!TextUtils.isEmpty(a2)) {
            str = a2;
        }
        if (TextUtils.isEmpty(str)) {
            return;
        }
        boolean booleanValue = ((Boolean) mu1.e().a(aw1.Z1)).booleanValue() | ((Boolean) mu1.e().a(aw1.G0)).booleanValue();
        Runnable runnable = null;
        if (((Boolean) mu1.e().a(aw1.G0)).booleanValue()) {
            booleanValue = true;
            final Runnable runnable2 = (Runnable) ObjectWrapper.unwrap(iObjectWrapper);
            runnable = new Runnable(this, runnable2) { // from class: com.google.android.gms.internal.ads.fm

                /* renamed from: e, reason: collision with root package name */
                private final zzbfk f6674e;

                /* renamed from: f, reason: collision with root package name */
                private final Runnable f6675f;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f6674e = this;
                    this.f6675f = runnable2;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    final zzbfk zzbfkVar = this.f6674e;
                    final Runnable runnable3 = this.f6675f;
                    yd.f10543d.execute(new Runnable(zzbfkVar, runnable3) { // from class: com.google.android.gms.internal.ads.hm

                        /* renamed from: e, reason: collision with root package name */
                        private final zzbfk f7115e;

                        /* renamed from: f, reason: collision with root package name */
                        private final Runnable f7116f;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f7115e = zzbfkVar;
                            this.f7116f = runnable3;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f7115e.zze(this.f7116f);
                        }
                    });
                }
            };
        }
        if (booleanValue) {
            com.google.android.gms.ads.internal.n.k().a(this.f11043e, this.f11044f, str, runnable);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final synchronized void zzby(String str) {
        aw1.a(this.f11043e);
        if (!TextUtils.isEmpty(str)) {
            if (((Boolean) mu1.e().a(aw1.Z1)).booleanValue()) {
                com.google.android.gms.ads.internal.n.k().a(this.f11043e, this.f11044f, str, (Runnable) null);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zzbz(String str) {
        this.f11047i.a(str);
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zzc(IObjectWrapper iObjectWrapper, String str) {
        if (iObjectWrapper == null) {
            qd.b("Wrapped context is null. Failed to open debug menu.");
            return;
        }
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        if (context == null) {
            qd.b("Context is null. Failed to open debug menu.");
            return;
        }
        pb pbVar = new pb(context);
        pbVar.a(str);
        pbVar.d(this.f11044f.f11000e);
        pbVar.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zze(Runnable runnable) {
        com.google.android.gms.common.internal.m.a("Adapters must be initialized on the main thread.");
        Map<String, b5> e2 = com.google.android.gms.ads.internal.n.g().i().h().e();
        if (e2 == null || e2.isEmpty()) {
            return;
        }
        if (runnable != null) {
            try {
                runnable.run();
            } catch (Throwable th) {
                qd.c("Could not initialize rewarded ads.", th);
                return;
            }
        }
        if (this.f11045g.a()) {
            HashMap hashMap = new HashMap();
            IObjectWrapper wrap = ObjectWrapper.wrap(this.f11043e);
            Iterator<b5> it = e2.values().iterator();
            while (it.hasNext()) {
                for (x4 x4Var : it.next().f5718a) {
                    String str = x4Var.f10273b;
                    for (String str2 : x4Var.f10272a) {
                        if (!hashMap.containsKey(str2)) {
                            hashMap.put(str2, new ArrayList());
                        }
                        if (str != null) {
                            ((Collection) hashMap.get(str2)).add(str);
                        }
                    }
                }
            }
            JSONObject jSONObject = new JSONObject();
            for (Map.Entry entry : hashMap.entrySet()) {
                String str3 = (String) entry.getKey();
                try {
                    bd0<zzaji, zzcgt> a2 = this.f11046h.a(str3, jSONObject);
                    if (a2 != null) {
                        zzaji zzajiVar = a2.f5765b;
                        if (!zzajiVar.isInitialized() && zzajiVar.zzrp()) {
                            zzajiVar.zza(wrap, a2.f5766c, (List<String>) entry.getValue());
                            String valueOf = String.valueOf(str3);
                            qd.a(valueOf.length() != 0 ? "Initialized rewarded video mediation adapter ".concat(valueOf) : new String("Initialized rewarded video mediation adapter "));
                        }
                    }
                } catch (Throwable th2) {
                    StringBuilder sb = new StringBuilder(String.valueOf(str3).length() + 56);
                    sb.append("Failed to initialize rewarded video mediation adapter \"");
                    sb.append(str3);
                    sb.append("\"");
                    qd.c(sb.toString(), th2);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final synchronized float zzoo() {
        return com.google.android.gms.ads.internal.n.h().a();
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final synchronized boolean zzop() {
        return com.google.android.gms.ads.internal.n.h().b();
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final List<zzaex> zzoq() {
        return this.f11048j.b();
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zza(zzafe zzafeVar) {
        this.f11048j.a(zzafeVar);
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zza(zzxw zzxwVar) {
        this.f11049k.a(this.f11043e, zzxwVar);
    }
}
