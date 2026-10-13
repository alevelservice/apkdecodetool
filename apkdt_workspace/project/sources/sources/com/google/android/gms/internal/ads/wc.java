package com.google.android.gms.internal.ads;

import android.content.Context;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class wc extends ja {

    /* renamed from: c, reason: collision with root package name */
    private final ud f10080c;

    /* renamed from: d, reason: collision with root package name */
    private final String f10081d;

    public wc(Context context, String str, String str2) {
        this(str2, com.google.android.gms.ads.internal.n.c().a(context, str));
    }

    @Override // com.google.android.gms.internal.ads.ja
    public final void a() {
        this.f10080c.a(this.f10081d);
    }

    private wc(String str, String str2) {
        this.f10080c = new ud(str2);
        this.f10081d = str;
    }
}
