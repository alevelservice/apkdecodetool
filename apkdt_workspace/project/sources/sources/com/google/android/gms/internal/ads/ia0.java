package com.google.android.gms.internal.ads;

import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ia0 implements oe1<List<String>> {

    /* renamed from: a, reason: collision with root package name */
    private static final ia0 f7256a = new ia0();

    public static ia0 a() {
        return f7256a;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        List<String> a2 = aw1.a();
        ue1.a(a2, "Cannot return null from a non-@Nullable @Provides method");
        return a2;
    }
}
