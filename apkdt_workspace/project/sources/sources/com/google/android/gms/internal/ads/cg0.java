package com.google.android.gms.internal.ads;

import java.util.concurrent.CancellationException;
import java.util.concurrent.TimeoutException;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: Add missing generic type declarations: [T] */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class cg0<T> implements hz0<T> {

    /* renamed from: a, reason: collision with root package name */
    private final /* synthetic */ String f6006a;

    /* renamed from: b, reason: collision with root package name */
    private final /* synthetic */ long f6007b;

    /* renamed from: c, reason: collision with root package name */
    private final /* synthetic */ zf0 f6008c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cg0(zf0 zf0Var, String str, long j2) {
        this.f6008c = zf0Var;
        this.f6006a = str;
        this.f6007b = j2;
    }

    @Override // com.google.android.gms.internal.ads.hz0
    public final void a(T t) {
        com.google.android.gms.common.util.e eVar;
        eVar = this.f6008c.f10740a;
        this.f6008c.a(this.f6006a, 0, eVar.c() - this.f6007b);
    }

    @Override // com.google.android.gms.internal.ads.hz0
    public final void a(Throwable th) {
        com.google.android.gms.common.util.e eVar;
        eVar = this.f6008c.f10740a;
        long c2 = eVar.c();
        int i2 = 3;
        if (th instanceof TimeoutException) {
            i2 = 2;
        } else if (!(th instanceof pf0)) {
            if (th instanceof CancellationException) {
                i2 = 4;
            } else {
                i2 = ((th instanceof t90) && ((t90) th).getErrorCode() == 3) ? 1 : 6;
            }
        }
        this.f6008c.a(this.f6006a, i2, c2 - this.f6007b);
    }
}
