package com.zoloz.webcontainer.r;

import android.webkit.ValueCallback;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: H5WebChromeClient.java */
/* loaded from: classes2.dex */
public class d implements ValueCallback<String> {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ c f16774a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(c cVar) {
        this.f16774a = cVar;
    }

    @Override // android.webkit.ValueCallback
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onReceiveValue(String str) {
        if (str != null) {
            this.f16774a.f16773b = false;
        }
    }
}
