package com.google.android.gms.internal.ads;

import android.webkit.ValueCallback;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class xq1 implements ValueCallback<String> {

    /* renamed from: a, reason: collision with root package name */
    private final /* synthetic */ yq1 f10416a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public xq1(yq1 yq1Var) {
        this.f10416a = yq1Var;
    }

    @Override // android.webkit.ValueCallback
    public final /* synthetic */ void onReceiveValue(String str) {
        yq1 yq1Var = this.f10416a;
        yq1Var.f10632i.a(yq1Var.f10629f, yq1Var.f10630g, str, yq1Var.f10631h);
    }
}
