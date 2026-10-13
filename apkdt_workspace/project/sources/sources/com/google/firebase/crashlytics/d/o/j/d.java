package com.google.firebase.crashlytics.d.o.j;

import com.google.firebase.crashlytics.d.h.h;
import com.google.firebase.crashlytics.d.h.m;
import com.google.firebase.crashlytics.d.o.i.g;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* compiled from: DefaultSettingsSpiCall.java */
/* loaded from: classes.dex */
public class d extends com.google.firebase.crashlytics.d.h.a implements e {

    /* renamed from: f, reason: collision with root package name */
    private com.google.firebase.crashlytics.d.b f14733f;

    public d(String str, String str2, com.google.firebase.crashlytics.d.j.c cVar) {
        this(str, str2, cVar, com.google.firebase.crashlytics.d.j.a.GET, com.google.firebase.crashlytics.d.b.a());
    }

    @Override // com.google.firebase.crashlytics.d.o.j.e
    public JSONObject a(g gVar, boolean z) {
        if (z) {
            try {
                Map<String, String> a2 = a(gVar);
                com.google.firebase.crashlytics.d.j.b a3 = a(a2);
                a(a3, gVar);
                this.f14733f.a("Requesting settings from " + b());
                this.f14733f.a("Settings query params were: " + a2);
                com.google.firebase.crashlytics.d.j.d a4 = a3.a();
                this.f14733f.a("Settings request ID: " + a4.a("X-REQUEST-ID"));
                return a(a4);
            } catch (IOException e2) {
                this.f14733f.b("Settings request failed.", e2);
                return null;
            }
        }
        throw new RuntimeException("An invalid data collection token was used.");
    }

    boolean a(int i2) {
        return i2 == 200 || i2 == 201 || i2 == 202 || i2 == 203;
    }

    d(String str, String str2, com.google.firebase.crashlytics.d.j.c cVar, com.google.firebase.crashlytics.d.j.a aVar, com.google.firebase.crashlytics.d.b bVar) {
        super(str, str2, cVar, aVar);
        this.f14733f = bVar;
    }

    JSONObject a(com.google.firebase.crashlytics.d.j.d dVar) {
        int b2 = dVar.b();
        this.f14733f.a("Settings result was: " + b2);
        if (a(b2)) {
            return a(dVar.a());
        }
        this.f14733f.b("Failed to retrieve settings from " + b());
        return null;
    }

    private JSONObject a(String str) {
        try {
            return new JSONObject(str);
        } catch (Exception e2) {
            this.f14733f.a("Failed to parse settings JSON from " + b(), e2);
            this.f14733f.a("Settings response " + str);
            return null;
        }
    }

    private Map<String, String> a(g gVar) {
        HashMap hashMap = new HashMap();
        hashMap.put("build_version", gVar.f14730h);
        hashMap.put("display_version", gVar.f14729g);
        hashMap.put("source", Integer.toString(gVar.f14731i));
        String str = gVar.f14728f;
        if (!h.b(str)) {
            hashMap.put("instance", str);
        }
        return hashMap;
    }

    private com.google.firebase.crashlytics.d.j.b a(com.google.firebase.crashlytics.d.j.b bVar, g gVar) {
        a(bVar, "X-CRASHLYTICS-GOOGLE-APP-ID", gVar.f14723a);
        a(bVar, "X-CRASHLYTICS-API-CLIENT-TYPE", "android");
        a(bVar, "X-CRASHLYTICS-API-CLIENT-VERSION", m.i());
        a(bVar, "Accept", "application/json");
        a(bVar, "X-CRASHLYTICS-DEVICE-MODEL", gVar.f14724b);
        a(bVar, "X-CRASHLYTICS-OS-BUILD-VERSION", gVar.f14725c);
        a(bVar, "X-CRASHLYTICS-OS-DISPLAY-VERSION", gVar.f14726d);
        a(bVar, "X-CRASHLYTICS-INSTALLATION-ID", gVar.f14727e.a());
        return bVar;
    }

    private void a(com.google.firebase.crashlytics.d.j.b bVar, String str, String str2) {
        if (str2 != null) {
            bVar.a(str, str2);
        }
    }
}
