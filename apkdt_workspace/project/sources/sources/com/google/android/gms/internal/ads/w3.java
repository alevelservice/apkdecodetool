package com.google.android.gms.internal.ads;

import android.content.Context;
import javax.annotation.ParametersAreNonnullByDefault;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@ParametersAreNonnullByDefault
/* loaded from: classes.dex */
public final class w3 {

    /* renamed from: a, reason: collision with root package name */
    private final Object f10023a = new Object();

    /* renamed from: b, reason: collision with root package name */
    private final Object f10024b = new Object();

    /* renamed from: c, reason: collision with root package name */
    @GuardedBy("lockClient")
    private c4 f10025c;

    /* renamed from: d, reason: collision with root package name */
    @GuardedBy("lockService")
    private c4 f10026d;

    public final c4 a(Context context, zzawv zzawvVar) {
        c4 c4Var;
        synchronized (this.f10024b) {
            if (this.f10026d == null) {
                this.f10026d = new c4(a(context), zzawvVar, (String) mu1.e().a(aw1.f5665a));
            }
            c4Var = this.f10026d;
        }
        return c4Var;
    }

    public final c4 b(Context context, zzawv zzawvVar) {
        c4 c4Var;
        synchronized (this.f10023a) {
            if (this.f10025c == null) {
                this.f10025c = new c4(a(context), zzawvVar, (String) mu1.e().a(aw1.f5666b));
            }
            c4Var = this.f10025c;
        }
        return c4Var;
    }

    private static Context a(Context context) {
        Context applicationContext = context.getApplicationContext();
        return applicationContext == null ? context : applicationContext;
    }
}
