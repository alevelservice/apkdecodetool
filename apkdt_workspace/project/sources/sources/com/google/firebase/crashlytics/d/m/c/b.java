package com.google.firebase.crashlytics.d.m.c;

import com.google.firebase.crashlytics.d.m.c.c;
import java.io.File;
import java.util.Map;

/* compiled from: NativeSessionReport.java */
/* loaded from: classes.dex */
public class b implements c {

    /* renamed from: a, reason: collision with root package name */
    private final File f14667a;

    public b(File file) {
        this.f14667a = file;
    }

    @Override // com.google.firebase.crashlytics.d.m.c.c
    public String a() {
        return this.f14667a.getName();
    }

    @Override // com.google.firebase.crashlytics.d.m.c.c
    public Map<String, String> b() {
        return null;
    }

    @Override // com.google.firebase.crashlytics.d.m.c.c
    public File c() {
        return null;
    }

    @Override // com.google.firebase.crashlytics.d.m.c.c
    public File[] d() {
        return this.f14667a.listFiles();
    }

    @Override // com.google.firebase.crashlytics.d.m.c.c
    public String e() {
        return null;
    }

    @Override // com.google.firebase.crashlytics.d.m.c.c
    public c.a getType() {
        return c.a.NATIVE;
    }

    @Override // com.google.firebase.crashlytics.d.m.c.c
    public void remove() {
        for (File file : d()) {
            com.google.firebase.crashlytics.d.b.a().a("Removing native report file at " + file.getPath());
            file.delete();
        }
        com.google.firebase.crashlytics.d.b.a().a("Removing native report directory at " + this.f14667a);
        this.f14667a.delete();
    }
}
