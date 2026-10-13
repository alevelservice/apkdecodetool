package com.google.firebase.installations.q;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.firebase.installations.q.a;
import com.google.firebase.installations.q.c;

/* compiled from: PersistedInstallationEntry.java */
/* loaded from: classes.dex */
public abstract class d {

    /* compiled from: PersistedInstallationEntry.java */
    /* loaded from: classes.dex */
    public static abstract class a {
        @NonNull
        public abstract a a(long j2);

        @NonNull
        public abstract a a(@NonNull c.a aVar);

        @NonNull
        public abstract a a(@Nullable String str);

        @NonNull
        public abstract d a();

        @NonNull
        public abstract a b(long j2);

        @NonNull
        public abstract a b(@NonNull String str);

        @NonNull
        public abstract a c(@Nullable String str);

        @NonNull
        public abstract a d(@Nullable String str);
    }

    static {
        p().a();
    }

    @NonNull
    public static a p() {
        a.b bVar = new a.b();
        bVar.b(0L);
        bVar.a(c.a.ATTEMPT_MIGRATION);
        bVar.a(0L);
        return bVar;
    }

    @NonNull
    public d a(@NonNull String str, @NonNull String str2, long j2, @Nullable String str3, long j3) {
        a m = m();
        m.b(str);
        m.a(c.a.REGISTERED);
        m.a(str3);
        m.d(str2);
        m.a(j3);
        m.b(j2);
        return m.a();
    }

    @Nullable
    public abstract String a();

    public abstract long b();

    @NonNull
    public d b(@NonNull String str) {
        a m = m();
        m.b(str);
        m.a(c.a.UNREGISTERED);
        return m.a();
    }

    @Nullable
    public abstract String c();

    @Nullable
    public abstract String d();

    @Nullable
    public abstract String e();

    @NonNull
    public abstract c.a f();

    public abstract long g();

    public boolean h() {
        return f() == c.a.REGISTER_ERROR;
    }

    public boolean i() {
        return f() == c.a.NOT_GENERATED || f() == c.a.ATTEMPT_MIGRATION;
    }

    public boolean j() {
        return f() == c.a.REGISTERED;
    }

    public boolean k() {
        return f() == c.a.UNREGISTERED;
    }

    public boolean l() {
        return f() == c.a.ATTEMPT_MIGRATION;
    }

    @NonNull
    public abstract a m();

    @NonNull
    public d n() {
        a m = m();
        m.a((String) null);
        return m.a();
    }

    @NonNull
    public d o() {
        a m = m();
        m.a(c.a.NOT_GENERATED);
        return m.a();
    }

    @NonNull
    public d a(@NonNull String str) {
        a m = m();
        m.c(str);
        m.a(c.a.REGISTER_ERROR);
        return m.a();
    }

    @NonNull
    public d a(@NonNull String str, long j2, long j3) {
        a m = m();
        m.a(str);
        m.a(j2);
        m.b(j3);
        return m.a();
    }
}
