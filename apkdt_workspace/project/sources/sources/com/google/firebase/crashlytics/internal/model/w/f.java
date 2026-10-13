package com.google.firebase.crashlytics.internal.model.w;

import android.util.JsonReader;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import com.google.firebase.crashlytics.internal.model.w.h;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CrashlyticsReportJsonTransform.java */
/* loaded from: classes.dex */
public final /* synthetic */ class f implements h.a {

    /* renamed from: a, reason: collision with root package name */
    private static final f f14948a = new f();

    private f() {
    }

    public static h.a a() {
        return f14948a;
    }

    @Override // com.google.firebase.crashlytics.internal.model.w.h.a
    public Object a(JsonReader jsonReader) {
        CrashlyticsReport.d.AbstractC0121d.a.b.e.AbstractC0130b q;
        q = h.q(jsonReader);
        return q;
    }
}
