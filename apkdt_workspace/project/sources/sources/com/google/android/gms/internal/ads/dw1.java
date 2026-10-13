package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class dw1 implements Callable<Void> {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ Context f6322e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dw1(Context context) {
        this.f6322e = context;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ Void call() {
        mu1.e().a(this.f6322e);
        return null;
    }
}
