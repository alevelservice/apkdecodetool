package com.google.firebase;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.k;
import com.google.android.gms.common.internal.m;
import com.google.android.gms.common.internal.p;
import com.google.android.gms.common.util.s;

/* compiled from: FirebaseOptions.java */
/* loaded from: classes.dex */
public final class j {

    /* renamed from: a, reason: collision with root package name */
    private final String f15134a;

    /* renamed from: b, reason: collision with root package name */
    private final String f15135b;

    /* renamed from: c, reason: collision with root package name */
    private final String f15136c;

    /* renamed from: d, reason: collision with root package name */
    private final String f15137d;

    /* renamed from: e, reason: collision with root package name */
    private final String f15138e;

    /* renamed from: f, reason: collision with root package name */
    private final String f15139f;

    /* renamed from: g, reason: collision with root package name */
    private final String f15140g;

    /* compiled from: FirebaseOptions.java */
    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a, reason: collision with root package name */
        private String f15141a;

        /* renamed from: b, reason: collision with root package name */
        private String f15142b;

        /* renamed from: c, reason: collision with root package name */
        private String f15143c;

        /* renamed from: d, reason: collision with root package name */
        private String f15144d;

        /* renamed from: e, reason: collision with root package name */
        private String f15145e;

        /* renamed from: f, reason: collision with root package name */
        private String f15146f;

        /* renamed from: g, reason: collision with root package name */
        private String f15147g;

        @NonNull
        public b a(@NonNull String str) {
            m.a(str, (Object) "ApiKey must be set.");
            this.f15141a = str;
            return this;
        }

        @NonNull
        public b b(@NonNull String str) {
            m.a(str, (Object) "ApplicationId must be set.");
            this.f15142b = str;
            return this;
        }

        @NonNull
        public b c(@Nullable String str) {
            this.f15143c = str;
            return this;
        }

        @NonNull
        @KeepForSdk
        public b d(@Nullable String str) {
            this.f15144d = str;
            return this;
        }

        @NonNull
        public b e(@Nullable String str) {
            this.f15145e = str;
            return this;
        }

        @NonNull
        public b f(@Nullable String str) {
            this.f15147g = str;
            return this;
        }

        @NonNull
        public b g(@Nullable String str) {
            this.f15146f = str;
            return this;
        }

        @NonNull
        public j a() {
            return new j(this.f15142b, this.f15141a, this.f15143c, this.f15144d, this.f15145e, this.f15146f, this.f15147g);
        }
    }

    @Nullable
    public static j a(@NonNull Context context) {
        p pVar = new p(context);
        String a2 = pVar.a("google_app_id");
        if (TextUtils.isEmpty(a2)) {
            return null;
        }
        return new j(a2, pVar.a("google_api_key"), pVar.a("firebase_database_url"), pVar.a("ga_trackingId"), pVar.a("gcm_defaultSenderId"), pVar.a("google_storage_bucket"), pVar.a("project_id"));
    }

    @NonNull
    public String b() {
        return this.f15135b;
    }

    @Nullable
    public String c() {
        return this.f15136c;
    }

    @Nullable
    @KeepForSdk
    public String d() {
        return this.f15137d;
    }

    @Nullable
    public String e() {
        return this.f15138e;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof j)) {
            return false;
        }
        j jVar = (j) obj;
        return k.a(this.f15135b, jVar.f15135b) && k.a(this.f15134a, jVar.f15134a) && k.a(this.f15136c, jVar.f15136c) && k.a(this.f15137d, jVar.f15137d) && k.a(this.f15138e, jVar.f15138e) && k.a(this.f15139f, jVar.f15139f) && k.a(this.f15140g, jVar.f15140g);
    }

    @Nullable
    public String f() {
        return this.f15140g;
    }

    @Nullable
    public String g() {
        return this.f15139f;
    }

    public int hashCode() {
        return k.a(this.f15135b, this.f15134a, this.f15136c, this.f15137d, this.f15138e, this.f15139f, this.f15140g);
    }

    public String toString() {
        k.a a2 = k.a(this);
        a2.a("applicationId", this.f15135b);
        a2.a("apiKey", this.f15134a);
        a2.a("databaseUrl", this.f15136c);
        a2.a("gcmSenderId", this.f15138e);
        a2.a("storageBucket", this.f15139f);
        a2.a("projectId", this.f15140g);
        return a2.toString();
    }

    private j(@NonNull String str, @NonNull String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6, @Nullable String str7) {
        m.b(!s.a(str), "ApplicationId must be set.");
        this.f15135b = str;
        this.f15134a = str2;
        this.f15136c = str3;
        this.f15137d = str4;
        this.f15138e = str5;
        this.f15139f = str6;
        this.f15140g = str7;
    }

    @NonNull
    public String a() {
        return this.f15134a;
    }
}
