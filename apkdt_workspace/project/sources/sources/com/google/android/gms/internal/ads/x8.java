package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class x8 implements fq1 {

    /* renamed from: e, reason: collision with root package name */
    private final Context f10287e;

    /* renamed from: f, reason: collision with root package name */
    private final Object f10288f;

    /* renamed from: g, reason: collision with root package name */
    private String f10289g;

    /* renamed from: h, reason: collision with root package name */
    private boolean f10290h;

    public x8(Context context, String str) {
        this.f10287e = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.f10289g = str;
        this.f10290h = false;
        this.f10288f = new Object();
    }

    public final void a(boolean z) {
        if (com.google.android.gms.ads.internal.n.A().a(this.f10287e)) {
            synchronized (this.f10288f) {
                if (this.f10290h == z) {
                    return;
                }
                this.f10290h = z;
                if (TextUtils.isEmpty(this.f10289g)) {
                    return;
                }
                if (this.f10290h) {
                    com.google.android.gms.ads.internal.n.A().a(this.f10287e, this.f10289g);
                } else {
                    com.google.android.gms.ads.internal.n.A().b(this.f10287e, this.f10289g);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.fq1
    public final void zza(cq1 cq1Var) {
        a(cq1Var.f6096j);
    }

    public final String a() {
        return this.f10289g;
    }
}
