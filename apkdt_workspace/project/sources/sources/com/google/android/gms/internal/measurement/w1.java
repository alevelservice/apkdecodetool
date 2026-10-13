package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.net.Uri;
import javax.annotation.Nullable;

/* loaded from: classes.dex */
public final class w1 {

    /* renamed from: a, reason: collision with root package name */
    private final Uri f12163a;

    /* renamed from: b, reason: collision with root package name */
    private final String f12164b;

    /* renamed from: c, reason: collision with root package name */
    private final String f12165c;

    public w1(Uri uri) {
        this(null, uri, "", "", false, false, false, false, null);
    }

    public final p1<Long> a(String str, long j2) {
        return p1.b(this, str, j2);
    }

    private w1(String str, Uri uri, String str2, String str3, boolean z, boolean z2, boolean z3, boolean z4, @Nullable a2<Context, Boolean> a2Var) {
        this.f12163a = uri;
        this.f12164b = str2;
        this.f12165c = str3;
    }

    public final p1<Boolean> a(String str, boolean z) {
        return p1.b(this, str, z);
    }

    public final p1<Double> a(String str, double d2) {
        return p1.b(this, str, -3.0d);
    }

    public final p1<String> a(String str, String str2) {
        return p1.b(this, str, str2);
    }
}
