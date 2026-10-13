package com.google.android.gms.common;

import android.util.Log;
import androidx.annotation.NonNull;
import java.util.concurrent.Callable;
import javax.annotation.CheckReturnValue;
import javax.annotation.Nullable;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
@CheckReturnValue
/* loaded from: classes.dex */
public class u {

    /* renamed from: d, reason: collision with root package name */
    private static final u f5414d = new u(true, null, null);

    /* renamed from: a, reason: collision with root package name */
    final boolean f5415a;

    /* renamed from: b, reason: collision with root package name */
    private final String f5416b;

    /* renamed from: c, reason: collision with root package name */
    private final Throwable f5417c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public u(boolean z, @Nullable String str, @Nullable Throwable th) {
        this.f5415a = z;
        this.f5416b = str;
        this.f5417c = th;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static u a(Callable<String> callable) {
        return new w(callable);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static u c() {
        return f5414d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b() {
        if (this.f5415a || !Log.isLoggable("GoogleCertificatesRslt", 3)) {
            return;
        }
        if (this.f5417c != null) {
            a();
        } else {
            a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static u a(@NonNull String str) {
        return new u(false, str, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static u a(@NonNull String str, @NonNull Throwable th) {
        return new u(false, str, th);
    }

    @Nullable
    String a() {
        return this.f5416b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(String str, zzd zzdVar, boolean z, boolean z2) {
        return String.format("%s: pkg=%s, sha1=%s, atk=%s, ver=%s", z2 ? "debug cert rejected" : "not whitelisted", str, com.google.android.gms.common.util.j.a(com.google.android.gms.common.util.a.a("SHA-1").digest(zzdVar.getBytes())), Boolean.valueOf(z), "12451009.false");
    }
}
