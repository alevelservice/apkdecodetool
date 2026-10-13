package com.mapbox.mapboxsdk.style.layers;

import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.gson.JsonElement;
import com.mapbox.mapboxsdk.style.types.Formatted;
import com.mapbox.mapboxsdk.utils.g;

/* loaded from: classes2.dex */
public abstract class Layer {

    /* renamed from: a, reason: collision with root package name */
    private boolean f16259a;

    @Keep
    private boolean invalidated;

    @Keep
    private long nativePtr;

    static {
        com.mapbox.mapboxsdk.b.a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Keep
    public Layer(long j2) {
        a();
        this.nativePtr = j2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a() {
        g.a("Mbgl-Layer");
    }

    @NonNull
    public String b() {
        a();
        return nativeGetId();
    }

    public long c() {
        return this.nativePtr;
    }

    @NonNull
    public d<String> d() {
        a();
        return new b("visibility", (String) nativeGetVisibility());
    }

    public void e() {
        this.f16259a = true;
    }

    @Keep
    protected native void finalize();

    @Nullable
    @Keep
    protected native JsonElement nativeGetFilter();

    @NonNull
    @Keep
    protected native String nativeGetId();

    @Keep
    protected native float nativeGetMaxZoom();

    @Keep
    protected native float nativeGetMinZoom();

    @NonNull
    @Keep
    protected native String nativeGetSourceId();

    @NonNull
    @Keep
    protected native String nativeGetSourceLayer();

    @NonNull
    @Keep
    protected native Object nativeGetVisibility();

    /* JADX INFO: Access modifiers changed from: protected */
    @Keep
    public native void nativeSetFilter(Object[] objArr);

    @Keep
    protected native void nativeSetLayoutProperty(String str, Object obj);

    @Keep
    protected native void nativeSetMaxZoom(float f2);

    @Keep
    protected native void nativeSetMinZoom(float f2);

    @Keep
    protected native void nativeSetPaintProperty(String str, Object obj);

    @Keep
    protected native void nativeSetSourceLayer(String str);

    public void a(@NonNull d<?>... dVarArr) {
        if (this.f16259a) {
            return;
        }
        a();
        if (dVarArr.length == 0) {
            return;
        }
        for (d<?> dVar : dVarArr) {
            Object a2 = a(dVar.f16261b);
            if (dVar instanceof b) {
                nativeSetPaintProperty(dVar.f16260a, a2);
            } else {
                nativeSetLayoutProperty(dVar.f16260a, a2);
            }
        }
    }

    public Layer() {
        a();
    }

    @Nullable
    private Object a(@Nullable Object obj) {
        if (obj instanceof com.mapbox.mapboxsdk.u.a.a) {
            return ((com.mapbox.mapboxsdk.u.a.a) obj).b();
        }
        return obj instanceof Formatted ? ((Formatted) obj).toArray() : obj;
    }
}
