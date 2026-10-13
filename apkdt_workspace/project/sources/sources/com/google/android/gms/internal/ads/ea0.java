package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ea0 implements oe1<qz0<String>> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<t11> f6385a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<Context> f6386b;

    /* renamed from: c, reason: collision with root package name */
    private final af1<tz0> f6387c;

    private ea0(af1<t11> af1Var, af1<Context> af1Var2, af1<tz0> af1Var3) {
        this.f6385a = af1Var;
        this.f6386b = af1Var2;
        this.f6387c = af1Var3;
    }

    public static ea0 a(af1<t11> af1Var, af1<Context> af1Var2, af1<tz0> af1Var3) {
        return new ea0(af1Var, af1Var2, af1Var3);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        final t11 t11Var = this.f6385a.get();
        final Context context = this.f6386b.get();
        qz0 submit = this.f6387c.get().submit(new Callable(t11Var, context) { // from class: com.google.android.gms.internal.ads.aa0

            /* renamed from: e, reason: collision with root package name */
            private final t11 f5550e;

            /* renamed from: f, reason: collision with root package name */
            private final Context f5551f;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f5550e = t11Var;
                this.f5551f = context;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                t11 t11Var2 = this.f5550e;
                return t11Var2.a().a(this.f5551f);
            }
        });
        ue1.a(submit, "Cannot return null from a non-@Nullable @Provides method");
        return submit;
    }
}
