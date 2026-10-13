package com.google.android.gms.common.api.internal;

import com.google.android.gms.signin.internal.zak;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
/* loaded from: classes.dex */
final class u0 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ zak f5137e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ zace f5138f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public u0(zace zaceVar, zak zakVar) {
        this.f5138f = zaceVar;
        this.f5137e = zakVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f5138f.a(this.f5137e);
    }
}
