package com.google.android.gms.phenotype;

import android.net.Uri;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.a;

@KeepForSdk
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    private static final a.g<com.google.android.gms.internal.phenotype.b> f13420a = new a.g<>();

    /* renamed from: b, reason: collision with root package name */
    private static final a.AbstractC0084a<com.google.android.gms.internal.phenotype.b, a.d.C0086d> f13421b = new j();

    static {
        new com.google.android.gms.common.api.a("Phenotype.API", f13421b, f13420a);
        new com.google.android.gms.internal.phenotype.a();
    }

    @KeepForSdk
    public static Uri a(String str) {
        String valueOf = String.valueOf(Uri.encode(str));
        return Uri.parse(valueOf.length() != 0 ? "content://com.google.android.gms.phenotype/".concat(valueOf) : new String("content://com.google.android.gms.phenotype/"));
    }
}
