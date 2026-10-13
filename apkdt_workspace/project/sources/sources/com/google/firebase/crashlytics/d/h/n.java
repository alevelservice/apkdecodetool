package com.google.firebase.crashlytics.d.h;

import java.io.File;
import java.io.IOException;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CrashlyticsFileMarker.java */
/* loaded from: classes.dex */
public class n {

    /* renamed from: a, reason: collision with root package name */
    private final String f14545a;

    /* renamed from: b, reason: collision with root package name */
    private final com.google.firebase.crashlytics.d.k.h f14546b;

    public n(String str, com.google.firebase.crashlytics.d.k.h hVar) {
        this.f14545a = str;
        this.f14546b = hVar;
    }

    private File d() {
        return new File(this.f14546b.b(), this.f14545a);
    }

    public boolean a() {
        try {
            return d().createNewFile();
        } catch (IOException e2) {
            com.google.firebase.crashlytics.d.b.a().b("Error creating marker: " + this.f14545a, e2);
            return false;
        }
    }

    public boolean b() {
        return d().exists();
    }

    public boolean c() {
        return d().delete();
    }
}
