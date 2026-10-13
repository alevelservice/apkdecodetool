package com.google.android.gms.internal.ads;

import android.content.Context;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class tl implements es0 {

    /* renamed from: a, reason: collision with root package name */
    private Context f9598a;

    /* renamed from: b, reason: collision with root package name */
    private String f9599b;

    /* renamed from: c, reason: collision with root package name */
    private final /* synthetic */ bl f9600c;

    private tl(bl blVar) {
        this.f9600c = blVar;
    }

    @Override // com.google.android.gms.internal.ads.es0
    public final fs0 a() {
        ue1.a(this.f9598a, (Class<Context>) Context.class);
        return new xl(this.f9600c, this.f9598a, this.f9599b);
    }

    @Override // com.google.android.gms.internal.ads.es0
    public final /* synthetic */ es0 a(String str) {
        this.f9599b = str;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.es0
    public final /* synthetic */ es0 a(Context context) {
        ue1.a(context);
        this.f9598a = context;
        return this;
    }
}
