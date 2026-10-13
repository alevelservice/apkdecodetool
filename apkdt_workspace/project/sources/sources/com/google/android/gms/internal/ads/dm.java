package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class dm implements oe1<v8> {

    /* renamed from: a, reason: collision with root package name */
    private final cm f6253a;

    public dm(cm cmVar) {
        this.f6253a = cmVar;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        v8 a2 = this.f6253a.a();
        ue1.a(a2, "Cannot return null from a non-@Nullable @Provides method");
        return a2;
    }
}
