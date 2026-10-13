package com.google.android.gms.internal.ads;

import android.view.View;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class bi0 implements com.google.android.gms.ads.internal.g {

    /* renamed from: a, reason: collision with root package name */
    @GuardedBy("this")
    private com.google.android.gms.ads.internal.g f5778a;

    public final synchronized void a(com.google.android.gms.ads.internal.g gVar) {
        this.f5778a = gVar;
    }

    @Override // com.google.android.gms.ads.internal.g
    public final synchronized void b() {
        if (this.f5778a != null) {
            this.f5778a.b();
        }
    }

    @Override // com.google.android.gms.ads.internal.g
    public final synchronized void a(View view) {
        if (this.f5778a != null) {
            this.f5778a.a(view);
        }
    }

    @Override // com.google.android.gms.ads.internal.g
    public final synchronized void a() {
        if (this.f5778a != null) {
            this.f5778a.a();
        }
    }
}
