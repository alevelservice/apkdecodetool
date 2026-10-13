package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class nr implements oe1<String> {

    /* renamed from: a, reason: collision with root package name */
    private final lr f8413a;

    private nr(lr lrVar) {
        this.f8413a = lrVar;
    }

    public static nr a(lr lrVar) {
        return new nr(lrVar);
    }

    public static String b(lr lrVar) {
        String c2 = lrVar.c();
        ue1.a(c2, "Cannot return null from a non-@Nullable @Provides method");
        return c2;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return b(this.f8413a);
    }
}
