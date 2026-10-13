package com.google.firebase.crashlytics.internal.model.w;

import android.util.JsonReader;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import com.google.firebase.crashlytics.internal.model.w.h;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CrashlyticsReportJsonTransform.java */
/* loaded from: classes.dex */
public final /* synthetic */ class b implements h.a {

    /* renamed from: a, reason: collision with root package name */
    private static final b f14944a = new b();

    private b() {
    }

    public static h.a a() {
        return f14944a;
    }

    @Override // com.google.firebase.crashlytics.internal.model.w.h.a
    public Object a(JsonReader jsonReader) {
        CrashlyticsReport.c.b u;
        u = h.u(jsonReader);
        return u;
    }
}
