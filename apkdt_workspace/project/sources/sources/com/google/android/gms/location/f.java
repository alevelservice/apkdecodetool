package com.google.android.gms.location;

import android.app.Activity;
import android.content.Context;
import androidx.annotation.NonNull;
import com.google.android.gms.common.api.a;

/* loaded from: classes.dex */
public class f {

    /* renamed from: a, reason: collision with root package name */
    private static final a.g<com.google.android.gms.internal.location.i> f12699a = new a.g<>();

    /* renamed from: b, reason: collision with root package name */
    private static final a.AbstractC0084a<com.google.android.gms.internal.location.i, a.d.C0086d> f12700b = new n();

    /* renamed from: c, reason: collision with root package name */
    public static final com.google.android.gms.common.api.a<a.d.C0086d> f12701c = new com.google.android.gms.common.api.a<>("LocationServices.API", f12700b, f12699a);

    /* renamed from: d, reason: collision with root package name */
    @Deprecated
    public static final com.google.android.gms.location.a f12702d = new com.google.android.gms.internal.location.v();

    /* renamed from: e, reason: collision with root package name */
    @Deprecated
    public static final i f12703e;

    /* loaded from: classes.dex */
    public static abstract class a<R extends com.google.android.gms.common.api.m> extends com.google.android.gms.common.api.internal.d<R, com.google.android.gms.internal.location.i> {
        public a(com.google.android.gms.common.api.f fVar) {
            super(f.f12701c, fVar);
        }
    }

    static {
        new com.google.android.gms.internal.location.d();
        f12703e = new com.google.android.gms.internal.location.n();
    }

    public static FusedLocationProviderClient a(@NonNull Activity activity) {
        return new FusedLocationProviderClient(activity);
    }

    public static FusedLocationProviderClient a(@NonNull Context context) {
        return new FusedLocationProviderClient(context);
    }

    public static j b(@NonNull Activity activity) {
        return new j(activity);
    }
}
