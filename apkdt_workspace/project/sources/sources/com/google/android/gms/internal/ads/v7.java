package com.google.android.gms.internal.ads;

import java.io.InputStream;
import java.util.Collections;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class v7 {

    /* renamed from: a, reason: collision with root package name */
    private final int f9877a;

    /* renamed from: b, reason: collision with root package name */
    private final List<wk1> f9878b;

    /* renamed from: c, reason: collision with root package name */
    private final int f9879c;

    /* renamed from: d, reason: collision with root package name */
    private final InputStream f9880d;

    public v7(int i2, List<wk1> list) {
        this(i2, list, -1, null);
    }

    public final InputStream a() {
        return this.f9880d;
    }

    public final int b() {
        return this.f9879c;
    }

    public final int c() {
        return this.f9877a;
    }

    public final List<wk1> d() {
        return Collections.unmodifiableList(this.f9878b);
    }

    public v7(int i2, List<wk1> list, int i3, InputStream inputStream) {
        this.f9877a = i2;
        this.f9878b = list;
        this.f9879c = i3;
        this.f9880d = inputStream;
    }
}
