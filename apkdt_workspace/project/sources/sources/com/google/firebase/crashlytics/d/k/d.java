package com.google.firebase.crashlytics.d.k;

import java.io.File;
import java.util.Comparator;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CrashlyticsReportPersistence.java */
/* loaded from: classes.dex */
public final /* synthetic */ class d implements Comparator {

    /* renamed from: e, reason: collision with root package name */
    private static final d f14624e = new d();

    private d() {
    }

    public static Comparator a() {
        return f14624e;
    }

    @Override // java.util.Comparator
    public int compare(Object obj, Object obj2) {
        int c2;
        c2 = g.c((File) obj, (File) obj2);
        return c2;
    }
}
