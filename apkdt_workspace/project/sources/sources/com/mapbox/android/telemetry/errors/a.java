package com.mapbox.android.telemetry.errors;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import com.google.gson.e;
import com.google.gson.n;
import com.mapbox.android.telemetry.CrashEvent;
import com.mapbox.android.telemetry.k0;
import com.mapbox.android.telemetry.x;
import e.m.a.a.a;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ErrorReporterClient.java */
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    private final SharedPreferences f15564a;

    /* renamed from: b, reason: collision with root package name */
    private final x f15565b;

    /* renamed from: e, reason: collision with root package name */
    private File[] f15568e;

    /* renamed from: c, reason: collision with root package name */
    private final HashSet<String> f15566c = new HashSet<>();

    /* renamed from: d, reason: collision with root package name */
    private final HashMap<CrashEvent, File> f15567d = new HashMap<>();

    /* renamed from: f, reason: collision with root package name */
    private int f15569f = 0;

    /* renamed from: g, reason: collision with root package name */
    private boolean f15570g = false;

    @VisibleForTesting
    a(@NonNull SharedPreferences sharedPreferences, @NonNull x xVar, File[] fileArr) {
        this.f15564a = sharedPreferences;
        this.f15565b = xVar;
        this.f15568e = fileArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b() {
        try {
            return this.f15564a.getBoolean("mapbox.crash.enable", true);
        } catch (Exception e2) {
            e2.toString();
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public CrashEvent c() {
        try {
            if (a()) {
                try {
                    File file = this.f15568e[this.f15569f];
                    CrashEvent a2 = a(e.m.a.a.a.b(file));
                    if (a2.isValid()) {
                        this.f15567d.put(a2, file);
                    }
                    return a2;
                } catch (FileNotFoundException e2) {
                    throw new IllegalStateException("File cannot be read: " + e2.toString());
                }
            }
            throw new IllegalStateException("No more events can be read");
        } finally {
            this.f15569f++;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static a a(@NonNull Context context) {
        return new a(context.getSharedPreferences("MapboxCrashReporterPrefs", 0), new x(context, "", String.format("%s/%s", "mapbox-android-crash", "5.0.1")), new File[0]);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b(CrashEvent crashEvent) {
        return this.f15566c.contains(crashEvent.getHash());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ErrorReporterClient.java */
    /* renamed from: com.mapbox.android.telemetry.errors.a$a, reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public class C0149a implements k0 {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ AtomicBoolean f15571a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ CountDownLatch f15572b;

        C0149a(AtomicBoolean atomicBoolean, CountDownLatch countDownLatch) {
            this.f15571a = atomicBoolean;
            this.f15572b = countDownLatch;
        }

        @Override // com.mapbox.android.telemetry.k0
        public void a(boolean z, int i2) {
            String str = "Response: " + i2;
            this.f15571a.set(z);
            this.f15572b.countDown();
            a.this.f15565b.b(this);
        }

        @Override // com.mapbox.android.telemetry.k0
        public void a(String str) {
            String str2 = "Response: " + str;
            this.f15572b.countDown();
            a.this.f15565b.b(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a a(@NonNull File file) {
        this.f15569f = 0;
        this.f15568e = e.m.a.a.a.a(file);
        Arrays.sort(this.f15568e, new a.C0205a());
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a() {
        return this.f15569f < this.f15568e.length;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(CrashEvent crashEvent) {
        File file = this.f15567d.get(crashEvent);
        return file != null && file.delete();
    }

    @VisibleForTesting
    boolean a(CrashEvent crashEvent, AtomicBoolean atomicBoolean, CountDownLatch countDownLatch) {
        a(atomicBoolean, countDownLatch);
        this.f15565b.a(crashEvent);
        try {
            countDownLatch.await(10L, TimeUnit.SECONDS);
            if (atomicBoolean.get()) {
                this.f15566c.add(crashEvent.getHash());
            }
            return atomicBoolean.get();
        } catch (InterruptedException unused) {
            if (atomicBoolean.get()) {
                this.f15566c.add(crashEvent.getHash());
            }
            return false;
        } catch (Throwable th) {
            if (atomicBoolean.get()) {
                this.f15566c.add(crashEvent.getHash());
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean c(CrashEvent crashEvent) {
        if (crashEvent.isValid()) {
            return a(crashEvent, new AtomicBoolean(this.f15570g), new CountDownLatch(1));
        }
        return false;
    }

    private void a(AtomicBoolean atomicBoolean, CountDownLatch countDownLatch) {
        this.f15565b.a(new C0149a(atomicBoolean, countDownLatch));
    }

    private static CrashEvent a(String str) {
        try {
            return (CrashEvent) new e().a().a(str, CrashEvent.class);
        } catch (n e2) {
            e2.toString();
            return new CrashEvent(null, null);
        }
    }
}
