package com.facebook.imagepipeline.memory;

import android.util.SparseIntArray;
import javax.annotation.Nullable;

/* compiled from: PoolParams.java */
/* loaded from: classes.dex */
public class f0 {

    /* renamed from: a, reason: collision with root package name */
    public final int f3845a;

    /* renamed from: b, reason: collision with root package name */
    public final int f3846b;

    /* renamed from: c, reason: collision with root package name */
    public final SparseIntArray f3847c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f3848d;

    /* renamed from: e, reason: collision with root package name */
    public final int f3849e;

    public f0(int i2, int i3, @Nullable SparseIntArray sparseIntArray) {
        this(i2, i3, sparseIntArray, 0, Integer.MAX_VALUE, -1);
    }

    public f0(int i2, int i3, @Nullable SparseIntArray sparseIntArray, int i4, int i5, int i6) {
        com.facebook.common.internal.h.b(i2 >= 0 && i3 >= i2);
        this.f3846b = i2;
        this.f3845a = i3;
        this.f3847c = sparseIntArray;
        this.f3849e = i6;
    }
}
