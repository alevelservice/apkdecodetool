package com.facebook.imageutils;

import android.graphics.ColorSpace;
import android.util.Pair;
import javax.annotation.Nullable;

/* compiled from: ImageMetaData.java */
/* loaded from: classes.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    private final Pair<Integer, Integer> f4151a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    private final ColorSpace f4152b;

    public b(int i2, int i3, @Nullable ColorSpace colorSpace) {
        this.f4151a = (i2 == -1 || i3 == -1) ? null : new Pair<>(Integer.valueOf(i2), Integer.valueOf(i3));
        this.f4152b = colorSpace;
    }

    @Nullable
    public ColorSpace a() {
        return this.f4152b;
    }

    @Nullable
    public Pair<Integer, Integer> b() {
        return this.f4151a;
    }
}
