package com.google.android.gms.auth.api.signin.internal;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.util.VisibleForTesting;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
/* loaded from: classes.dex */
public class a {

    /* renamed from: b, reason: collision with root package name */
    @VisibleForTesting
    private static int f4865b = 31;

    /* renamed from: a, reason: collision with root package name */
    private int f4866a = 1;

    @KeepForSdk
    public a a(Object obj) {
        this.f4866a = (f4865b * this.f4866a) + (obj == null ? 0 : obj.hashCode());
        return this;
    }

    public final a a(boolean z) {
        this.f4866a = (f4865b * this.f4866a) + (z ? 1 : 0);
        return this;
    }

    @KeepForSdk
    public int a() {
        return this.f4866a;
    }
}
