package com.mapbox.android.telemetry;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import androidx.annotation.NonNull;
import com.mapbox.android.telemetry.Event;
import com.mapbox.android.telemetry.j0;
import java.io.IOException;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: MapboxTelemetry.java */
/* loaded from: classes2.dex */
public class x implements u, c0 {
    private static AtomicReference<String> m = new AtomicReference<>("");
    static Context n = null;

    /* renamed from: a, reason: collision with root package name */
    private String f15654a;

    /* renamed from: b, reason: collision with root package name */
    private final r f15655b;

    /* renamed from: c, reason: collision with root package name */
    private g0 f15656c;

    /* renamed from: d, reason: collision with root package name */
    private i.f f15657d;

    /* renamed from: e, reason: collision with root package name */
    private final z f15658e;

    /* renamed from: g, reason: collision with root package name */
    private final j0 f15660g;

    /* renamed from: i, reason: collision with root package name */
    private com.mapbox.android.telemetry.e f15662i;

    /* renamed from: k, reason: collision with root package name */
    private n f15664k;

    /* renamed from: l, reason: collision with root package name */
    private final ExecutorService f15665l;

    /* renamed from: f, reason: collision with root package name */
    private i f15659f = null;

    /* renamed from: h, reason: collision with root package name */
    private CopyOnWriteArraySet<k0> f15661h = null;

    /* renamed from: j, reason: collision with root package name */
    private CopyOnWriteArraySet<com.mapbox.android.telemetry.c> f15663j = null;

    /* compiled from: MapboxTelemetry.java */
    /* loaded from: classes2.dex */
    class a implements Runnable {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ long f15666e;

