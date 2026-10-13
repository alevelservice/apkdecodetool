package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import android.util.Pair;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.util.VisibleForTesting;

/* loaded from: classes.dex */
public final class s3 {

    /* renamed from: a, reason: collision with root package name */
    @VisibleForTesting
    private final String f13209a;

    /* renamed from: b, reason: collision with root package name */
    private final String f13210b;

    /* renamed from: c, reason: collision with root package name */
    private final String f13211c;

    /* renamed from: d, reason: collision with root package name */
    private final long f13212d;

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ o3 f13213e;

    private s3(o3 o3Var, String str, long j2) {
        this.f13213e = o3Var;
        com.google.android.gms.common.internal.m.b(str);
        com.google.android.gms.common.internal.m.a(j2 > 0);
        this.f13209a = String.valueOf(str).concat(":start");
        this.f13210b = String.valueOf(str).concat(":count");
        this.f13211c = String.valueOf(str).concat(":value");
        this.f13212d = j2;
    }

    @WorkerThread
    private final void b() {
        SharedPreferences y;
        this.f13213e.g();
        long a2 = this.f13213e.a().a();
        y = this.f13213e.y();
        SharedPreferences.Editor edit = y.edit();
        edit.remove(this.f13210b);
        edit.remove(this.f13211c);
        edit.putLong(this.f13209a, a2);
        edit.apply();
    }

    @WorkerThread
    private final long c() {
        SharedPreferences y;
        y = this.f13213e.y();
        return y.getLong(this.f13209a, 0L);
    }

    @WorkerThread
    public final void a(String str, long j2) {
        SharedPreferences y;
        SharedPreferences y2;
        SharedPreferences y3;
        this.f13213e.g();
        if (c() == 0) {
            b();
        }
        if (str == null) {
            str = "";
        }
        y = this.f13213e.y();
        long j3 = y.getLong(this.f13210b, 0L);
        if (j3 <= 0) {
            y3 = this.f13213e.y();
            SharedPreferences.Editor edit = y3.edit();
            edit.putString(this.f13211c, str);
            edit.putLong(this.f13210b, 1L);
            edit.apply();
            return;
        }
        long j4 = j3 + 1;
        boolean z = (this.f13213e.j().r().nextLong() & Long.MAX_VALUE) < Long.MAX_VALUE / j4;
        y2 = this.f13213e.y();
        SharedPreferences.Editor edit2 = y2.edit();
        if (z) {
            edit2.putString(this.f13211c, str);
        }
        edit2.putLong(this.f13210b, j4);
        edit2.apply();
    }

    @WorkerThread
    public final Pair<String, Long> a() {
        long abs;
        SharedPreferences y;
        SharedPreferences y2;
        this.f13213e.g();
        this.f13213e.g();
        long c2 = c();
        if (c2 == 0) {
            b();
            abs = 0;
        } else {
            abs = Math.abs(c2 - this.f13213e.a().a());
        }
        long j2 = this.f13212d;
        if (abs < j2) {
            return null;
        }
        if (abs > (j2 << 1)) {
            b();
            return null;
        }
        y = this.f13213e.y();
        String string = y.getString(this.f13211c, null);
        y2 = this.f13213e.y();
        long j3 = y2.getLong(this.f13210b, 0L);
        b();
        if (string != null && j3 > 0) {
            return new Pair<>(string, Long.valueOf(j3));
        }
        return o3.A;
    }
}
