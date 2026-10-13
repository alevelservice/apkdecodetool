package com.google.android.gms.internal.ads;

import android.content.Context;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.concurrent.Executor;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class y40 {

    /* renamed from: a, reason: collision with root package name */
    private final h50 f10481a = new h50(null);

    /* renamed from: b, reason: collision with root package name */
    private final com.google.android.gms.ads.internal.b f10482b;

    /* renamed from: c, reason: collision with root package name */
    private final Context f10483c;

    /* renamed from: d, reason: collision with root package name */
    private final Executor f10484d;

    /* renamed from: e, reason: collision with root package name */
    private final t11 f10485e;

    /* renamed from: f, reason: collision with root package name */
    private final zzawv f10486f;

    /* renamed from: g, reason: collision with root package name */
    private final v0 f10487g;

    /* renamed from: h, reason: collision with root package name */
    private qz0<fi> f10488h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public y40(i50 i50Var) {
        this.f10483c = i50.a(i50Var);
        this.f10484d = i50.b(i50Var);
        this.f10485e = i50.c(i50Var);
        this.f10486f = i50.d(i50Var);
        this.f10482b = i50.e(i50Var);
        i50.f(i50Var);
        this.f10487g = new v0();
    }

    public final synchronized void a() {
        if (this.f10488h == null) {
            return;
        }
        gz0.a(this.f10488h, new d50(this), this.f10484d);
        this.f10488h = null;
    }

    public final synchronized void b() {
        this.f10488h = gz0.a(oi.a(this.f10483c, this.f10486f, (String) mu1.e().a(aw1.O1), this.f10485e, this.f10482b), new pw0(this) { // from class: com.google.android.gms.internal.ads.b50

            /* renamed from: a, reason: collision with root package name */
            private final y40 f5719a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f5719a = this;
            }

            @Override // com.google.android.gms.internal.ads.pw0
            public final Object apply(Object obj) {
                fi fiVar = (fi) obj;
                this.f5719a.a(fiVar);
                return fiVar;
            }
        }, this.f10484d);
        de.a(this.f10488h, "NativeJavascriptExecutor.initializeEngine");
    }

    public final synchronized qz0<JSONObject> a(final String str, final JSONObject jSONObject) {
        if (this.f10488h == null) {
            return gz0.a((Object) null);
        }
        return gz0.a(this.f10488h, new qy0(this, str, jSONObject) { // from class: com.google.android.gms.internal.ads.a50

            /* renamed from: a, reason: collision with root package name */
            private final y40 f5513a;

            /* renamed from: b, reason: collision with root package name */
            private final String f5514b;

            /* renamed from: c, reason: collision with root package name */
            private final JSONObject f5515c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f5513a = this;
                this.f5514b = str;
                this.f5515c = jSONObject;
            }

            @Override // com.google.android.gms.internal.ads.qy0
            public final qz0 b(Object obj) {
                return this.f5513a.a(this.f5514b, this.f5515c, (fi) obj);
            }
        }, this.f10484d);
    }

    public final synchronized void a(String str, o0<Object> o0Var) {
        if (this.f10488h == null) {
            return;
        }
        gz0.a(this.f10488h, new c50(this, str, o0Var), this.f10484d);
    }

    public final synchronized void b(String str, o0<Object> o0Var) {
        if (this.f10488h == null) {
            return;
        }
        gz0.a(this.f10488h, new f50(this, str, o0Var), this.f10484d);
    }

    public final synchronized void a(String str, Map<String, ?> map) {
        if (this.f10488h == null) {
            return;
        }
        gz0.a(this.f10488h, new e50(this, str, map), this.f10484d);
    }

    public final <T> void a(WeakReference<T> weakReference, String str, o0<T> o0Var) {
        a(str, new m50(this, weakReference, str, o0Var, null));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ qz0 a(String str, JSONObject jSONObject, fi fiVar) {
        return this.f10487g.a(fiVar, str, jSONObject);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ fi a(fi fiVar) {
        fiVar.zza("/result", this.f10487g);
        oj zzyy = fiVar.zzyy();
        h50 h50Var = this.f10481a;
        zzyy.a(null, h50Var, h50Var, h50Var, h50Var, false, null, new com.google.android.gms.ads.internal.a(this.f10483c, null, null), null, null);
        return fiVar;
    }
}
