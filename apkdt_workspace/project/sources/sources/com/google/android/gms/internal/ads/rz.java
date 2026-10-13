package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.annotation.Nullable;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.HashMap;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class rz implements com.google.android.gms.ads.internal.overlay.m, qu {

    /* renamed from: e, reason: collision with root package name */
    private final Context f9253e;

    /* renamed from: f, reason: collision with root package name */
    @Nullable
    private final fi f9254f;

    /* renamed from: g, reason: collision with root package name */
    private final ns0 f9255g;

    /* renamed from: h, reason: collision with root package name */
    private final zzawv f9256h;

    /* renamed from: i, reason: collision with root package name */
    private final int f9257i;

    /* renamed from: j, reason: collision with root package name */
    @Nullable
    @VisibleForTesting
    private IObjectWrapper f9258j;

    public rz(Context context, @Nullable fi fiVar, ns0 ns0Var, zzawv zzawvVar, int i2) {
        this.f9253e = context;
        this.f9254f = fiVar;
        this.f9255g = ns0Var;
        this.f9256h = zzawvVar;
        this.f9257i = i2;
    }

    @Override // com.google.android.gms.ads.internal.overlay.m
    public final void a() {
        this.f9258j = null;
    }

    @Override // com.google.android.gms.ads.internal.overlay.m
    public final void b() {
        fi fiVar;
        if (this.f9258j == null || (fiVar = this.f9254f) == null) {
            return;
        }
        fiVar.zza("onSdkImpression", new HashMap());
    }

    @Override // com.google.android.gms.internal.ads.qu
    public final void onAdLoaded() {
        int i2 = this.f9257i;
        if ((i2 == 7 || i2 == 3) && this.f9255g.J && this.f9254f != null && com.google.android.gms.ads.internal.n.r().b(this.f9253e)) {
            zzawv zzawvVar = this.f9256h;
            int i3 = zzawvVar.f11001f;
            int i4 = zzawvVar.f11002g;
            StringBuilder sb = new StringBuilder(23);
            sb.append(i3);
            sb.append(".");
            sb.append(i4);
            this.f9258j = com.google.android.gms.ads.internal.n.r().a(sb.toString(), this.f9254f.getWebView(), "", "javascript", this.f9255g.L.optInt("media_type", -1) == 0 ? null : "javascript");
            if (this.f9258j == null || this.f9254f.getView() == null) {
                return;
            }
            com.google.android.gms.ads.internal.n.r().a(this.f9258j, this.f9254f.getView());
            this.f9254f.zzaq(this.f9258j);
            com.google.android.gms.ads.internal.n.r().a(this.f9258j);
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.m
    public final void onPause() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.m
    public final void onResume() {
    }
}
