package com.google.firebase.crashlytics.d.h;

import androidx.annotation.NonNull;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;

/* compiled from: CrashlyticsReportWithSessionId.java */
/* loaded from: classes.dex */
public abstract class q {
    @NonNull
    public static q a(CrashlyticsReport crashlyticsReport, String str) {
        return new c(crashlyticsReport, str);
    }

    public abstract CrashlyticsReport a();

    public abstract String b();
}
