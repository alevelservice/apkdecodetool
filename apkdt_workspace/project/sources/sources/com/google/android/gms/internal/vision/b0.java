package com.google.android.gms.internal.vision;

import android.content.Context;
import android.net.Uri;
import javax.annotation.Nullable;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
public final class b0 {

    /* renamed from: a, reason: collision with root package name */
    final String f12297a;

    /* renamed from: b, reason: collision with root package name */
    final Uri f12298b;

    /* renamed from: c, reason: collision with root package name */
    final String f12299c;

    /* renamed from: d, reason: collision with root package name */
    final String f12300d;

    /* renamed from: e, reason: collision with root package name */
    final boolean f12301e;

    /* renamed from: f, reason: collision with root package name */
    final boolean f12302f;

    /* renamed from: g, reason: collision with root package name */
    final boolean f12303g;

    /* renamed from: h, reason: collision with root package name */
    final boolean f12304h;

    /* renamed from: i, reason: collision with root package name */
    @Nullable
    final e0<Context, Boolean> f12305i;

    public b0(Uri uri) {
        this(null, uri, "", "", false, false, false, false, null);
    }

    public final b0 a(String str) {
        boolean z = this.f12301e;
        if (!z) {
            return new b0(this.f12297a, this.f12298b, str, this.f12300d, z, this.f12302f, this.f12303g, this.f12304h, this.f12305i);
        }
        throw new IllegalStateException("Cannot set GServices prefix and skip GServices");
    }

    private b0(String str, Uri uri, String str2, String str3, boolean z, boolean z2, boolean z3, boolean z4, @Nullable e0<Context, Boolean> e0Var) {
        this.f12297a = str;
        this.f12298b = uri;
        this.f12299c = str2;
        this.f12300d = str3;
        this.f12301e = z;
        this.f12302f = z2;
        this.f12303g = z3;
        this.f12304h = z4;
        this.f12305i = e0Var;
    }

    public final x<Boolean> a(String str, boolean z) {
        x<Boolean> a2;
        a2 = x.a(this, str, z);
        return a2;
    }
}