        a(x xVar, long j2) {
            this.f15666e = j2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                SharedPreferences.Editor edit = l0.i(x.n).edit();
                edit.putLong("mapboxSessionRotationInterval", TimeUnit.HOURS.toMillis(this.f15666e));
                edit.apply();
            } catch (Throwable th) {
                th.toString();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MapboxTelemetry.java */
    /* loaded from: classes2.dex */
    public class b implements y {
        b() {
        }

        @Override // com.mapbox.android.telemetry.y
        public void a() {
            x.this.d();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MapboxTelemetry.java */
    /* loaded from: classes2.dex */
    public class c implements Runnable {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ List f15668e;

        c(List list) {
            this.f15668e = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                x.this.a((List<Event>) this.f15668e, false);
            } catch (Throwable th) {
                th.toString();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MapboxTelemetry.java */
    /* loaded from: classes2.dex */
    public class d implements Runnable {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ List f15670e;

        d(List list) {
            this.f15670e = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                x.this.a((List<Event>) this.f15670e, true);
            } catch (Throwable th) {
                th.toString();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MapboxTelemetry.java */
    /* loaded from: classes2.dex */
    public class e implements Runnable {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ boolean f15672e;

        e(x xVar, boolean z) {
            this.f15672e = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                SharedPreferences.Editor edit = l0.i(x.n).edit();
                edit.putBoolean("mapboxTelemetryLocationState", this.f15672e);
                edit.apply();
            } catch (Throwable th) {
                th.toString();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MapboxTelemetry.java */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class g {

        /* renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f15674a = new int[Event.a.values().length];

        static {
            try {
                f15674a[Event.a.TURNSTILE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f15674a[Event.a.CRASH.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f15674a[Event.a.VIS_ATTACHMENT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* compiled from: MapboxTelemetry.java */
    /* loaded from: classes2.dex */
    private static final class h {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: MapboxTelemetry.java */
        /* loaded from: classes2.dex */
        public static class a implements ThreadFactory {

            /* renamed from: e, reason: collision with root package name */
            final /* synthetic */ String f15675e;

            a(String str) {
                this.f15675e = str;
            }

            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                return new Thread(runnable, this.f15675e);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static synchronized ExecutorService b(String str, int i2, long j2) {
            ThreadPoolExecutor threadPoolExecutor;
            synchronized (h.class) {
                threadPoolExecutor = new ThreadPoolExecutor(0, i2, j2, TimeUnit.SECONDS, new LinkedBlockingQueue(), a(str));
            }
            return threadPoolExecutor;
        }

        private static ThreadFactory a(String str) {
            return new a(str);
        }
    }

    public x(Context context, String str, String str2) {
        a(context);
        this.f15665l = h.b("MapboxTelemetryExecutor", 3, 20L);
        a(context, str, this.f15665l);
        this.f15654a = str2;
        this.f15658e = new a0(n, i()).a();
        this.f15660g = new j0(true);
        g();
        e();
        this.f15657d = a(this.f15661h);
        this.f15655b = r.a(this, this.f15665l);
    }

    private g0 c(String str, String str2) {
        this.f15656c = new h0(str, l0.a(str2, n), new w(), this.f15662i).a(n);
        return this.f15656c;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void d() {
        List<Event> a2 = this.f15655b.a();
        if (a2.isEmpty()) {
            return;
        }
        a(new c(a2));
    }

    private void e() {
        this.f15663j = new CopyOnWriteArraySet<>();
    }

    private void f() {
        if (this.f15664k == null) {
            Context context = n;
            this.f15664k = new n(context, l0.a(this.f15654a, context), m.get(), new i.w());
        }
        if (this.f15662i == null) {
            this.f15662i = new com.mapbox.android.telemetry.e(n, this.f15664k);
        }
        if (this.f15656c == null) {
            this.f15656c = c(m.get(), this.f15654a);
        }
    }

    private void g() {
        this.f15661h = new CopyOnWriteArraySet<>();
    }

    private boolean h() {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) n.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo == null) {
                return false;
            }
            return activeNetworkInfo.isConnected();
        } catch (Exception unused) {
            return false;
        }
    }

    private com.mapbox.android.telemetry.a i() {
        return new com.mapbox.android.telemetry.a(new b());
    }

    private i j() {
        if (this.f15659f == null) {
            this.f15659f = new i();
        }
        return this.f15659f;
    }

    private void k() {
        this.f15658e.a();
        this.f15658e.a(j().a());
    }

    private void l() {
        if (j0.c.ENABLED.equals(this.f15660g.a())) {
            k();
            b(true);
        }
    }

    private void m() {
        if (j0.c.ENABLED.equals(this.f15660g.a())) {
            d();
            n();
            b(false);
        }
    }

    private void n() {
        this.f15658e.b();
    }

    public boolean b() {
        if (!j0.a(n)) {
            return false;
        }
        l();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MapboxTelemetry.java */
    /* loaded from: classes2.dex */
    public static class f implements i.f {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Set f15673a;

        f(Set set) {
            this.f15673a = set;
        }

        @Override // i.f
        public void a(i.e eVar, IOException iOException) {
            Iterator it = this.f15673a.iterator();
            while (it.hasNext()) {
                ((k0) it.next()).a(iOException.getMessage());
            }
        }

        @Override // i.f
        public void a(i.e eVar, i.b0 b0Var) {
            i.c0 i2 = b0Var.i();
            if (i2 != null) {
                i2.close();
            }
            Iterator it = this.f15673a.iterator();
            while (it.hasNext()) {
                ((k0) it.next()).a(b0Var.o(), b0Var.k());
            }
        }
    }

    private synchronized boolean e(Event event) {
        boolean z;
        int i2 = g.f15674a[event.obtainType().ordinal()];
        z = true;
        if (i2 == 1 || i2 == 2) {
            a(new d(Collections.singletonList(event)));
        } else if (i2 != 3) {
            z = false;
        } else {
            d(event);
        }
        return z;
    }

    @Override // com.mapbox.android.telemetry.u
    public void a(List<Event> list) {
        if (!j0.c.ENABLED.equals(this.f15660g.a()) || l0.a(n)) {
            return;
        }
        a(list, false);
    }

    public boolean b(k0 k0Var) {
        return this.f15661h.remove(k0Var);
    }

    private boolean b(String str, String str2) {
        return a(str) && b(str2);
    }

    private boolean b(String str) {
        if (l0.a(str)) {
            return false;
        }
        this.f15654a = str;
        return true;
    }

    private boolean c(Event event) {
        if (j0.c.ENABLED.equals(this.f15660g.a())) {
            return this.f15655b.a(event);
        }
        return false;
    }

    private void d(Event event) {
        if (c().booleanValue()) {
            this.f15656c.a(b(event), this.f15663j);
        }
    }

    private synchronized void b(boolean z) {
        a(new e(this, z));
    }

    public boolean a(Event event) {
        if (e(event)) {
            return true;
        }
        return c(event);
    }

    private Boolean c() {
        return Boolean.valueOf(h() && a(m.get(), this.f15654a));
    }

    private Attachment b(Event event) {
        return (Attachment) event;
    }

    public boolean a() {
        if (!j0.a(n)) {
            return false;
        }
        m();
        return true;
    }

    public boolean a(d0 d0Var) {
        a(new a(this, d0Var.a()));
        return true;
    }

    public void a(boolean z) {
        g0 g0Var = this.f15656c;
        if (g0Var != null) {
            g0Var.a(z);
        }
    }

    public boolean a(k0 k0Var) {
        return this.f15661h.add(k0Var);
    }

    boolean a(String str, String str2) {
        boolean b2 = b(str, str2);
        if (b2) {
            f();
        }
        return b2;
    }

    private void a(Context context) {
        if (n == null) {
            if (context != null && context.getApplicationContext() != null) {
                n = context.getApplicationContext();
                return;
            }
            throw new IllegalArgumentException("Non-null application context required.");
        }
    }

    private boolean a(String str) {
        if (l0.a(str)) {
            return false;
        }
        m.set(str);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void a(List<Event> list, boolean z) {
        if (h() && a(m.get(), this.f15654a)) {
            this.f15656c.a(list, this.f15657d, z);
        }
    }

    private static synchronized void a(@NonNull Context context, @NonNull String str, @NonNull ExecutorService executorService) {
        synchronized (x.class) {
            if (l0.a(str)) {
                return;
            }
            if (m.getAndSet(str).isEmpty()) {
                com.mapbox.android.telemetry.errors.b.a(context, executorService);
            }
        }
    }

    private void a(Runnable runnable) {
        try {
            this.f15665l.execute(runnable);
        } catch (RejectedExecutionException e2) {
            e2.toString();
        }
    }

    private static i.f a(Set<k0> set) {
        return new f(set);
    }
}
