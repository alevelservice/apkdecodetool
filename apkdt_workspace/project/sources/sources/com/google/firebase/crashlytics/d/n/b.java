package com.google.firebase.crashlytics.d.n;

import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import e.i.b.a.e;
import java.nio.charset.Charset;

/* compiled from: DataTransportCrashlyticsReportSender.java */
/* loaded from: classes.dex */
final /* synthetic */ class b implements e {

    /* renamed from: a, reason: collision with root package name */
    private static final b f14679a = new b();

    private b() {
    }

    public static e a() {
        return f14679a;
    }

    @Override // e.i.b.a.e
    public Object apply(Object obj) {
        byte[] bytes;
        bytes = c.f14680b.a((CrashlyticsReport) obj).getBytes(Charset.forName("UTF-8"));
        return bytes;
    }
}
