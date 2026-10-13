package com.google.android.gms.stats;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.PowerManager;
import android.os.WorkSource;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.m;
import com.google.android.gms.common.util.s;
import com.google.android.gms.common.util.u;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.atomic.AtomicInteger;
import javax.annotation.concurrent.ThreadSafe;

@ShowFirstParty
@ThreadSafe
@KeepForSdk
/* loaded from: classes.dex */
public class a {

    /* renamed from: l, reason: collision with root package name */
    private static ScheduledExecutorService f13438l;

    /* renamed from: a, reason: collision with root package name */
    private final Object f13439a;

    /* renamed from: b, reason: collision with root package name */
    private final PowerManager.WakeLock f13440b;

    /* renamed from: c, reason: collision with root package name */
    private WorkSource f13441c;

    /* renamed from: d, reason: collision with root package name */
    private final int f13442d;

    /* renamed from: e, reason: collision with root package name */
    private final String f13443e;

    /* renamed from: f, reason: collision with root package name */
    private final String f13444f;

    /* renamed from: g, reason: collision with root package name */
    private final Context f13445g;

    /* renamed from: h, reason: collision with root package name */
    private boolean f13446h;

    /* renamed from: i, reason: collision with root package name */
    private final Map<String, Integer[]> f13447i;

    /* renamed from: j, reason: collision with root package name */
    private int f13448j;

    /* renamed from: k, reason: collision with root package name */
    private AtomicInteger f13449k;

