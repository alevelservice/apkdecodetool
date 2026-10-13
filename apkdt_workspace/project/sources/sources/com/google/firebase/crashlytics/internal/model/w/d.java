package com.google.firebase.crashlytics.internal.model.w;

import android.util.JsonReader;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import com.google.firebase.crashlytics.internal.model.w.h;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CrashlyticsReportJsonTransform.java */
/* loaded from: classes.dex */
public final /* synthetic */ class d implements h.a {

    /* renamed from: a, reason: collision with root package name */
    private static final d f14946a = new d();

    private d() {
    }

    public static h.a a() {
        return f14946a;
    }

    @Override // com.google.firebase.crashlytics.internal.model.w.h.a
    public Object a(JsonReader jsonReader) {
        CrashlyticsReport.d.AbstractC0121d.a.b.e t;
        t = h.t(jsonReader);
        return t;
    }
}
