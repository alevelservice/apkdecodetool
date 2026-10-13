package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class xa implements ld {

    /* renamed from: a, reason: collision with root package name */
    private final /* synthetic */ Context f10297a;

    /* renamed from: b, reason: collision with root package name */
    private final /* synthetic */ String f10298b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public xa(wa waVar, Context context, String str) {
        this.f10297a = context;
        this.f10298b = str;
    }

    @Override // com.google.android.gms.internal.ads.ld
    public final void a(String str) {
        com.google.android.gms.ads.internal.n.c();
        wa.a(this.f10297a, this.f10298b, str);
    }
}
