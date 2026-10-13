package com.google.firebase.crashlytics.d.h;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: UserMetadata.java */
/* loaded from: classes.dex */
public class j0 {

    /* renamed from: a, reason: collision with root package name */
    private String f14440a = null;

    /* renamed from: b, reason: collision with root package name */
    private final ConcurrentHashMap<String, String> f14441b = new ConcurrentHashMap<>();

    public void a(String str) {
        this.f14440a = b(str);
    }

    @Nullable
    public String b() {
        return this.f14440a;
    }

    private static String b(String str) {
        if (str == null) {
            return str;
        }
        String trim = str.trim();
        return trim.length() > 1024 ? trim.substring(0, 1024) : trim;
    }

    @NonNull
    public Map<String, String> a() {
        return Collections.unmodifiableMap(this.f14441b);
    }

    public void a(String str, String str2) {
        if (str != null) {
            String b2 = b(str);
            if (this.f14441b.size() >= 64 && !this.f14441b.containsKey(b2)) {
                com.google.firebase.crashlytics.d.b.a().a("Exceeded maximum number of custom attributes (64)");
                return;
            } else {
                this.f14441b.put(b2, str2 == null ? "" : b(str2));
                return;
            }
        }
        throw new IllegalArgumentException("Custom attribute key must not be null.");
    }
}
