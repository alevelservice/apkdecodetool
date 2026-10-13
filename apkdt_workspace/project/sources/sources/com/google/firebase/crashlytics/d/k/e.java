package com.google.firebase.crashlytics.d.k;

import java.io.File;
import java.util.Comparator;

/* compiled from: CrashlyticsReportPersistence.java */
/* loaded from: classes.dex */
final /* synthetic */ class e implements Comparator {

    /* renamed from: e, reason: collision with root package name */
    private static final e f14625e = new e();

    private e() {
    }

    public static Comparator a() {
        return f14625e;
    }

    @Override // java.util.Comparator
    public int compare(Object obj, Object obj2) {
        int compareTo;
        compareTo = ((File) obj2).getName().compareTo(((File) obj).getName());
        return compareTo;
    }
}
