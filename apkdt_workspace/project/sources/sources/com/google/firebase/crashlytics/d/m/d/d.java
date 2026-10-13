package com.google.firebase.crashlytics.d.m.d;

import androidx.annotation.Nullable;
import com.google.firebase.crashlytics.d.h.e0;
import com.google.firebase.crashlytics.d.h.m;
import java.io.File;
import java.io.IOException;

/* compiled from: NativeCreateReportSpiCall.java */
/* loaded from: classes.dex */
public class d extends com.google.firebase.crashlytics.d.h.a implements b {

    /* renamed from: f, reason: collision with root package name */
    private final String f14676f;

    public d(String str, String str2, com.google.firebase.crashlytics.d.j.c cVar, String str3) {
        super(str, str2, cVar, com.google.firebase.crashlytics.d.j.a.POST);
        this.f14676f = str3;
    }

    @Override // com.google.firebase.crashlytics.d.m.d.b
    public boolean a(com.google.firebase.crashlytics.d.m.c.a aVar, boolean z) {
        if (z) {
            com.google.firebase.crashlytics.d.j.b a2 = a();
            a(a2, aVar.f14665b);
            a(a2, aVar.f14664a, aVar.f14666c);
            com.google.firebase.crashlytics.d.b.a().a("Sending report to: " + b());
            try {
                int b2 = a2.a().b();
                com.google.firebase.crashlytics.d.b.a().a("Result was: " + b2);
                return e0.a(b2) == 0;
            } catch (IOException e2) {
                throw new RuntimeException(e2);
            }
        }
        throw new RuntimeException("An invalid data collection token was used.");
    }

    private com.google.firebase.crashlytics.d.j.b a(com.google.firebase.crashlytics.d.j.b bVar, String str) {
        bVar.a("User-Agent", "Crashlytics Android SDK/" + m.i());
        bVar.a("X-CRASHLYTICS-API-CLIENT-TYPE", "android");
        bVar.a("X-CRASHLYTICS-API-CLIENT-VERSION", this.f14676f);
        bVar.a("X-CRASHLYTICS-GOOGLE-APP-ID", str);
        return bVar;
    }

    private com.google.firebase.crashlytics.d.j.b a(com.google.firebase.crashlytics.d.j.b bVar, @Nullable String str, com.google.firebase.crashlytics.d.m.c.c cVar) {
        if (str != null) {
            bVar.b("org_id", str);
        }
        bVar.b("report_id", cVar.a());
        for (File file : cVar.d()) {
            if (file.getName().equals("minidump")) {
                bVar.a("minidump_file", file.getName(), "application/octet-stream", file);
            } else if (file.getName().equals("metadata")) {
                bVar.a("crash_meta_file", file.getName(), "application/octet-stream", file);
            } else if (file.getName().equals("binaryImages")) {
                bVar.a("binary_images_file", file.getName(), "application/octet-stream", file);
            } else if (file.getName().equals("session")) {
                bVar.a("session_meta_file", file.getName(), "application/octet-stream", file);
            } else if (file.getName().equals("app")) {
                bVar.a("app_meta_file", file.getName(), "application/octet-stream", file);
            } else if (file.getName().equals("device")) {
                bVar.a("device_meta_file", file.getName(), "application/octet-stream", file);
            } else if (file.getName().equals("os")) {
                bVar.a("os_meta_file", file.getName(), "application/octet-stream", file);
            } else if (file.getName().equals("user")) {
                bVar.a("user_meta_file", file.getName(), "application/octet-stream", file);
            } else if (file.getName().equals("logs")) {
                bVar.a("logs_file", file.getName(), "application/octet-stream", file);
            } else if (file.getName().equals("keys")) {
                bVar.a("keys_file", file.getName(), "application/octet-stream", file);
            }
        }
        return bVar;
    }
}
