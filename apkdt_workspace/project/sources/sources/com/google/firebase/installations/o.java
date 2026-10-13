package com.google.firebase.installations;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;

/* compiled from: Utils.java */
/* loaded from: classes.dex */
public final class o {

    /* renamed from: b, reason: collision with root package name */
    public static final long f15080b = TimeUnit.HOURS.toSeconds(1);

    /* renamed from: c, reason: collision with root package name */
    private static final Pattern f15081c = Pattern.compile("\\AA[\\w-]{38}\\z");

    /* renamed from: d, reason: collision with root package name */
    private static o f15082d;

    /* renamed from: a, reason: collision with root package name */
    private final com.google.firebase.installations.s.a f15083a;

    private o(com.google.firebase.installations.s.a aVar) {
        this.f15083a = aVar;
    }

    public static o a(com.google.firebase.installations.s.a aVar) {
        if (f15082d == null) {
            f15082d = new o(aVar);
        }
        return f15082d;
    }

    public static o d() {
        return a(com.google.firebase.installations.s.b.b());
    }

    public long b() {
        return TimeUnit.MILLISECONDS.toSeconds(a());
    }

    public long c() {
        return (long) (Math.random() * 1000.0d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean b(@Nullable String str) {
        return str.contains(":");
    }

    public boolean a(@NonNull com.google.firebase.installations.q.d dVar) {
        return TextUtils.isEmpty(dVar.a()) || dVar.g() + dVar.b() < b() + f15080b;
    }

    public long a() {
        return this.f15083a.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(@Nullable String str) {
        return f15081c.matcher(str).matches();
    }
}
