package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class eb0 implements sv {

    /* renamed from: e, reason: collision with root package name */
    private final Context f6389e;

    /* renamed from: f, reason: collision with root package name */
    private final a9 f6390f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public eb0(Context context, a9 a9Var) {
        this.f6389e = context;
        this.f6390f = a9Var;
    }

    @Override // com.google.android.gms.internal.ads.sv
    public final void a(vs0 vs0Var) {
        if (TextUtils.isEmpty(vs0Var.f9986b.f9630b.f8771d)) {
            return;
        }
        this.f6390f.a(this.f6389e, vs0Var.f9985a.f9004a.f10195d);
        this.f6390f.f(this.f6389e, vs0Var.f9986b.f9630b.f8771d);
    }

    @Override // com.google.android.gms.internal.ads.sv
    public final void a(zzaok zzaokVar) {
    }
}
