package com.google.android.gms.internal.ads;

import android.webkit.JavascriptInterface;
import androidx.annotation.Nullable;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class v1 {

    /* renamed from: a, reason: collision with root package name */
    private final d2 f9848a;

    private v1(d2 d2Var) {
        this.f9848a = d2Var;
    }

    @JavascriptInterface
    public final void notify(@Nullable String str) {
        this.f9848a.d(str);
    }
}