    /* renamed from: com.google.android.gms.stats.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0095a {
    }

    static {
        new b();
    }

    @KeepForSdk
    public a(@NonNull Context context, int i2, @NonNull String str) {
        this(context, i2, str, null, context == null ? null : context.getPackageName());
    }

    private final List<String> b() {
        return u.a(this.f13441c);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0054, code lost:
    
        if (r2 == false) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x005e, code lost:
    
        com.google.android.gms.common.stats.d.a().a(r13.f13445g, com.google.android.gms.common.stats.c.a(r13.f13440b, r6), 7, r13.f13443e, r6, null, r13.f13442d, b(), r14);
        r13.f13448j++;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x005c, code lost:
    
        if (r13.f13448j == 0) goto L22;
     */
    @com.google.android.gms.common.annotation.KeepForSdk
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(long r14) {
        /*
            r13 = this;
            java.util.concurrent.atomic.AtomicInteger r0 = r13.f13449k
            r0.incrementAndGet()
            r0 = 0
            java.lang.String r6 = r13.a(r0)
            java.lang.Object r0 = r13.f13439a
            monitor-enter(r0)
            java.util.Map<java.lang.String, java.lang.Integer[]> r1 = r13.f13447i     // Catch: java.lang.Throwable -> L96
            boolean r1 = r1.isEmpty()     // Catch: java.lang.Throwable -> L96
            r2 = 0
            if (r1 == 0) goto L1a
            int r1 = r13.f13448j     // Catch: java.lang.Throwable -> L96
            if (r1 <= 0) goto L29
        L1a:
            android.os.PowerManager$WakeLock r1 = r13.f13440b     // Catch: java.lang.Throwable -> L96
            boolean r1 = r1.isHeld()     // Catch: java.lang.Throwable -> L96
            if (r1 != 0) goto L29
            java.util.Map<java.lang.String, java.lang.Integer[]> r1 = r13.f13447i     // Catch: java.lang.Throwable -> L96
            r1.clear()     // Catch: java.lang.Throwable -> L96
            r13.f13448j = r2     // Catch: java.lang.Throwable -> L96
        L29:
            boolean r1 = r13.f13446h     // Catch: java.lang.Throwable -> L96
            r12 = 1
            if (r1 == 0) goto L56
            java.util.Map<java.lang.String, java.lang.Integer[]> r1 = r13.f13447i     // Catch: java.lang.Throwable -> L96
            java.lang.Object r1 = r1.get(r6)     // Catch: java.lang.Throwable -> L96
            java.lang.Integer[] r1 = (java.lang.Integer[]) r1     // Catch: java.lang.Throwable -> L96
            if (r1 != 0) goto L47
            java.util.Map<java.lang.String, java.lang.Integer[]> r1 = r13.f13447i     // Catch: java.lang.Throwable -> L96
            java.lang.Integer[] r3 = new java.lang.Integer[r12]     // Catch: java.lang.Throwable -> L96
            java.lang.Integer r4 = java.lang.Integer.valueOf(r12)     // Catch: java.lang.Throwable -> L96
            r3[r2] = r4     // Catch: java.lang.Throwable -> L96
            r1.put(r6, r3)     // Catch: java.lang.Throwable -> L96
            r2 = 1
            goto L54
        L47:
            r3 = r1[r2]     // Catch: java.lang.Throwable -> L96
            int r3 = r3.intValue()     // Catch: java.lang.Throwable -> L96
            int r3 = r3 + r12
            java.lang.Integer r3 = java.lang.Integer.valueOf(r3)     // Catch: java.lang.Throwable -> L96
            r1[r2] = r3     // Catch: java.lang.Throwable -> L96
        L54:
            if (r2 != 0) goto L5e
        L56:
            boolean r1 = r13.f13446h     // Catch: java.lang.Throwable -> L96
            if (r1 != 0) goto L7d
            int r1 = r13.f13448j     // Catch: java.lang.Throwable -> L96
            if (r1 != 0) goto L7d
        L5e:
            com.google.android.gms.common.stats.d r1 = com.google.android.gms.common.stats.d.a()     // Catch: java.lang.Throwable -> L96
            android.content.Context r2 = r13.f13445g     // Catch: java.lang.Throwable -> L96
            android.os.PowerManager$WakeLock r3 = r13.f13440b     // Catch: java.lang.Throwable -> L96
            java.lang.String r3 = com.google.android.gms.common.stats.c.a(r3, r6)     // Catch: java.lang.Throwable -> L96
            r4 = 7
            java.lang.String r5 = r13.f13443e     // Catch: java.lang.Throwable -> L96
            r7 = 0
            int r8 = r13.f13442d     // Catch: java.lang.Throwable -> L96
            java.util.List r9 = r13.b()     // Catch: java.lang.Throwable -> L96
            r10 = r14
            r1.a(r2, r3, r4, r5, r6, r7, r8, r9, r10)     // Catch: java.lang.Throwable -> L96
            int r1 = r13.f13448j     // Catch: java.lang.Throwable -> L96
            int r1 = r1 + r12
            r13.f13448j = r1     // Catch: java.lang.Throwable -> L96
        L7d:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L96
            android.os.PowerManager$WakeLock r0 = r13.f13440b
            r0.acquire()
            r0 = 0
            int r2 = (r14 > r0 ? 1 : (r14 == r0 ? 0 : -1))
            if (r2 <= 0) goto L95
            java.util.concurrent.ScheduledExecutorService r0 = com.google.android.gms.stats.a.f13438l
            com.google.android.gms.stats.c r1 = new com.google.android.gms.stats.c
            r1.<init>(r13)
            java.util.concurrent.TimeUnit r2 = java.util.concurrent.TimeUnit.MILLISECONDS
            r0.schedule(r1, r14, r2)
        L95:
            return
        L96:
            r14 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L96
            throw r14
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.stats.a.a(long):void");
    }

    private a(@NonNull Context context, int i2, @NonNull String str, @Nullable String str2, @NonNull String str3) {
        this(context, i2, str, null, str3, null);
    }

    @SuppressLint({"UnwrappedWakeLock"})
    private a(@NonNull Context context, int i2, @NonNull String str, @Nullable String str2, @NonNull String str3, @Nullable String str4) {
        this.f13439a = this;
        this.f13446h = true;
        this.f13447i = new HashMap();
        Collections.synchronizedSet(new HashSet());
        this.f13449k = new AtomicInteger(0);
        m.a(context, "WakeLock: context must not be null");
        m.a(str, (Object) "WakeLock: wakeLockName must not be empty");
        this.f13442d = i2;
        this.f13444f = null;
        this.f13445g = context.getApplicationContext();
        if (!"com.google.android.gms".equals(context.getPackageName())) {
            String valueOf = String.valueOf(str);
            this.f13443e = valueOf.length() != 0 ? "*gcore*:".concat(valueOf) : new String("*gcore*:");
        } else {
            this.f13443e = str;
        }
        this.f13440b = ((PowerManager) context.getSystemService("power")).newWakeLock(i2, str);
        if (u.a(context)) {
            this.f13441c = u.a(context, s.a(str3) ? context.getPackageName() : str3);
            WorkSource workSource = this.f13441c;
            if (workSource != null && u.a(this.f13445g)) {
                WorkSource workSource2 = this.f13441c;
                if (workSource2 != null) {
                    workSource2.add(workSource);
                } else {
                    this.f13441c = workSource;
                }
                try {
                    this.f13440b.setWorkSource(this.f13441c);
                } catch (ArrayIndexOutOfBoundsException | IllegalArgumentException e2) {
                    e2.toString();
                }
            }
        }
        if (f13438l == null) {
            f13438l = com.google.android.gms.common.n.a.a().a();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x004a, code lost:
    
        if (r1 != false) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0054, code lost:
    
        com.google.android.gms.common.stats.d.a().a(r12.f13445g, com.google.android.gms.common.stats.c.a(r12.f13440b, r6), 8, r12.f13443e, r6, null, r12.f13442d, b());
        r12.f13448j--;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0052, code lost:
    
        if (r12.f13448j == 1) goto L21;
     */
    @com.google.android.gms.common.annotation.KeepForSdk
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a() {
        /*
            r12 = this;
            java.util.concurrent.atomic.AtomicInteger r0 = r12.f13449k
            int r0 = r0.decrementAndGet()
            if (r0 >= 0) goto L13
            java.lang.String r0 = r12.f13443e
            java.lang.String r0 = java.lang.String.valueOf(r0)
            java.lang.String r1 = " release without a matched acquire!"
            r0.concat(r1)
        L13:
            r0 = 0
            java.lang.String r6 = r12.a(r0)
            java.lang.Object r0 = r12.f13439a
            monitor-enter(r0)
            boolean r1 = r12.f13446h     // Catch: java.lang.Throwable -> L78
            r10 = 1
            r11 = 0
            if (r1 == 0) goto L4c
            java.util.Map<java.lang.String, java.lang.Integer[]> r1 = r12.f13447i     // Catch: java.lang.Throwable -> L78
            java.lang.Object r1 = r1.get(r6)     // Catch: java.lang.Throwable -> L78
            java.lang.Integer[] r1 = (java.lang.Integer[]) r1     // Catch: java.lang.Throwable -> L78
            if (r1 != 0) goto L2d
        L2b:
            r1 = 0
            goto L4a
        L2d:
            r2 = r1[r11]     // Catch: java.lang.Throwable -> L78
            int r2 = r2.intValue()     // Catch: java.lang.Throwable -> L78
            if (r2 != r10) goto L3c
            java.util.Map<java.lang.String, java.lang.Integer[]> r1 = r12.f13447i     // Catch: java.lang.Throwable -> L78
            r1.remove(r6)     // Catch: java.lang.Throwable -> L78
            r1 = 1
            goto L4a
        L3c:
            r2 = r1[r11]     // Catch: java.lang.Throwable -> L78
            int r2 = r2.intValue()     // Catch: java.lang.Throwable -> L78
            int r2 = r2 - r10
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)     // Catch: java.lang.Throwable -> L78
            r1[r11] = r2     // Catch: java.lang.Throwable -> L78
            goto L2b
        L4a:
            if (r1 != 0) goto L54
        L4c:
            boolean r1 = r12.f13446h     // Catch: java.lang.Throwable -> L78
            if (r1 != 0) goto L73
            int r1 = r12.f13448j     // Catch: java.lang.Throwable -> L78
            if (r1 != r10) goto L73
        L54:
            com.google.android.gms.common.stats.d r1 = com.google.android.gms.common.stats.d.a()     // Catch: java.lang.Throwable -> L78
            android.content.Context r2 = r12.f13445g     // Catch: java.lang.Throwable -> L78
            android.os.PowerManager$WakeLock r3 = r12.f13440b     // Catch: java.lang.Throwable -> L78
            java.lang.String r3 = com.google.android.gms.common.stats.c.a(r3, r6)     // Catch: java.lang.Throwable -> L78
            r4 = 8
            java.lang.String r5 = r12.f13443e     // Catch: java.lang.Throwable -> L78
            r7 = 0
            int r8 = r12.f13442d     // Catch: java.lang.Throwable -> L78
            java.util.List r9 = r12.b()     // Catch: java.lang.Throwable -> L78
            r1.a(r2, r3, r4, r5, r6, r7, r8, r9)     // Catch: java.lang.Throwable -> L78
            int r1 = r12.f13448j     // Catch: java.lang.Throwable -> L78
            int r1 = r1 - r10
            r12.f13448j = r1     // Catch: java.lang.Throwable -> L78
        L73:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L78
            r12.a(r11)
            return
        L78:
            r1 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L78
            goto L7c
        L7b:
            throw r1
        L7c:
            goto L7b
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.stats.a.a():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(int i2) {
        if (this.f13440b.isHeld()) {
            try {
                this.f13440b.release();
            } catch (RuntimeException e2) {
                if (e2.getClass().equals(RuntimeException.class)) {
                    String.valueOf(this.f13443e).concat(" was already released!");
                } else {
                    throw e2;
                }
            }
            this.f13440b.isHeld();
        }
    }

    private final String a(String str) {
        return (!this.f13446h || TextUtils.isEmpty(str)) ? this.f13444f : str;
    }

    @KeepForSdk
    public void a(boolean z) {
        this.f13440b.setReferenceCounted(z);
        this.f13446h = z;
    }
}
