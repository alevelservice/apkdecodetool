package com.google.firebase.crashlytics.d.k;

import java.io.File;
import java.io.FilenameFilter;

/* compiled from: CrashlyticsReportPersistence.java */
/* loaded from: classes.dex */
final /* synthetic */ class f implements FilenameFilter {

    /* renamed from: a, reason: collision with root package name */
    private static final f f14626a = new f();

    private f() {
    }

    public static FilenameFilter a() {
        return f14626a;
    }

    @Override // java.io.FilenameFilter
    public boolean accept(File file, String str) {
        boolean startsWith;
        startsWith = str.startsWith("event");
        return startsWith;
    }
}
