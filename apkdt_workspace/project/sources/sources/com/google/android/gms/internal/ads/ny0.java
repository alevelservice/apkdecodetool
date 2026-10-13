package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.ly0;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ny0 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ int f8455e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ qz0 f8456f;

    /* renamed from: g, reason: collision with root package name */
    private final /* synthetic */ ly0.a f8457g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ny0(ly0.a aVar, int i2, qz0 qz0Var) {
        this.f8457g = aVar;
        this.f8455e = i2;
        this.f8456f = qz0Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f8457g.a(this.f8455e, this.f8456f);
        } finally {
            this.f8457g.g();
        }
    }
}
