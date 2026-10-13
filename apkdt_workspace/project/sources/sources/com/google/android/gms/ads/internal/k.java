package com.google.android.gms.ads.internal;

import android.os.RemoteException;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.internal.ads.aw1;
import com.google.android.gms.internal.ads.mu1;
import com.google.android.gms.internal.ads.qd;
import com.google.android.gms.internal.ads.zzur;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class k extends WebViewClient {

    /* renamed from: a, reason: collision with root package name */
    private final /* synthetic */ zzj f4531a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(zzj zzjVar) {
        this.f4531a = zzjVar;
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        zzur zzurVar;
        zzur zzurVar2;
        zzurVar = this.f4531a.f4609k;
        if (zzurVar != null) {
            try {
                zzurVar2 = this.f4531a.f4609k;
                zzurVar2.onAdFailedToLoad(0);
            } catch (RemoteException e2) {
                qd.d("#007 Could not call remote method.", e2);
            }
        }
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        zzur zzurVar;
        zzur zzurVar2;
        String a2;
        zzur zzurVar3;
        zzur zzurVar4;
        zzur zzurVar5;
        zzur zzurVar6;
        zzur zzurVar7;
        zzur zzurVar8;
        if (str.startsWith(this.f4531a.zzjt())) {
            return false;
        }
        if (!str.startsWith((String) mu1.e().a(aw1.c2))) {
            if (!str.startsWith((String) mu1.e().a(aw1.d2))) {
                if (str.startsWith((String) mu1.e().a(aw1.e2))) {
                    zzurVar3 = this.f4531a.f4609k;
                    if (zzurVar3 != null) {
                        try {
                            zzurVar4 = this.f4531a.f4609k;
                            zzurVar4.onAdLoaded();
                        } catch (RemoteException e2) {
                            qd.d("#007 Could not call remote method.", e2);
                        }
                    }
                    this.f4531a.zzbl(this.f4531a.zzbn(str));
                    return true;
                }
                if (str.startsWith("gmsg://")) {
                    return true;
                }
                zzurVar = this.f4531a.f4609k;
                if (zzurVar != null) {
                    try {
                        zzurVar2 = this.f4531a.f4609k;
                        zzurVar2.onAdLeftApplication();
                    } catch (RemoteException e3) {
                        qd.d("#007 Could not call remote method.", e3);
                    }
                }
                a2 = this.f4531a.a(str);
                this.f4531a.b(a2);
                return true;
            }
            zzurVar5 = this.f4531a.f4609k;
            if (zzurVar5 != null) {
                try {
                    zzurVar6 = this.f4531a.f4609k;
                    zzurVar6.onAdFailedToLoad(0);
                } catch (RemoteException e4) {
                    qd.d("#007 Could not call remote method.", e4);
                }
            }
            this.f4531a.zzbl(0);
            return true;
        }
        zzurVar7 = this.f4531a.f4609k;
        if (zzurVar7 != null) {
            try {
                zzurVar8 = this.f4531a.f4609k;
                zzurVar8.onAdFailedToLoad(3);
            } catch (RemoteException e5) {
                qd.d("#007 Could not call remote method.", e5);
            }
        }
        this.f4531a.zzbl(0);
        return true;
    }
}
