package com.google.android.gms.internal.ads;

import android.content.pm.PackageInfo;
import androidx.annotation.Nullable;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ep0 implements ko0<fp0> {

    /* renamed from: a, reason: collision with root package name */
    private final x9 f6484a;

    /* renamed from: b, reason: collision with root package name */
    private final Executor f6485b;

    /* renamed from: c, reason: collision with root package name */
    private final String f6486c;

    /* renamed from: d, reason: collision with root package name */
    @Nullable
    private final PackageInfo f6487d;

    public ep0(x9 x9Var, Executor executor, String str, @Nullable PackageInfo packageInfo) {
        this.f6484a = x9Var;
        this.f6485b = executor;
        this.f6486c = str;
        this.f6487d = packageInfo;
    }

    @Override // com.google.android.gms.internal.ads.ko0
    public final qz0<fp0> a() {
        return gz0.a(gz0.a(this.f6484a.a(this.f6486c, this.f6487d), hp0.f7142a, this.f6485b), Throwable.class, new qy0(this) { // from class: com.google.android.gms.internal.ads.gp0

            /* renamed from: a, reason: collision with root package name */
            private final ep0 f6958a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f6958a = this;
            }

            @Override // com.google.android.gms.internal.ads.qy0
            public final qz0 b(Object obj) {
                return this.f6958a.a((Throwable) obj);
            }
        }, this.f6485b);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ qz0 a(Throwable th) {
        return gz0.a(new fp0(this.f6486c));
    }
}
