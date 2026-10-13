package com.mapbox.mapboxsdk.annotations;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.nio.ByteBuffer;

/* compiled from: Icon.java */
@Deprecated
/* loaded from: classes2.dex */
public class d {

    /* renamed from: a, reason: collision with root package name */
    private Bitmap f15714a;

    /* renamed from: b, reason: collision with root package name */
    private String f15715b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(String str, Bitmap bitmap) {
        this.f15715b = str;
        this.f15714a = bitmap;
    }

    public Bitmap a() {
        Bitmap bitmap = this.f15714a;
        if (bitmap != null) {
            Bitmap.Config config = bitmap.getConfig();
            Bitmap.Config config2 = Bitmap.Config.ARGB_8888;
            if (config != config2) {
                this.f15714a = this.f15714a.copy(config2, false);
            }
        }
        return this.f15714a;
    }

    public String b() {
        return this.f15715b;
    }

    public float c() {
        Bitmap bitmap = this.f15714a;
        if (bitmap != null) {
            float density = bitmap.getDensity();
            if (density == 0.0f) {
                density = 160.0f;
            }
            return density / 160.0f;
        }
        throw new IllegalStateException("Required to set a Icon before calling getScale");
    }

    @NonNull
    public byte[] d() {
        Bitmap bitmap = this.f15714a;
        if (bitmap != null) {
            ByteBuffer allocate = ByteBuffer.allocate(bitmap.getRowBytes() * this.f15714a.getHeight());
            this.f15714a.copyPixelsToBuffer(allocate);
            return allocate.array();
        }
        throw new IllegalStateException("Required to set a Icon before calling toBytes");
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || d.class != obj.getClass()) {
            return false;
        }
        d dVar = (d) obj;
        return this.f15714a.equals(dVar.f15714a) && this.f15715b.equals(dVar.f15715b);
    }

    public int hashCode() {
        Bitmap bitmap = this.f15714a;
        int hashCode = bitmap != null ? bitmap.hashCode() : 0;
        String str = this.f15715b;
        return str != null ? (hashCode * 31) + str.hashCode() : hashCode;
    }
}
