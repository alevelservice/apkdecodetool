package com.mapbox.mapboxsdk.t.a;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.mapbox.geojson.Geometry;

/* compiled from: Annotation.java */
/* loaded from: classes2.dex */
public abstract class a<T extends Geometry> {

    /* renamed from: a, reason: collision with root package name */
    protected JsonObject f16279a;

    /* renamed from: b, reason: collision with root package name */
    protected T f16280b;

    /* renamed from: c, reason: collision with root package name */
    private boolean f16281c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(long j2, JsonObject jsonObject, T t) {
        this.f16279a = jsonObject;
        this.f16279a.addProperty("id", Long.valueOf(j2));
        this.f16280b = t;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public abstract Geometry a(@NonNull com.mapbox.mapboxsdk.maps.w wVar, @NonNull com.mapbox.android.gestures.b bVar, float f2, float f3);

    public void a(T t) {
        this.f16280b = t;
    }

    public T b() {
        T t = this.f16280b;
        if (t != null) {
            return t;
        }
        throw new IllegalStateException();
    }

    public long c() {
        return this.f16279a.get("id").getAsLong();
    }

    abstract String d();

    public boolean e() {
        return this.f16281c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        if (this.f16281c == aVar.f16281c && this.f16279a.equals(aVar.f16279a)) {
            return this.f16280b.equals(aVar.f16280b);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void f();

    public int hashCode() {
        return (((this.f16279a.hashCode() * 31) + this.f16280b.hashCode()) * 31) + (this.f16281c ? 1 : 0);
    }

    public String toString() {
        return d() + "{geometry=" + this.f16280b + ", properties=" + this.f16279a + ", isDraggable=" + this.f16281c + '}';
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public JsonObject a() {
        return this.f16279a;
    }

    public void a(boolean z) {
        this.f16281c = z;
    }

    public void a(@Nullable JsonElement jsonElement) {
        this.f16279a.add("custom_data", jsonElement);
    }
}
