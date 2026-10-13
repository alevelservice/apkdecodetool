package com.google.firebase.crashlytics.d.k;

import java.io.File;
import java.io.FilenameFilter;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CrashlyticsReportPersistence.java */
/* loaded from: classes.dex */
public final /* synthetic */ class a implements FilenameFilter {

    /* renamed from: a, reason: collision with root package name */
    private final String f14621a;

    private a(String str) {
        this.f14621a = str;
    }

    public static FilenameFilter a(String str) {
        return new a(str);
    }

    @Override // java.io.FilenameFilter
    public boolean accept(File file, String str) {
        boolean startsWith;
        startsWith = str.startsWith(this.f14621a);
        return startsWith;
    }
}
