package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.annotation.Nullable;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@ParametersAreNonnullByDefault
/* loaded from: classes.dex */
public final class j2 implements y1, h2 {

    /* renamed from: e, reason: collision with root package name */
    private final fi f7408e;

    public j2(Context context, zzawv zzawvVar, @Nullable t11 t11Var, com.google.android.gms.ads.internal.b bVar) {
        com.google.android.gms.ads.internal.n.d();
        this.f7408e = oi.a(context, uj.f(), "", false, false, t11Var, zzawvVar, null, null, null, ks1.a(), null, false);
        this.f7408e.getView().setWillNotDraw(true);
    }

    private static void a(Runnable runnable) {
        mu1.a();
        if (gd.b()) {
            runnable.run();
        } else {
            wa.f10063h.post(runnable);
        }
    }

    @Override // com.google.android.gms.internal.ads.y1
    public final void a(String str, String str2) {
        b2.a(this, str, str2);
    }

    @Override // com.google.android.gms.internal.ads.h2
    public final void b(String str) {
        a(new n2(this, String.format("<!DOCTYPE html><html><head><script src=\"%s\"></script></head><body></body></html>", str)));
    }

    @Override // com.google.android.gms.internal.ads.h2
    public final void c(String str) {
        a(new m2(this, str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void d(String str) {
        this.f7408e.zzct(str);
    }

    @Override // com.google.android.gms.internal.ads.h2
    public final void destroy() {
        this.f7408e.destroy();
    }

    @Override // com.google.android.gms.internal.ads.h2
    public final boolean isDestroyed() {
        return this.f7408e.isDestroyed();
    }

    @Override // com.google.android.gms.internal.ads.p3
    public final void zza(String str, o0<? super p3> o0Var) {
        this.f7408e.zza(str, new o2(this, o0Var));
    }

    @Override // com.google.android.gms.internal.ads.p1
    public final void zza(String str, Map map) {
        b2.a(this, str, map);
    }

    @Override // com.google.android.gms.internal.ads.y1, com.google.android.gms.internal.ads.p1
    public final void zza(String str, JSONObject jSONObject) {
        b2.b(this, str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.p3
    public final void zzb(String str, final o0<? super p3> o0Var) {
        this.f7408e.zza(str, new com.google.android.gms.common.util.p(o0Var) { // from class: com.google.android.gms.internal.ads.l2

            /* renamed from: a, reason: collision with root package name */
            private final o0 f7801a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f7801a = o0Var;
            }

            @Override // com.google.android.gms.common.util.p
            public final boolean apply(Object obj) {
                o0 o0Var2;
                o0 o0Var3 = this.f7801a;
                o0 o0Var4 = (o0) obj;
                if (!(o0Var4 instanceof o2)) {
                    return false;
                }
                o0Var2 = ((o2) o0Var4).f8459a;
                return o0Var2.equals(o0Var3);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.r2
    public final void zzb(String str, JSONObject jSONObject) {
        b2.a(this, str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.y1, com.google.android.gms.internal.ads.r2
    public final void zzct(final String str) {
        a(new Runnable(this, str) { // from class: com.google.android.gms.internal.ads.i2

            /* renamed from: e, reason: collision with root package name */
            private final j2 f7208e;

            /* renamed from: f, reason: collision with root package name */
            private final String f7209f;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f7208e = this;
                this.f7209f = str;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f7208e.d(this.f7209f);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.h2
    public final void a(String str) {
        a(new p2(this, str));
    }

    @Override // com.google.android.gms.internal.ads.h2
    public final void a(g2 g2Var) {
        oj zzyy = this.f7408e.zzyy();
        g2Var.getClass();
        zzyy.a(k2.a(g2Var));
    }

    @Override // com.google.android.gms.internal.ads.h2
    public final s3 a() {
        return new r3(this);
    }
}
