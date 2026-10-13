package com.google.android.gms.internal.clearcut;

import android.net.Uri;

/* loaded from: classes.dex */
public final class o {

    /* renamed from: a, reason: collision with root package name */
    private final String f11515a;

    /* renamed from: b, reason: collision with root package name */
    private final Uri f11516b;

    /* renamed from: c, reason: collision with root package name */
    private final String f11517c;

    /* renamed from: d, reason: collision with root package name */
    private final String f11518d;

    /* renamed from: e, reason: collision with root package name */
    private final boolean f11519e;

    /* renamed from: f, reason: collision with root package name */
    private final boolean f11520f;

    public o(Uri uri) {
        this(null, uri, "", "", false, false);
    }

    private o(String str, Uri uri, String str2, String str3, boolean z, boolean z2) {
        this.f11515a = str;
        this.f11516b = uri;
        this.f11517c = str2;
        this.f11518d = str3;
        this.f11519e = z;
        this.f11520f = z2;
    }

    public final <T> e<T> a(String str, T t, n<T> nVar) {
        return e.b(this, str, t, nVar);
    }

    public final e<String> a(String str, String str2) {
        return e.b(this, str, (String) null);
    }

    public final e<Boolean> a(String str, boolean z) {
        return e.b(this, str, false);
    }

    public final o a(String str) {
        boolean z = this.f11519e;
        if (z) {
            throw new IllegalStateException("Cannot set GServices prefix and skip GServices");
        }
        return new o(this.f11515a, this.f11516b, str, this.f11518d, z, this.f11520f);
    }

    public final o b(String str) {
        return new o(this.f11515a, this.f11516b, this.f11517c, str, this.f11519e, this.f11520f);
    }
}
