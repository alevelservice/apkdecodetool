package com.google.android.gms.ads.internal;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.webkit.WebView;
import androidx.annotation.Nullable;
import com.alipay.mobile.security.bio.common.record.MetaRecord;
import com.ap.zoloz.hummer.h5.H5PluginHandler;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.aw1;
import com.google.android.gms.internal.ads.gd;
import com.google.android.gms.internal.ads.mu1;
import com.google.android.gms.internal.ads.qd;
import com.google.android.gms.internal.ads.t11;
import com.google.android.gms.internal.ads.w31;
import com.google.android.gms.internal.ads.yd;
import com.google.android.gms.internal.ads.zzand;
import com.google.android.gms.internal.ads.zzanj;
import com.google.android.gms.internal.ads.zzapo;
import com.google.android.gms.internal.ads.zzawv;
import com.google.android.gms.internal.ads.zzqu;
import com.google.android.gms.internal.ads.zztp;
import com.google.android.gms.internal.ads.zztw;
import com.google.android.gms.internal.ads.zztx;
import com.google.android.gms.internal.ads.zzuq;
import com.google.android.gms.internal.ads.zzur;
import com.google.android.gms.internal.ads.zzvd;
import com.google.android.gms.internal.ads.zzvh;
import com.google.android.gms.internal.ads.zzvm;
import com.google.android.gms.internal.ads.zzvs;
import com.google.android.gms.internal.ads.zzwk;
import com.google.android.gms.internal.ads.zzwq;
import com.google.android.gms.internal.ads.zzyc;
import com.google.android.gms.internal.ads.zzzn;
import java.util.Map;
import java.util.concurrent.Future;
import javax.annotation.ParametersAreNonnullByDefault;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@ParametersAreNonnullByDefault
/* loaded from: classes.dex */
public final class zzj extends zzvd {

    /* renamed from: e, reason: collision with root package name */
    private final zzawv f4603e;

    /* renamed from: f, reason: collision with root package name */
    private final zztw f4604f;

    /* renamed from: g, reason: collision with root package name */
    private final Future<t11> f4605g = yd.f10540a.submit(new m(this));

    /* renamed from: h, reason: collision with root package name */
    private final Context f4606h;

    /* renamed from: i, reason: collision with root package name */
    private final o f4607i;

    /* renamed from: j, reason: collision with root package name */
    @Nullable
    private WebView f4608j;

    /* renamed from: k, reason: collision with root package name */
    @Nullable
    private zzur f4609k;

    /* renamed from: l, reason: collision with root package name */
    @Nullable
    private t11 f4610l;
    private AsyncTask<Void, Void, String> m;

