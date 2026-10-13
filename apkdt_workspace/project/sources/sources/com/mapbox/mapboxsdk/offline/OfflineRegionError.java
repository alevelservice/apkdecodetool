package com.mapbox.mapboxsdk.offline;

import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes2.dex */
public class OfflineRegionError {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    private final String f16179a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    private final String f16180b;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface ErrorReason {
    }

    @Keep
    private OfflineRegionError(@NonNull String str, @NonNull String str2) {
        this.f16179a = str;
        this.f16180b = str2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || OfflineRegionError.class != obj.getClass()) {
            return false;
        }
        OfflineRegionError offlineRegionError = (OfflineRegionError) obj;
        if (this.f16179a.equals(offlineRegionError.f16179a)) {
            return this.f16180b.equals(offlineRegionError.f16180b);
        }
        return false;
    }

    public int hashCode() {
        return (this.f16179a.hashCode() * 31) + this.f16180b.hashCode();
    }

    public String toString() {
        return "OfflineRegionError{reason='" + this.f16179a + "', message='" + this.f16180b + "'}";
    }
}
