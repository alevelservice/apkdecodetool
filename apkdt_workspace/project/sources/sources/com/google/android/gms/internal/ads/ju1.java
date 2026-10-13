package com.google.android.gms.internal.ads;

import android.content.Context;
import android.widget.FrameLayout;
import com.google.android.gms.dynamic.ObjectWrapper;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class ju1 extends ku1<zzaaw> {

    /* renamed from: b, reason: collision with root package name */
    private final /* synthetic */ FrameLayout f7569b;

    /* renamed from: c, reason: collision with root package name */
    private final /* synthetic */ FrameLayout f7570c;

    /* renamed from: d, reason: collision with root package name */
    private final /* synthetic */ Context f7571d;

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ eu1 f7572e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ju1(eu1 eu1Var, FrameLayout frameLayout, FrameLayout frameLayout2, Context context) {
        this.f7572e = eu1Var;
        this.f7569b = frameLayout;
        this.f7570c = frameLayout2;
        this.f7571d = context;
    }

    @Override // com.google.android.gms.internal.ads.ku1
    protected final /* synthetic */ zzaaw a() {
        eu1.a(this.f7571d, "native_ad_view_delegate");
        return new zzxn();
    }

    @Override // com.google.android.gms.internal.ads.ku1
    public final /* synthetic */ zzaaw b() {
        q qVar;
        qVar = this.f7572e.f6505c;
        return qVar.a(this.f7571d, this.f7569b, this.f7570c);
    }

    @Override // com.google.android.gms.internal.ads.ku1
    public final /* synthetic */ zzaaw a(zzvn zzvnVar) {
        return zzvnVar.zzc(ObjectWrapper.wrap(this.f7569b), ObjectWrapper.wrap(this.f7570c));
    }
}
