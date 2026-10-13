package com.google.firebase.crashlytics.d.o.j;

import com.google.firebase.crashlytics.d.h.e0;
import com.google.firebase.crashlytics.d.h.h;
import java.io.IOException;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AbstractAppSpiCall.java */
/* loaded from: classes.dex */
public abstract class a extends com.google.firebase.crashlytics.d.h.a implements b {

    /* renamed from: f, reason: collision with root package name */
    private final String f14732f;

    public a(String str, String str2, com.google.firebase.crashlytics.d.j.c cVar, com.google.firebase.crashlytics.d.j.a aVar, String str3) {
        super(str, str2, cVar, aVar);
        this.f14732f = str3;
    }

    private com.google.firebase.crashlytics.d.j.b b(com.google.firebase.crashlytics.d.j.b bVar, com.google.firebase.crashlytics.d.o.i.a aVar) {
        bVar.b("org_id", aVar.f14698a);
        bVar.b("app[identifier]", aVar.f14700c);
        bVar.b("app[name]", aVar.f14704g);
        bVar.b("app[display_version]", aVar.f14701d);
        bVar.b("app[build_version]", aVar.f14702e);
        bVar.b("app[source]", Integer.toString(aVar.f14705h));
        bVar.b("app[minimum_sdk_version]", aVar.f14706i);
        bVar.b("app[built_sdk_version]", aVar.f14707j);
        if (!h.b(aVar.f14703f)) {
            bVar.b("app[instance_identifier]", aVar.f14703f);
        }
        return bVar;
    }

    public boolean a(com.google.firebase.crashlytics.d.o.i.a aVar, boolean z) {
        if (z) {
            com.google.firebase.crashlytics.d.j.b a2 = a();
            a(a2, aVar);
            b(a2, aVar);
            com.google.firebase.crashlytics.d.b.a().a("Sending app info to " + b());
            try {
                com.google.firebase.crashlytics.d.j.d a3 = a2.a();
                int b2 = a3.b();
                String str = "POST".equalsIgnoreCase(a2.b()) ? "Create" : "Update";
                com.google.firebase.crashlytics.d.b.a().a(str + " app request ID: " + a3.a("X-REQUEST-ID"));
                com.google.firebase.crashlytics.d.b.a().a("Result was " + b2);
                return e0.a(b2) == 0;
            } catch (IOException e2) {
                com.google.firebase.crashlytics.d.b.a().b("HTTP request failed.", e2);
                throw new RuntimeException(e2);
            }
        }
        throw new RuntimeException("An invalid data collection token was used.");
    }

    private com.google.firebase.crashlytics.d.j.b a(com.google.firebase.crashlytics.d.j.b bVar, com.google.firebase.crashlytics.d.o.i.a aVar) {
        bVar.a("X-CRASHLYTICS-ORG-ID", aVar.f14698a);
        bVar.a("X-CRASHLYTICS-GOOGLE-APP-ID", aVar.f14699b);
        bVar.a("X-CRASHLYTICS-API-CLIENT-TYPE", "android");
        bVar.a("X-CRASHLYTICS-API-CLIENT-VERSION", this.f14732f);
        return bVar;
    }
}
