package com.google.firebase.crashlytics.d.m.d;

import com.google.firebase.crashlytics.d.h.e0;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.Map;

/* compiled from: DefaultCreateReportSpiCall.java */
/* loaded from: classes.dex */
public class c extends com.google.firebase.crashlytics.d.h.a implements b {

    /* renamed from: f, reason: collision with root package name */
    private final String f14675f;

    public c(String str, String str2, com.google.firebase.crashlytics.d.j.c cVar, String str3) {
        this(str, str2, cVar, com.google.firebase.crashlytics.d.j.a.POST, str3);
    }

    @Override // com.google.firebase.crashlytics.d.m.d.b
    public boolean a(com.google.firebase.crashlytics.d.m.c.a aVar, boolean z) {
        if (z) {
            com.google.firebase.crashlytics.d.j.b a2 = a();
            a(a2, aVar);
            a(a2, aVar.f14666c);
            com.google.firebase.crashlytics.d.b.a().a("Sending report to: " + b());
            try {
                com.google.firebase.crashlytics.d.j.d a3 = a2.a();
                int b2 = a3.b();
                com.google.firebase.crashlytics.d.b.a().a("Create report request ID: " + a3.a("X-REQUEST-ID"));
                com.google.firebase.crashlytics.d.b.a().a("Result was: " + b2);
                return e0.a(b2) == 0;
            } catch (IOException e2) {
                com.google.firebase.crashlytics.d.b.a().b("Create report HTTP request failed.", e2);
                throw new RuntimeException(e2);
            }
        }
        throw new RuntimeException("An invalid data collection token was used.");
    }

    c(String str, String str2, com.google.firebase.crashlytics.d.j.c cVar, com.google.firebase.crashlytics.d.j.a aVar, String str3) {
        super(str, str2, cVar, aVar);
        this.f14675f = str3;
    }

    private com.google.firebase.crashlytics.d.j.b a(com.google.firebase.crashlytics.d.j.b bVar, com.google.firebase.crashlytics.d.m.c.a aVar) {
        bVar.a("X-CRASHLYTICS-GOOGLE-APP-ID", aVar.f14665b);
        bVar.a("X-CRASHLYTICS-API-CLIENT-TYPE", "android");
        bVar.a("X-CRASHLYTICS-API-CLIENT-VERSION", this.f14675f);
        Iterator<Map.Entry<String, String>> it = aVar.f14666c.b().entrySet().iterator();
        while (it.hasNext()) {
            bVar.a(it.next());
        }
        return bVar;
    }

    private com.google.firebase.crashlytics.d.j.b a(com.google.firebase.crashlytics.d.j.b bVar, com.google.firebase.crashlytics.d.m.c.c cVar) {
        bVar.b("report[identifier]", cVar.a());
        if (cVar.d().length == 1) {
            com.google.firebase.crashlytics.d.b.a().a("Adding single file " + cVar.e() + " to report " + cVar.a());
            bVar.a("report[file]", cVar.e(), "application/octet-stream", cVar.c());
            return bVar;
        }
        int i2 = 0;
        for (File file : cVar.d()) {
            com.google.firebase.crashlytics.d.b.a().a("Adding file " + file.getName() + " to report " + cVar.a());
            StringBuilder sb = new StringBuilder();
            sb.append("report[file");
            sb.append(i2);
            sb.append("]");
            bVar.a(sb.toString(), file.getName(), "application/octet-stream", file);
            i2++;
        }
        return bVar;
    }
}
