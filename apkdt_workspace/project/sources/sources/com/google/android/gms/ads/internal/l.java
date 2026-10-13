package com.google.android.gms.ads.internal;

import android.os.AsyncTask;
import android.webkit.WebView;
import com.google.android.gms.internal.ads.aw1;
import com.google.android.gms.internal.ads.mu1;
import com.google.android.gms.internal.ads.qd;
import com.google.android.gms.internal.ads.t11;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class l extends AsyncTask<Void, Void, String> {

    /* renamed from: a, reason: collision with root package name */
    private final /* synthetic */ zzj f4532a;

    private l(zzj zzjVar) {
        this.f4532a = zzjVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // android.os.AsyncTask
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final String doInBackground(Void... voidArr) {
        Future future;
        try {
            zzj zzjVar = this.f4532a;
            future = this.f4532a.f4605g;
            zzjVar.f4610l = (t11) future.get(((Long) mu1.e().a(aw1.h2)).longValue(), TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e2) {
            qd.c("", e2);
        }
        return this.f4532a.zzjs();
    }

    @Override // android.os.AsyncTask
    protected final /* synthetic */ void onPostExecute(String str) {
        WebView webView;
        WebView webView2;
        String str2 = str;
        webView = this.f4532a.f4608j;
        if (webView == null || str2 == null) {
            return;
        }
        webView2 = this.f4532a.f4608j;
        webView2.loadUrl(str2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ l(zzj zzjVar, k kVar) {
        this(zzjVar);
    }
}
