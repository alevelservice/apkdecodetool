package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.d11;
import java.util.Collections;
import java.util.Set;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class e11 implements d11.a {

    /* renamed from: a, reason: collision with root package name */
    private final /* synthetic */ u01 f6330a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e11(u01 u01Var) {
        this.f6330a = u01Var;
    }

    @Override // com.google.android.gms.internal.ads.d11.a
    public final <Q> u01<Q> a(Class<Q> cls) {
        if (this.f6330a.a().equals(cls)) {
            return this.f6330a;
        }
        throw new InternalError("This should never be called, as we always first check supportedPrimitives.");
    }

    @Override // com.google.android.gms.internal.ads.d11.a
    public final Class<?> b() {
        return this.f6330a.getClass();
    }

    @Override // com.google.android.gms.internal.ads.d11.a
    public final Set<Class<?>> c() {
        return Collections.singleton(this.f6330a.a());
    }

    @Override // com.google.android.gms.internal.ads.d11.a
    public final u01<?> a() {
        return this.f6330a;
    }
}