    public zzj(Context context, zztw zztwVar, String str, zzawv zzawvVar) {
        this.f4606h = context;
        this.f4603e = zzawvVar;
        this.f4604f = zztwVar;
        this.f4608j = new WebView(this.f4606h);
        this.f4607i = new o(str);
        zzbl(0);
        this.f4608j.setVerticalScrollBarEnabled(false);
        this.f4608j.getSettings().setJavaScriptEnabled(true);
        this.f4608j.setWebViewClient(new k(this));
        this.f4608j.setOnTouchListener(new j(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String a(String str) {
        if (this.f4610l == null) {
            return str;
        }
        Uri parse = Uri.parse(str);
        try {
            parse = this.f4610l.b(parse, this.f4606h);
        } catch (w31 e2) {
            qd.c("Unable to process ad data", e2);
        }
        return parse.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b(String str) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(str));
        this.f4606h.startActivity(intent);
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void destroy() {
        com.google.android.gms.common.internal.m.a("destroy must be called on the main UI thread.");
        this.m.cancel(true);
        this.f4605g.cancel(true);
        this.f4608j.destroy();
        this.f4608j = null;
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final Bundle getAdMetadata() {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final String getAdUnitId() {
        throw new IllegalStateException("getAdUnitId not implemented");
    }

    @Override // com.google.android.gms.internal.ads.zzve
    @Nullable
    public final String getMediationAdapterClassName() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzve
    @Nullable
    public final zzwk getVideoController() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final boolean isLoading() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final boolean isReady() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void pause() {
        com.google.android.gms.common.internal.m.a("pause must be called on the main UI thread.");
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void resume() {
        com.google.android.gms.common.internal.m.a("resume must be called on the main UI thread.");
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void setImmersiveMode(boolean z) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void setManualImpressionsEnabled(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void setUserId(String str) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void showInterstitial() {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void stopLoading() {
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final boolean zza(zztp zztpVar) {
        com.google.android.gms.common.internal.m.a(this.f4608j, "This Search Ad has already been torn down");
        this.f4607i.a(zztpVar, this.f4603e);
        this.m = new l(this, null).execute(new Void[0]);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    public final void zzbl(int i2) {
        if (this.f4608j == null) {
            return;
        }
        this.f4608j.setLayoutParams(new ViewGroup.LayoutParams(-1, i2));
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void zzbm(String str) {
        throw new IllegalStateException("Unused method");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    public final int zzbn(String str) {
        String queryParameter = Uri.parse(str).getQueryParameter("height");
        if (TextUtils.isEmpty(queryParameter)) {
            return 0;
        }
        try {
            mu1.a();
            return gd.b(this.f4606h, Integer.parseInt(queryParameter));
        } catch (NumberFormatException unused) {
            return 0;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final IObjectWrapper zzjm() {
        com.google.android.gms.common.internal.m.a("getAdFrame must be called on the main UI thread.");
        return ObjectWrapper.wrap(this.f4608j);
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void zzjn() {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final zztw zzjo() {
        return this.f4604f;
    }

    @Override // com.google.android.gms.internal.ads.zzve
    @Nullable
    public final String zzjp() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final zzvm zzjq() {
        throw new IllegalStateException("getIAppEventListener not implemented");
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final zzur zzjr() {
        throw new IllegalStateException("getIAdListener not implemented");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    public final String zzjs() {
        Uri.Builder builder = new Uri.Builder();
        builder.scheme("https://").appendEncodedPath((String) mu1.e().a(aw1.f2));
        builder.appendQueryParameter(H5PluginHandler.HUMMER_FOUNDATION_QUERY, this.f4607i.a());
        builder.appendQueryParameter("pubId", this.f4607i.c());
        Map<String, String> d2 = this.f4607i.d();
        for (String str : d2.keySet()) {
            builder.appendQueryParameter(str, d2.get(str));
        }
        Uri build = builder.build();
        t11 t11Var = this.f4610l;
        if (t11Var != null) {
            try {
                build = t11Var.a(build, this.f4606h);
            } catch (w31 e2) {
                qd.c("Unable to process ad data", e2);
            }
        }
        String zzjt = zzjt();
        String encodedQuery = build.getEncodedQuery();
        StringBuilder sb = new StringBuilder(String.valueOf(zzjt).length() + 1 + String.valueOf(encodedQuery).length());
        sb.append(zzjt);
        sb.append(MetaRecord.LOG_SEPARATOR);
        sb.append(encodedQuery);
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    public final String zzjt() {
        String b2 = this.f4607i.b();
        if (TextUtils.isEmpty(b2)) {
            b2 = "www.google.com";
        }
        String str = (String) mu1.e().a(aw1.f2);
        StringBuilder sb = new StringBuilder(String.valueOf(b2).length() + 8 + String.valueOf(str).length());
        sb.append("https://");
        sb.append(b2);
        sb.append(str);
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void zza(zzur zzurVar) {
        this.f4609k = zzurVar;
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void zza(zzvm zzvmVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void zza(zzvh zzvhVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void zza(zztw zztwVar) {
        throw new IllegalStateException("AdSize must be set before initialization");
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void zza(zzand zzandVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void zza(zzanj zzanjVar, String str) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void zza(zzzn zzznVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void zza(zzuq zzuqVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void zza(zzvs zzvsVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void zza(zzapo zzapoVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void zza(zzyc zzycVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void zza(zzwq zzwqVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void zza(zztx zztxVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void zza(zzqu zzquVar) {
        throw new IllegalStateException("Unused method");
    }
}
