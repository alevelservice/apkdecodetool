package com.google.firebase.crashlytics.d.h;

import java.io.File;
import java.io.FilenameFilter;

/* compiled from: CrashlyticsController.java */
/* loaded from: classes.dex */
final /* synthetic */ class j implements FilenameFilter {

    /* renamed from: a, reason: collision with root package name */
    private static final j f14439a = new j();

    private j() {
    }

    public static FilenameFilter a() {
        return f14439a;
    }

    @Override // java.io.FilenameFilter
    public boolean accept(File file, String str) {
        boolean startsWith;
        startsWith = str.startsWith(".ae");
        return startsWith;
    }
}
