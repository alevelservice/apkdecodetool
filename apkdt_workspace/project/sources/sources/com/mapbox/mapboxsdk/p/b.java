package com.mapbox.mapboxsdk.p;

import android.graphics.Bitmap;
import android.graphics.PointF;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* compiled from: AttributionLayout.java */
/* loaded from: classes2.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    private Bitmap f16184a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    private PointF f16185b;

    /* renamed from: c, reason: collision with root package name */
    private boolean f16186c;

    public b(@Nullable Bitmap bitmap, @Nullable PointF pointF, boolean z) {
        this.f16184a = bitmap;
        this.f16185b = pointF;
        this.f16186c = z;
    }

    @Nullable
    public PointF a() {
        return this.f16185b;
    }

    @Nullable
    public Bitmap b() {
        return this.f16184a;
    }

    public boolean c() {
        return this.f16186c;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || b.class != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        Bitmap bitmap = this.f16184a;
        if (bitmap == null ? bVar.f16184a != null : !bitmap.equals(bVar.f16184a)) {
            return false;
        }
        PointF pointF = this.f16185b;
        PointF pointF2 = bVar.f16185b;
        return pointF != null ? pointF.equals(pointF2) : pointF2 == null;
    }

    public int hashCode() {
        Bitmap bitmap = this.f16184a;
        int hashCode = (bitmap != null ? bitmap.hashCode() : 0) * 31;
        PointF pointF = this.f16185b;
        return hashCode + (pointF != null ? pointF.hashCode() : 0);
    }

    @NonNull
    public String toString() {
        return "AttributionLayout{logo=" + this.f16184a + ", anchorPoint=" + this.f16185b + '}';
    }
}
