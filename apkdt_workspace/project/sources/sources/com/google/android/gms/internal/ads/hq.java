package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import androidx.annotation.Nullable;
import com.google.android.gms.dynamic.IObjectWrapper;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class hq implements wt, qu {

    /* renamed from: e, reason: collision with root package name */
    private final Context f7143e;

    /* renamed from: f, reason: collision with root package name */
    @Nullable
    private final fi f7144f;

    /* renamed from: g, reason: collision with root package name */
    private final ns0 f7145g;

    /* renamed from: h, reason: collision with root package name */
    private final zzawv f7146h;

    /* renamed from: i, reason: collision with root package name */
    @Nullable
    @GuardedBy("this")
    private IObjectWrapper f7147i;

    /* renamed from: j, reason: collision with root package name */
    @GuardedBy("this")
    private boolean f7148j;

    public hq(Context context, @Nullable fi fiVar, ns0 ns0Var, zzawv zzawvVar) {
        this.f7143e = context;
        this.f7144f = fiVar;
        this.f7145g = ns0Var;
        this.f7146h = zzawvVar;
    }

    private final synchronized void a() {
        if (this.f7145g.J) {
            if (this.f7144f == null) {
                return;
            }
            if (com.google.android.gms.ads.internal.n.r().b(this.f7143e)) {
                int i2 = this.f7146h.f11001f;
                int i3 = this.f7146h.f11002g;
                StringBuilder sb = new StringBuilder(23);
                sb.append(i2);
                sb.append(".");
                sb.append(i3);
                this.f7147i = com.google.android.gms.ads.internal.n.r().a(sb.toString(), this.f7144f.getWebView(), "", "javascript", this.f7145g.L.optInt("media_type", -1) == 0 ? null : "javascript");
                View view = this.f7144f.getView();
                if (this.f7147i != null && view != null) {
                    com.google.android.gms.ads.internal.n.r().a(this.f7147i, view);
                    this.f7144f.zzaq(this.f7147i);
                    com.google.android.gms.ads.internal.n.r().a(this.f7147i);
                    this.f7148j = true;
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.wt
    public final synchronized void onAdImpression() {
        if (!this.f7148j) {
            a();
        }
        if (this.f7145g.J && this.f7147i != null && this.f7144f != null) {
            this.f7144f.zza("onSdkImpression", new a.e.a());
        }
    }

    @Override // com.google.android.gms.internal.ads.qu
    public final synchronized void onAdLoaded() {
        if (this.f7148j) {
            return;
        }
        a();
    }
}
