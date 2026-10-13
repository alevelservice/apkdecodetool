package com.mapbox.mapboxsdk.style.layers;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.gson.JsonArray;
import com.mapbox.mapboxsdk.log.Logger;
import com.mapbox.mapboxsdk.u.a.a;
import java.util.Arrays;

/* compiled from: PropertyValue.java */
/* loaded from: classes2.dex */
public class d<T> {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final String f16260a;

    /* renamed from: b, reason: collision with root package name */
    public final T f16261b;

    public d(@NonNull String str, T t) {
        this.f16260a = str;
        this.f16261b = t;
    }

    @Nullable
    public com.mapbox.mapboxsdk.u.a.a a() {
        if (b()) {
            T t = this.f16261b;
            return t instanceof JsonArray ? a.C0170a.a((JsonArray) t) : (com.mapbox.mapboxsdk.u.a.a) t;
        }
        Logger.w("Mbgl-PropertyValue", String.format("%s not an expression, try PropertyValue#getValue()", this.f16260a));
        return null;
    }

    public boolean b() {
        if (!c()) {
            T t = this.f16261b;
            if ((t instanceof JsonArray) || (t instanceof com.mapbox.mapboxsdk.u.a.a)) {
                return true;
            }
        }
        return false;
    }

    public boolean c() {
        return this.f16261b == null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        d dVar = (d) obj;
        if (!this.f16260a.equals(dVar.f16260a)) {
            return false;
        }
        T t = this.f16261b;
        if (t == null) {
            return dVar.f16261b == null;
        }
        if (t instanceof Object[]) {
            return Arrays.deepEquals((Object[]) t, (Object[]) dVar.f16261b);
        }
        return t.equals(dVar.f16261b);
    }

    public int hashCode() {
        int hashCode = this.f16260a.hashCode() * 31;
        T t = this.f16261b;
        return hashCode + (t != null ? t.hashCode() : 0);
    }

    public String toString() {
        return String.format("%s: %s", this.f16260a, this.f16261b);
    }
}
