package com.google.firebase.crashlytics.d.o;

import com.google.firebase.crashlytics.d.h.s;
import org.json.JSONObject;

/* compiled from: SettingsJsonParser.java */
/* loaded from: classes.dex */
public class f {

    /* renamed from: a, reason: collision with root package name */
    private final s f14697a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(s sVar) {
        this.f14697a = sVar;
    }

    public com.google.firebase.crashlytics.d.o.i.f a(JSONObject jSONObject) {
        return a(jSONObject.getInt("settings_version")).a(this.f14697a, jSONObject);
    }

    private static g a(int i2) {
        if (i2 != 3) {
            return new b();
        }
        return new h();
    }
}
