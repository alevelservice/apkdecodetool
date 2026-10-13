package com.google.android.gms.internal.ads;

import java.io.InputStream;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class bs1 extends he<InputStream> {

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ cs1 f5856f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bs1(cs1 cs1Var) {
        this.f5856f = cs1Var;
    }

    @Override // com.google.android.gms.internal.ads.he, java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        this.f5856f.a();
        return super.cancel(z);
    }
}
