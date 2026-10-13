package com.google.firebase.crashlytics.d.m.c;

import com.google.firebase.crashlytics.d.m.c.c;
import java.io.File;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* compiled from: SessionReport.java */
/* loaded from: classes.dex */
public class d implements c {

    /* renamed from: a, reason: collision with root package name */
    private final File f14669a;

    /* renamed from: b, reason: collision with root package name */
    private final File[] f14670b;

    /* renamed from: c, reason: collision with root package name */
    private final Map<String, String> f14671c;

    public d(File file) {
        this(file, Collections.emptyMap());
    }

    @Override // com.google.firebase.crashlytics.d.m.c.c
    public String a() {
        String e2 = e();
        return e2.substring(0, e2.lastIndexOf(46));
    }

    @Override // com.google.firebase.crashlytics.d.m.c.c
    public Map<String, String> b() {
        return Collections.unmodifiableMap(this.f14671c);
    }

    @Override // com.google.firebase.crashlytics.d.m.c.c
    public File c() {
        return this.f14669a;
    }

    @Override // com.google.firebase.crashlytics.d.m.c.c
    public File[] d() {
        return this.f14670b;
    }

    @Override // com.google.firebase.crashlytics.d.m.c.c
    public String e() {
        return c().getName();
    }

    @Override // com.google.firebase.crashlytics.d.m.c.c
    public c.a getType() {
        return c.a.JAVA;
    }

    @Override // com.google.firebase.crashlytics.d.m.c.c
    public void remove() {
        com.google.firebase.crashlytics.d.b.a().a("Removing report at " + this.f14669a.getPath());
        this.f14669a.delete();
    }

    public d(File file, Map<String, String> map) {
        this.f14669a = file;
        this.f14670b = new File[]{file};
        this.f14671c = new HashMap(map);
    }
}
