package com.google.firebase.crashlytics.d.n;

import android.content.Context;
import androidx.annotation.NonNull;
import com.google.firebase.crashlytics.d.h.q;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import com.google.firebase.crashlytics.internal.model.w.h;
import e.i.b.a.e;
import e.i.b.a.f;
import e.i.b.a.i.r;
import e.i.b.b.d.i;

/* compiled from: DataTransportCrashlyticsReportSender.java */
/* loaded from: classes.dex */
public class c {

    /* renamed from: b, reason: collision with root package name */
    private static final h f14680b = new h();

    /* renamed from: c, reason: collision with root package name */
    private static final String f14681c = a("hts/cahyiseot-agolai.o/1frlglgc/aclg", "tp:/rsltcrprsp.ogepscmv/ieo/eaybtho");

    /* renamed from: d, reason: collision with root package name */
    private static final String f14682d = a("AzSBpY4F0rHiHFdinTvM", "IayrSTFL9eJ69YeSUO2");

    /* renamed from: e, reason: collision with root package name */
    private static final e<CrashlyticsReport, byte[]> f14683e = b.a();

    /* renamed from: a, reason: collision with root package name */
    private final f<CrashlyticsReport> f14684a;

    c(f<CrashlyticsReport> fVar, e<CrashlyticsReport, byte[]> eVar) {
        this.f14684a = fVar;
    }

    public static c a(Context context) {
        r.a(context);
        return new c(r.b().a(new com.google.android.datatransport.cct.a(f14681c, f14682d)).a("FIREBASE_CRASHLYTICS_REPORT", CrashlyticsReport.class, e.i.b.a.b.a("json"), f14683e), f14683e);
    }

    @NonNull
    public e.i.b.b.d.h<q> a(@NonNull q qVar) {
        CrashlyticsReport a2 = qVar.a();
        i iVar = new i();
        this.f14684a.a(e.i.b.a.c.b(a2), a.a(iVar, qVar));
        return iVar.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(i iVar, q qVar, Exception exc) {
        if (exc != null) {
            iVar.b(exc);
        } else {
            iVar.b((i) qVar);
        }
    }

    private static String a(String str, String str2) {
        int length = str.length() - str2.length();
        if (length >= 0 && length <= 1) {
            StringBuilder sb = new StringBuilder(str.length() + str2.length());
            for (int i2 = 0; i2 < str.length(); i2++) {
                sb.append(str.charAt(i2));
                if (str2.length() > i2) {
                    sb.append(str2.charAt(i2));
                }
            }
            return sb.toString();
        }
        throw new IllegalArgumentException("Invalid input received");
    }
}
