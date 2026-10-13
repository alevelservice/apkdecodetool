package com.google.firebase.crashlytics.internal.model.w;

import android.util.JsonReader;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import com.google.firebase.crashlytics.internal.model.w.h;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CrashlyticsReportJsonTransform.java */
/* loaded from: classes.dex */
public final /* synthetic */ class e implements h.a {

    /* renamed from: a, reason: collision with root package name */
    private static final e f14947a = new e();

    private e() {
    }

    public static h.a a() {
        return f14947a;
    }

    @Override // com.google.firebase.crashlytics.internal.model.w.h.a
    public Object a(JsonReader jsonReader) {
        CrashlyticsReport.d.AbstractC0121d.a.b.AbstractC0123a m;
        m = h.m(jsonReader);
        return m;
    }
}
