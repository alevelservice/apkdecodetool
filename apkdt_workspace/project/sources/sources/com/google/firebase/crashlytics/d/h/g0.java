package com.google.firebase.crashlytics.d.h;

import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import java.util.Comparator;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SessionReportingCoordinator.java */
/* loaded from: classes.dex */
public final /* synthetic */ class g0 implements Comparator {

    /* renamed from: e, reason: collision with root package name */
    private static final g0 f14421e = new g0();

    private g0() {
    }

    public static Comparator a() {
        return f14421e;
    }

    @Override // java.util.Comparator
    public int compare(Object obj, Object obj2) {
        int compareTo;
        compareTo = ((CrashlyticsReport.b) obj).a().compareTo(((CrashlyticsReport.b) obj2).a());
        return compareTo;
    }
}
