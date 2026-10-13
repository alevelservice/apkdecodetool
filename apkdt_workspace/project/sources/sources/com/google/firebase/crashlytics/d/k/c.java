package com.google.firebase.crashlytics.d.k;

import java.io.File;
import java.io.FilenameFilter;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CrashlyticsReportPersistence.java */
/* loaded from: classes.dex */
public final /* synthetic */ class c implements FilenameFilter {

    /* renamed from: a, reason: collision with root package name */
    private static final c f14623a = new c();

    private c() {
    }

    public static FilenameFilter a() {
        return f14623a;
    }

    @Override // java.io.FilenameFilter
    public boolean accept(File file, String str) {
        boolean b2;
        b2 = g.b(file, str);
        return b2;
    }
}
