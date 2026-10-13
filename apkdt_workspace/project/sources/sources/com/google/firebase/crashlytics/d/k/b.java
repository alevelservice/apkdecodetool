package com.google.firebase.crashlytics.d.k;

import java.io.File;
import java.io.FileFilter;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CrashlyticsReportPersistence.java */
/* loaded from: classes.dex */
public final /* synthetic */ class b implements FileFilter {

    /* renamed from: a, reason: collision with root package name */
    private final String f14622a;

    private b(String str) {
        this.f14622a = str;
    }

    public static FileFilter a(String str) {
        return new b(str);
    }

    @Override // java.io.FileFilter
    public boolean accept(File file) {
        return g.a(this.f14622a, file);
    }
}
