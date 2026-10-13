package com.google.firebase.crashlytics.internal.model.w;

import android.util.JsonReader;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import com.google.firebase.crashlytics.internal.model.w.h;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CrashlyticsReportJsonTransform.java */
/* loaded from: classes.dex */
public final /* synthetic */ class a implements h.a {

    /* renamed from: a, reason: collision with root package name */
    private static final a f14943a = new a();

    private a() {
    }

    public static h.a a() {
        return f14943a;
    }

    @Override // com.google.firebase.crashlytics.internal.model.w.h.a
    public Object a(JsonReader jsonReader) {
        CrashlyticsReport.d.AbstractC0121d k2;
        k2 = h.k(jsonReader);
        return k2;
    }
}
