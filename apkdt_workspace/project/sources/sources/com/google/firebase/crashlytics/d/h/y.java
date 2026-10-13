package com.google.firebase.crashlytics.d.h;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import androidx.annotation.NonNull;
import java.util.Locale;
import java.util.UUID;
import java.util.regex.Pattern;

/* compiled from: IdManager.java */
/* loaded from: classes.dex */
public class y implements z {

    /* renamed from: f, reason: collision with root package name */
    private static final Pattern f14577f = Pattern.compile("[^\\p{Alnum}]");

    /* renamed from: g, reason: collision with root package name */
    private static final String f14578g = Pattern.quote("/");

    /* renamed from: a, reason: collision with root package name */
    private final a0 f14579a;

    /* renamed from: b, reason: collision with root package name */
    private final Context f14580b;

    /* renamed from: c, reason: collision with root package name */
    private final String f14581c;

    /* renamed from: d, reason: collision with root package name */
    private final com.google.firebase.installations.g f14582d;

    /* renamed from: e, reason: collision with root package name */
    private String f14583e;

    public y(Context context, String str, com.google.firebase.installations.g gVar) {
        if (context == null) {
            throw new IllegalArgumentException("appContext must not be null");
        }
        if (str != null) {
            this.f14580b = context;
            this.f14581c = str;
            this.f14582d = gVar;
            this.f14579a = new a0();
            return;
        }
        throw new IllegalArgumentException("appIdentifier must not be null");
    }

    private static String a(String str) {
        if (str == null) {
            return null;
        }
        return f14577f.matcher(str).replaceAll("").toLowerCase(Locale.US);
    }

    public String b() {
        return this.f14581c;
    }

    public String c() {
        return this.f14579a.a(this.f14580b);
    }

    public String d() {
        return String.format(Locale.US, "%s/%s", b(Build.MANUFACTURER), b(Build.MODEL));
    }

    public String e() {
        return b(Build.VERSION.INCREMENTAL);
    }

    public String f() {
        return b(Build.VERSION.RELEASE);
    }

    private String b(String str) {
        return str.replaceAll(f14578g, "");
    }

    @Override // com.google.firebase.crashlytics.d.h.z
    @NonNull
    public synchronized String a() {
        String str;
        if (this.f14583e != null) {
            return this.f14583e;
        }
        SharedPreferences h2 = h.h(this.f14580b);
        e.i.b.b.d.h<String> id = this.f14582d.getId();
        String string = h2.getString("firebase.installation.id", null);
        try {
            str = (String) l0.a(id);
        } catch (Exception e2) {
            com.google.firebase.crashlytics.d.b.a().a("Failed to retrieve installation id", e2);
            str = string != null ? string : null;
        }
        if (string == null) {
            SharedPreferences d2 = h.d(this.f14580b);
            String string2 = d2.getString("crashlytics.installation.id", null);
            com.google.firebase.crashlytics.d.b.a().a("No cached FID; legacy id is " + string2);
            if (string2 == null) {
                this.f14583e = a(str, h2);
            } else {
                this.f14583e = string2;
                a(string2, str, h2, d2);
            }
            return this.f14583e;
        }
        if (string.equals(str)) {
            this.f14583e = h2.getString("crashlytics.installation.id", null);
            com.google.firebase.crashlytics.d.b.a().a("Found matching FID, using Crashlytics IID: " + this.f14583e);
            if (this.f14583e == null) {
                this.f14583e = a(str, h2);
            }
        } else {
            this.f14583e = a(str, h2);
        }
        return this.f14583e;
    }

    private synchronized void a(String str, String str2, SharedPreferences sharedPreferences, SharedPreferences sharedPreferences2) {
        com.google.firebase.crashlytics.d.b.a().a("Migrating legacy Crashlytics IID: " + str);
        sharedPreferences.edit().putString("crashlytics.installation.id", str).putString("firebase.installation.id", str2).apply();
        sharedPreferences2.edit().remove("crashlytics.installation.id").remove("crashlytics.advertising.id").apply();
    }

    private synchronized String a(String str, SharedPreferences sharedPreferences) {
        String a2;
        a2 = a(UUID.randomUUID().toString());
        com.google.firebase.crashlytics.d.b.a().a("Created new Crashlytics IID: " + a2);
        sharedPreferences.edit().putString("crashlytics.installation.id", a2).putString("firebase.installation.id", str).apply();
        return a2;
    }
}
