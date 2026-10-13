package com.google.firebase.crashlytics.d.h;

import java.util.Collections;
import java.util.Map;
import java.util.regex.Pattern;

/* compiled from: AbstractSpiCall.java */
/* loaded from: classes.dex */
public abstract class a {

    /* renamed from: e, reason: collision with root package name */
    private static final Pattern f14395e = Pattern.compile("http(s?)://[^\\/]+", 2);

    /* renamed from: a, reason: collision with root package name */
    private final String f14396a;

    /* renamed from: b, reason: collision with root package name */
    private final com.google.firebase.crashlytics.d.j.c f14397b;

    /* renamed from: c, reason: collision with root package name */
    private final com.google.firebase.crashlytics.d.j.a f14398c;

    /* renamed from: d, reason: collision with root package name */
    private final String f14399d;

    public a(String str, String str2, com.google.firebase.crashlytics.d.j.c cVar, com.google.firebase.crashlytics.d.j.a aVar) {
        if (str2 == null) {
            throw new IllegalArgumentException("url must not be null.");
        }
        if (cVar != null) {
            this.f14399d = str;
            this.f14396a = a(str2);
            this.f14397b = cVar;
            this.f14398c = aVar;
            return;
        }
        throw new IllegalArgumentException("requestFactory must not be null.");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public com.google.firebase.crashlytics.d.j.b a() {
        return a(Collections.emptyMap());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String b() {
        return this.f14396a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public com.google.firebase.crashlytics.d.j.b a(Map<String, String> map) {
        com.google.firebase.crashlytics.d.j.b a2 = this.f14397b.a(this.f14398c, b(), map);
        a2.a("User-Agent", "Crashlytics Android SDK/" + m.i());
        a2.a("X-CRASHLYTICS-DEVELOPER-TOKEN", "470fa2b4ae81cd56ecbcda9735803434cec591fa");
        return a2;
    }

    private String a(String str) {
        return !h.b(this.f14399d) ? f14395e.matcher(str).replaceFirst(this.f14399d) : str;
    }
}
