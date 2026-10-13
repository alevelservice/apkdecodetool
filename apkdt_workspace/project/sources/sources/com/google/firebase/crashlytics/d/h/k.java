package com.google.firebase.crashlytics.d.h;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.StatFs;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.ap.zoloz.hummer.biz.HummerConstants;
import com.google.firebase.crashlytics.d.h.r;
import com.google.firebase.crashlytics.d.i.b;
import com.google.firebase.crashlytics.d.m.b;
import com.google.firebase.crashlytics.d.m.c.c;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.Flushable;
import java.io.IOException;
import java.io.InputStream;
import java.lang.Thread;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CrashlyticsController.java */
/* loaded from: classes.dex */
public class k {

    /* renamed from: b, reason: collision with root package name */
    private final Context f14443b;

    /* renamed from: c, reason: collision with root package name */
    private final com.google.firebase.crashlytics.d.h.t f14444c;

    /* renamed from: d, reason: collision with root package name */
    private final com.google.firebase.crashlytics.d.h.n f14445d;

    /* renamed from: e, reason: collision with root package name */
    private final j0 f14446e;

    /* renamed from: f, reason: collision with root package name */
    private final com.google.firebase.crashlytics.d.h.i f14447f;

    /* renamed from: g, reason: collision with root package name */
    private final com.google.firebase.crashlytics.d.j.c f14448g;

    /* renamed from: h, reason: collision with root package name */
    private final com.google.firebase.crashlytics.d.h.y f14449h;

    /* renamed from: i, reason: collision with root package name */
    private final com.google.firebase.crashlytics.d.k.h f14450i;

    /* renamed from: j, reason: collision with root package name */
    private final com.google.firebase.crashlytics.d.h.b f14451j;

    /* renamed from: k, reason: collision with root package name */
    private final b.InterfaceC0118b f14452k;

    /* renamed from: l, reason: collision with root package name */
    private final b0 f14453l;
    private final com.google.firebase.crashlytics.d.i.b m;
    private final com.google.firebase.crashlytics.d.m.a n;
    private final b.a o;
    private final com.google.firebase.crashlytics.d.a p;
    private final com.google.firebase.crashlytics.d.p.d q;
    private final String r;
    private final com.google.firebase.crashlytics.d.f.a s;
    private final h0 t;
    private com.google.firebase.crashlytics.d.h.r u;
    static final FilenameFilter z = new C0113k("BeginSession");
    static final FilenameFilter A = com.google.firebase.crashlytics.d.h.j.a();
    static final FilenameFilter B = new p();
    static final Comparator<File> C = new q();
    static final Comparator<File> D = new r();
    private static final Pattern E = Pattern.compile("([\\d|A-Z|a-z]{12}\\-[\\d|A-Z|a-z]{4}\\-[\\d|A-Z|a-z]{4}\\-[\\d|A-Z|a-z]{12}).+");
    private static final Map<String, String> F = Collections.singletonMap("X-CRASHLYTICS-SEND-FLAGS", "1");
    private static final String[] G = {"SessionUser", "SessionApp", "SessionOS", "SessionDevice"};

    /* renamed from: a, reason: collision with root package name */
    private final AtomicInteger f14442a = new AtomicInteger(0);
    e.i.b.b.d.i<Boolean> v = new e.i.b.b.d.i<>();
    e.i.b.b.d.i<Boolean> w = new e.i.b.b.d.i<>();
    e.i.b.b.d.i<Void> x = new e.i.b.b.d.i<>();
    AtomicBoolean y = new AtomicBoolean(false);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CrashlyticsController.java */
    /* loaded from: classes.dex */
    public class a implements Callable<Void> {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ long f14454e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ String f14455f;

        a(long j2, String str) {
            this.f14454e = j2;
            this.f14455f = str;
        }

        @Override // java.util.concurrent.Callable
        public Void call() {
            if (k.this.i()) {
                return null;
            }
            k.this.m.a(this.f14454e, this.f14455f);
            return null;
        }
    }

    /* compiled from: CrashlyticsController.java */
    /* loaded from: classes.dex */
    static class a0 implements FilenameFilter {
        a0() {
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return com.google.firebase.crashlytics.d.l.b.f14641h.accept(file, str) || str.contains("SessionMissingBinaryImages");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CrashlyticsController.java */
    /* loaded from: classes.dex */
    public class b implements Runnable {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ Date f14457e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ Throwable f14458f;

        /* renamed from: g, reason: collision with root package name */
        final /* synthetic */ Thread f14459g;

        b(Date date, Throwable th, Thread thread) {
            this.f14457e = date;
            this.f14458f = th;
            this.f14459g = thread;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (k.this.i()) {
                return;
            }
            long b2 = k.b(this.f14457e);
            String u = k.this.u();
            if (u == null) {
                com.google.firebase.crashlytics.d.b.a().a("Tried to write a non-fatal exception while no session was open.");
            } else {
                k.this.t.b(this.f14458f, this.f14459g, k.f(u), b2);
                k.this.b(this.f14459g, this.f14458f, u, b2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: CrashlyticsController.java */
    /* loaded from: classes.dex */
    public static final class b0 implements b.InterfaceC0116b {

        /* renamed from: a, reason: collision with root package name */
        private final com.google.firebase.crashlytics.d.k.h f14461a;

        public b0(com.google.firebase.crashlytics.d.k.h hVar) {
            this.f14461a = hVar;
        }

        @Override // com.google.firebase.crashlytics.d.i.b.InterfaceC0116b
        public File a() {
            File file = new File(this.f14461a.b(), "log-files");
            if (!file.exists()) {
                file.mkdirs();
            }
            return file;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CrashlyticsController.java */
    /* loaded from: classes.dex */
    public class c implements Callable<Void> {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ j0 f14462e;

        c(j0 j0Var) {
            this.f14462e = j0Var;
        }

        @Override // java.util.concurrent.Callable
        public Void call() {
            String u = k.this.u();
            if (u == null) {
                com.google.firebase.crashlytics.d.b.a().a("Tried to cache user data while no session was open.");
                return null;
            }
            k.this.t.a(k.f(u));
            new com.google.firebase.crashlytics.d.h.b0(k.this.f()).a(u, this.f14462e);
            return null;
        }
    }

    /* compiled from: CrashlyticsController.java */
    /* loaded from: classes.dex */
    private final class c0 implements b.c {
        private c0() {
        }

        @Override // com.google.firebase.crashlytics.d.m.b.c
        public File[] a() {
            return k.this.l();
        }

        @Override // com.google.firebase.crashlytics.d.m.b.c
        public File[] b() {
            return k.this.k();
        }

        /* synthetic */ c0(k kVar, C0113k c0113k) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CrashlyticsController.java */
    /* loaded from: classes.dex */
    public class d implements Callable<Void> {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ Map f14465e;

        d(Map map) {
            this.f14465e = map;
        }

        @Override // java.util.concurrent.Callable
        public Void call() {
            new com.google.firebase.crashlytics.d.h.b0(k.this.f()).a(k.this.u(), this.f14465e);
            return null;
        }
    }

    /* compiled from: CrashlyticsController.java */
    /* loaded from: classes.dex */
    private final class d0 implements b.a {
        private d0() {
        }

        @Override // com.google.firebase.crashlytics.d.m.b.a
        public boolean a() {
            return k.this.i();
        }

        /* synthetic */ d0(k kVar, C0113k c0113k) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CrashlyticsController.java */
    /* loaded from: classes.dex */
    public class e implements Callable<Void> {
        e() {
        }

        @Override // java.util.concurrent.Callable
        public Void call() {
            k.this.r();
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: CrashlyticsController.java */
    /* loaded from: classes.dex */
    public static final class e0 implements Runnable {

        /* renamed from: e, reason: collision with root package name */
        private final Context f14469e;

        /* renamed from: f, reason: collision with root package name */
        private final com.google.firebase.crashlytics.d.m.c.c f14470f;

        /* renamed from: g, reason: collision with root package name */
        private final com.google.firebase.crashlytics.d.m.b f14471g;

        /* renamed from: h, reason: collision with root package name */
        private final boolean f14472h;

        public e0(Context context, com.google.firebase.crashlytics.d.m.c.c cVar, com.google.firebase.crashlytics.d.m.b bVar, boolean z) {
            this.f14469e = context;
            this.f14470f = cVar;
            this.f14471g = bVar;
            this.f14472h = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (com.google.firebase.crashlytics.d.h.h.b(this.f14469e)) {
                com.google.firebase.crashlytics.d.b.a().a("Attempting to send crash report at time of crash...");
                this.f14471g.a(this.f14470f, this.f14472h);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CrashlyticsController.java */
    /* loaded from: classes.dex */
    public class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            k kVar = k.this;
            kVar.a(kVar.a(new a0()));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CrashlyticsController.java */
    /* loaded from: classes.dex */
    public static class f0 implements FilenameFilter {

        /* renamed from: a, reason: collision with root package name */
        private final String f14474a;

        public f0(String str) {
            this.f14474a = str;
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            StringBuilder sb = new StringBuilder();
            sb.append(this.f14474a);
            sb.append(".cls");
            return (str.equals(sb.toString()) || !str.contains(this.f14474a) || str.endsWith(".cls_temp")) ? false : true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CrashlyticsController.java */
    /* loaded from: classes.dex */
    public class g implements FilenameFilter {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Set f14475a;

        g(k kVar, Set set) {
            this.f14475a = set;
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            if (str.length() < 35) {
                return false;
            }
            return this.f14475a.contains(str.substring(0, 35));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CrashlyticsController.java */
    /* loaded from: classes.dex */
    public class h implements y {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f14476a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f14477b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ long f14478c;

        h(k kVar, String str, String str2, long j2) {
            this.f14476a = str;
            this.f14477b = str2;
            this.f14478c = j2;
        }

        @Override // com.google.firebase.crashlytics.d.h.k.y
        public void a(com.google.firebase.crashlytics.d.l.c cVar) {
            com.google.firebase.crashlytics.d.l.d.a(cVar, this.f14476a, this.f14477b, this.f14478c);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CrashlyticsController.java */
    /* loaded from: classes.dex */
    public class i implements y {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f14479a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f14480b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f14481c;

        /* renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f14482d;

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ int f14483e;

        i(String str, String str2, String str3, String str4, int i2) {
            this.f14479a = str;
            this.f14480b = str2;
            this.f14481c = str3;
            this.f14482d = str4;
            this.f14483e = i2;
        }

        @Override // com.google.firebase.crashlytics.d.h.k.y
        public void a(com.google.firebase.crashlytics.d.l.c cVar) {
            com.google.firebase.crashlytics.d.l.d.a(cVar, this.f14479a, this.f14480b, this.f14481c, this.f14482d, this.f14483e, k.this.r);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CrashlyticsController.java */
    /* loaded from: classes.dex */
    public class j implements y {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f14485a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f14486b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ boolean f14487c;

        j(k kVar, String str, String str2, boolean z) {
            this.f14485a = str;
            this.f14486b = str2;
            this.f14487c = z;
        }

        @Override // com.google.firebase.crashlytics.d.h.k.y
        public void a(com.google.firebase.crashlytics.d.l.c cVar) {
            com.google.firebase.crashlytics.d.l.d.a(cVar, this.f14485a, this.f14486b, this.f14487c);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CrashlyticsController.java */
    /* renamed from: com.google.firebase.crashlytics.d.h.k$k, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class C0113k extends z {
        C0113k(String str) {
            super(str);
        }

        @Override // com.google.firebase.crashlytics.d.h.k.z, java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return super.accept(file, str) && str.endsWith(".cls");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CrashlyticsController.java */
    /* loaded from: classes.dex */
    public class l implements y {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f14488a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f14489b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f14490c;

        /* renamed from: d, reason: collision with root package name */
        final /* synthetic */ long f14491d;

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ long f14492e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ boolean f14493f;

        /* renamed from: g, reason: collision with root package name */
        final /* synthetic */ int f14494g;

        /* renamed from: h, reason: collision with root package name */
        final /* synthetic */ String f14495h;

        /* renamed from: i, reason: collision with root package name */
        final /* synthetic */ String f14496i;

        l(k kVar, int i2, String str, int i3, long j2, long j3, boolean z, int i4, String str2, String str3) {
            this.f14488a = i2;
            this.f14489b = str;
            this.f14490c = i3;
            this.f14491d = j2;
            this.f14492e = j3;
            this.f14493f = z;
            this.f14494g = i4;
            this.f14495h = str2;
            this.f14496i = str3;
        }

        @Override // com.google.firebase.crashlytics.d.h.k.y
        public void a(com.google.firebase.crashlytics.d.l.c cVar) {
            com.google.firebase.crashlytics.d.l.d.a(cVar, this.f14488a, this.f14489b, this.f14490c, this.f14491d, this.f14492e, this.f14493f, this.f14494g, this.f14495h, this.f14496i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CrashlyticsController.java */
    /* loaded from: classes.dex */
    public class m implements y {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ j0 f14497a;

        m(k kVar, j0 j0Var) {
            this.f14497a = j0Var;
        }

        @Override // com.google.firebase.crashlytics.d.h.k.y
        public void a(com.google.firebase.crashlytics.d.l.c cVar) {
            com.google.firebase.crashlytics.d.l.d.a(cVar, this.f14497a.b(), (String) null, (String) null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CrashlyticsController.java */
    /* loaded from: classes.dex */
    public class n implements y {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f14498a;

        n(String str) {
            this.f14498a = str;
        }

        @Override // com.google.firebase.crashlytics.d.h.k.y
        public void a(com.google.firebase.crashlytics.d.l.c cVar) {
            com.google.firebase.crashlytics.d.l.d.a(cVar, this.f14498a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CrashlyticsController.java */
    /* loaded from: classes.dex */
    public class o implements Callable<Void> {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ long f14499e;

        o(long j2) {
            this.f14499e = j2;
        }

        @Override // java.util.concurrent.Callable
        public Void call() {
            Bundle bundle = new Bundle();
            bundle.putInt("fatal", 1);
            bundle.putLong("timestamp", this.f14499e);
            k.this.s.a("_ae", bundle);
            return null;
        }
    }

    /* compiled from: CrashlyticsController.java */
    /* loaded from: classes.dex */
    class p implements FilenameFilter {
        p() {
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return str.length() == 39 && str.endsWith(".cls");
        }
    }

    /* compiled from: CrashlyticsController.java */
    /* loaded from: classes.dex */
    class q implements Comparator<File> {
        q() {
        }

        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(File file, File file2) {
            return file2.getName().compareTo(file.getName());
        }
    }

    /* compiled from: CrashlyticsController.java */
    /* loaded from: classes.dex */
    class r implements Comparator<File> {
        r() {
        }

        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(File file, File file2) {
            return file.getName().compareTo(file2.getName());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CrashlyticsController.java */
    /* loaded from: classes.dex */
    public class s implements r.a {
        s() {
        }

        @Override // com.google.firebase.crashlytics.d.h.r.a
        public void a(@NonNull com.google.firebase.crashlytics.d.o.e eVar, @NonNull Thread thread, @NonNull Throwable th) {
            k.this.a(eVar, thread, th);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CrashlyticsController.java */
    /* loaded from: classes.dex */
    public class t implements Callable<e.i.b.b.d.h<Void>> {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ Date f14502e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ Throwable f14503f;

        /* renamed from: g, reason: collision with root package name */
        final /* synthetic */ Thread f14504g;

        /* renamed from: h, reason: collision with root package name */
        final /* synthetic */ com.google.firebase.crashlytics.d.o.e f14505h;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: CrashlyticsController.java */
        /* loaded from: classes.dex */
        public class a implements e.i.b.b.d.g<com.google.firebase.crashlytics.d.o.i.b, Void> {

            /* renamed from: a, reason: collision with root package name */
            final /* synthetic */ Executor f14507a;

            a(Executor executor) {
                this.f14507a = executor;
            }

            @Override // e.i.b.b.d.g
            @NonNull
            public e.i.b.b.d.h<Void> a(@Nullable com.google.firebase.crashlytics.d.o.i.b bVar) {
                if (bVar != null) {
                    k.this.a(bVar, true);
                    return e.i.b.b.d.k.a((e.i.b.b.d.h<?>[]) new e.i.b.b.d.h[]{k.this.x(), k.this.t.a(this.f14507a, com.google.firebase.crashlytics.d.h.u.getState(bVar))});
                }
                com.google.firebase.crashlytics.d.b.a().d("Received null app settings, cannot send reports at crash time.");
                return e.i.b.b.d.k.a((Object) null);
            }
        }

        t(Date date, Throwable th, Thread thread, com.google.firebase.crashlytics.d.o.e eVar) {
            this.f14502e = date;
            this.f14503f = th;
            this.f14504g = thread;
            this.f14505h = eVar;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public e.i.b.b.d.h<Void> call() {
            long b2 = k.b(this.f14502e);
            String u = k.this.u();
            if (u != null) {
                k.this.f14445d.a();
                k.this.t.a(this.f14503f, this.f14504g, k.f(u), b2);
                k.this.a(this.f14504g, this.f14503f, u, b2);
                k.this.a(this.f14502e.getTime());
                com.google.firebase.crashlytics.d.o.i.e b3 = this.f14505h.b();
                int i2 = b3.b().f14717a;
                int i3 = b3.b().f14718b;
                k.this.a(i2);
                k.this.r();
                k.this.c(i3);
                if (k.this.f14444c.a()) {
                    Executor b4 = k.this.f14447f.b();
                    return this.f14505h.a().a(b4, new a(b4));
                }
                return e.i.b.b.d.k.a((Object) null);
            }
            com.google.firebase.crashlytics.d.b.a().b("Tried to write a fatal exception while no session was open.");
            return e.i.b.b.d.k.a((Object) null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CrashlyticsController.java */
    /* loaded from: classes.dex */
    public class u implements e.i.b.b.d.g<Void, Boolean> {
        u(k kVar) {
        }

        @Override // e.i.b.b.d.g
        @NonNull
        public e.i.b.b.d.h<Boolean> a(@Nullable Void r1) {
            return e.i.b.b.d.k.a(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CrashlyticsController.java */
    /* loaded from: classes.dex */
    public class v implements e.i.b.b.d.g<Boolean, Void> {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ e.i.b.b.d.h f14509a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ float f14510b;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: CrashlyticsController.java */
        /* loaded from: classes.dex */
        public class a implements Callable<e.i.b.b.d.h<Void>> {

            /* renamed from: e, reason: collision with root package name */
            final /* synthetic */ Boolean f14512e;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: CrashlyticsController.java */
            /* renamed from: com.google.firebase.crashlytics.d.h.k$v$a$a, reason: collision with other inner class name */
            /* loaded from: classes.dex */
            public class C0114a implements e.i.b.b.d.g<com.google.firebase.crashlytics.d.o.i.b, Void> {

                /* renamed from: a, reason: collision with root package name */
                final /* synthetic */ List f14514a;

                /* renamed from: b, reason: collision with root package name */
                final /* synthetic */ boolean f14515b;

                /* renamed from: c, reason: collision with root package name */
                final /* synthetic */ Executor f14516c;

                C0114a(List list, boolean z, Executor executor) {
                    this.f14514a = list;
                    this.f14515b = z;
                    this.f14516c = executor;
                }

                @Override // e.i.b.b.d.g
                @NonNull
                public e.i.b.b.d.h<Void> a(@Nullable com.google.firebase.crashlytics.d.o.i.b bVar) {
                    if (bVar == null) {
                        com.google.firebase.crashlytics.d.b.a().d("Received null app settings, cannot send reports during app startup.");
                        return e.i.b.b.d.k.a((Object) null);
                    }
                    for (com.google.firebase.crashlytics.d.m.c.c cVar : this.f14514a) {
                        if (cVar.getType() == c.a.JAVA) {
                            k.b(bVar.f14712e, cVar.c());
                        }
                    }
                    k.this.x();
                    k.this.f14452k.a(bVar).a(this.f14514a, this.f14515b, v.this.f14510b);
                    k.this.t.a(this.f14516c, com.google.firebase.crashlytics.d.h.u.getState(bVar));
                    k.this.x.b((e.i.b.b.d.i<Void>) null);
                    return e.i.b.b.d.k.a((Object) null);
                }
            }

            a(Boolean bool) {
                this.f14512e = bool;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public e.i.b.b.d.h<Void> call() {
                List<com.google.firebase.crashlytics.d.m.c.c> b2 = k.this.n.b();
                if (!this.f14512e.booleanValue()) {
                    com.google.firebase.crashlytics.d.b.a().a("Reports are being deleted.");
                    k.c(k.this.j());
                    k.this.n.a(b2);
                    k.this.t.a();
                    k.this.x.b((e.i.b.b.d.i<Void>) null);
                    return e.i.b.b.d.k.a((Object) null);
                }
                com.google.firebase.crashlytics.d.b.a().a("Reports are being sent.");
                boolean booleanValue = this.f14512e.booleanValue();
                k.this.f14444c.a(booleanValue);
                Executor b3 = k.this.f14447f.b();
                return v.this.f14509a.a(b3, new C0114a(b2, booleanValue, b3));
            }
        }

        v(e.i.b.b.d.h hVar, float f2) {
            this.f14509a = hVar;
            this.f14510b = f2;
        }

        @Override // e.i.b.b.d.g
        @NonNull
        public e.i.b.b.d.h<Void> a(@Nullable Boolean bool) {
            return k.this.f14447f.b(new a(bool));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CrashlyticsController.java */
    /* loaded from: classes.dex */
    public class w implements b.InterfaceC0118b {
        w() {
        }

        @Override // com.google.firebase.crashlytics.d.m.b.InterfaceC0118b
        public com.google.firebase.crashlytics.d.m.b a(@NonNull com.google.firebase.crashlytics.d.o.i.b bVar) {
            String str = bVar.f14710c;
            String str2 = bVar.f14711d;
            return new com.google.firebase.crashlytics.d.m.b(bVar.f14712e, k.this.f14451j.f14401a, com.google.firebase.crashlytics.d.h.u.getState(bVar), k.this.n, k.this.b(str, str2), k.this.o);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: CrashlyticsController.java */
    /* loaded from: classes.dex */
    public static class x implements FilenameFilter {
        private x() {
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return !k.B.accept(file, str) && k.E.matcher(str).matches();
        }

        /* synthetic */ x(C0113k c0113k) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: CrashlyticsController.java */
    /* loaded from: classes.dex */
    public interface y {
        void a(com.google.firebase.crashlytics.d.l.c cVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CrashlyticsController.java */
    /* loaded from: classes.dex */
    public static class z implements FilenameFilter {

        /* renamed from: a, reason: collision with root package name */
        private final String f14519a;

        public z(String str) {
            this.f14519a = str;
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return str.contains(this.f14519a) && !str.endsWith(".cls_temp");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(Context context, com.google.firebase.crashlytics.d.h.i iVar, com.google.firebase.crashlytics.d.j.c cVar, com.google.firebase.crashlytics.d.h.y yVar, com.google.firebase.crashlytics.d.h.t tVar, com.google.firebase.crashlytics.d.k.h hVar, com.google.firebase.crashlytics.d.h.n nVar, com.google.firebase.crashlytics.d.h.b bVar, com.google.firebase.crashlytics.d.m.a aVar, b.InterfaceC0118b interfaceC0118b, com.google.firebase.crashlytics.d.a aVar2, com.google.firebase.crashlytics.d.f.a aVar3, com.google.firebase.crashlytics.d.o.e eVar) {
        this.f14443b = context;
        this.f14447f = iVar;
        this.f14448g = cVar;
        this.f14449h = yVar;
        this.f14444c = tVar;
        this.f14450i = hVar;
        this.f14445d = nVar;
        this.f14451j = bVar;
        if (interfaceC0118b != null) {
            this.f14452k = interfaceC0118b;
        } else {
            this.f14452k = q();
        }
        this.p = aVar2;
        this.r = bVar.f14407g.a();
        this.s = aVar3;
        this.f14446e = new j0();
        this.f14453l = new b0(hVar);
        this.m = new com.google.firebase.crashlytics.d.i.b(context, this.f14453l);
        C0113k c0113k = null;
        this.n = aVar == null ? new com.google.firebase.crashlytics.d.m.a(new c0(this, c0113k)) : aVar;
        this.o = new d0(this, c0113k);
        this.q = new com.google.firebase.crashlytics.d.p.a(1024, new com.google.firebase.crashlytics.d.p.c(10));
        this.t = h0.a(context, yVar, hVar, bVar, this.m, this.f14446e, this.q, eVar);
    }

    private static File[] d(File[] fileArr) {
        return fileArr == null ? new File[0] : fileArr;
    }

    private b.InterfaceC0118b q() {
        return new w();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r() {
        long v2 = v();
        String gVar = new com.google.firebase.crashlytics.d.h.g(this.f14449h).toString();
        com.google.firebase.crashlytics.d.b.a().a("Opening a new session with ID " + gVar);
        this.p.d(gVar);
        a(gVar, v2);
        g(gVar);
        i(gVar);
        h(gVar);
        this.m.a(gVar);
        this.t.a(f(gVar), v2);
    }

    private static boolean s() {
        try {
            Class.forName("com.google.firebase.crash.FirebaseCrash");
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    private Context t() {
        return this.f14443b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    public String u() {
        File[] w2 = w();
        if (w2.length > 0) {
            return a(w2[0]);
        }
        return null;
    }

    private static long v() {
        return b(new Date());
    }

    private File[] w() {
        File[] m2 = m();
        Arrays.sort(m2, C);
        return m2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public e.i.b.b.d.h<Void> x() {
        ArrayList arrayList = new ArrayList();
        for (File file : j()) {
            try {
                arrayList.add(b(Long.parseLong(file.getName().substring(3))));
            } catch (NumberFormatException unused) {
                com.google.firebase.crashlytics.d.b.a().a("Could not parse timestamp from file " + file.getName());
            }
            file.delete();
        }
        return e.i.b.b.d.k.a((Collection<? extends e.i.b.b.d.h<?>>) arrayList);
    }

    private e.i.b.b.d.h<Boolean> y() {
        if (this.f14444c.a()) {
            com.google.firebase.crashlytics.d.b.a().a("Automatic data collection is enabled. Allowing upload.");
            this.v.b((e.i.b.b.d.i<Boolean>) false);
            return e.i.b.b.d.k.a(true);
        }
        com.google.firebase.crashlytics.d.b.a().a("Automatic data collection is disabled.");
        com.google.firebase.crashlytics.d.b.a().a("Notifying that unsent reports are available.");
        this.v.b((e.i.b.b.d.i<Boolean>) true);
        e.i.b.b.d.h<TContinuationResult> a2 = this.f14444c.b().a(new u(this));
        com.google.firebase.crashlytics.d.b.a().a("Waiting for send/deleteUnsentReports to be called.");
        return l0.a(a2, this.w.a());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e.i.b.b.d.h<Void> o() {
        this.w.b((e.i.b.b.d.i<Boolean>) true);
        return this.x.a();
    }

    private File[] e(String str) {
        return a(new f0(str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    @NonNull
    public static String f(@NonNull String str) {
        return str.replaceAll("-", "");
    }

    private void g(String str) {
        String b2 = this.f14449h.b();
        com.google.firebase.crashlytics.d.h.b bVar = this.f14451j;
        String str2 = bVar.f14405e;
        String str3 = bVar.f14406f;
        String a2 = this.f14449h.a();
        int id = com.google.firebase.crashlytics.d.h.v.determineFrom(this.f14451j.f14403c).getId();
        a(str, "SessionApp", new i(b2, str2, str3, a2, id));
        this.p.a(str, b2, str2, str3, a2, id, this.r);
    }

    private void h(String str) {
        Context t2 = t();
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        int a2 = com.google.firebase.crashlytics.d.h.h.a();
        String str2 = Build.MODEL;
        int availableProcessors = Runtime.getRuntime().availableProcessors();
        long b2 = com.google.firebase.crashlytics.d.h.h.b();
        long blockCount = statFs.getBlockCount() * statFs.getBlockSize();
        boolean j2 = com.google.firebase.crashlytics.d.h.h.j(t2);
        int c2 = com.google.firebase.crashlytics.d.h.h.c(t2);
        String str3 = Build.MANUFACTURER;
        String str4 = Build.PRODUCT;
        a(str, "SessionDevice", new l(this, a2, str2, availableProcessors, b2, blockCount, j2, c2, str3, str4));
        this.p.a(str, a2, str2, availableProcessors, b2, blockCount, j2, c2, str3, str4);
    }

    private void i(String str) {
        String str2 = Build.VERSION.RELEASE;
        String str3 = Build.VERSION.CODENAME;
        boolean k2 = com.google.firebase.crashlytics.d.h.h.k(t());
        a(str, "SessionOS", new j(this, str2, str3, k2));
        this.p.a(str, str2, str3, k2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e.i.b.b.d.h<Void> c() {
        this.w.b((e.i.b.b.d.i<Boolean>) false);
        return this.x.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean d() {
        if (!this.f14445d.b()) {
            String u2 = u();
            return u2 != null && this.p.c(u2);
        }
        com.google.firebase.crashlytics.d.b.a().a("Found previous crash marker.");
        this.f14445d.c();
        return Boolean.TRUE.booleanValue();
    }

    File[] j() {
        return a(A);
    }

    File[] k() {
        LinkedList linkedList = new LinkedList();
        Collections.addAll(linkedList, a(e(), B));
        Collections.addAll(linkedList, a(h(), B));
        Collections.addAll(linkedList, a(f(), B));
        return (File[]) linkedList.toArray(new File[linkedList.size()]);
    }

    File[] l() {
        return d(g().listFiles());
    }

    File[] m() {
        return a(z);
    }

    void n() {
        this.f14447f.a(new e());
    }

    private void j(String str) {
        a(str, "SessionUser", new m(this, d(str)));
    }

    File e() {
        return new File(f(), "fatal-sessions");
    }

    File f() {
        return this.f14450i.b();
    }

    void c(int i2) {
        int a2 = i2 - l0.a(g(), e(), i2, D);
        l0.a(f(), B, a2 - l0.a(h(), a2, D), D);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b(int i2) {
        this.f14447f.a();
        if (i()) {
            com.google.firebase.crashlytics.d.b.a().a("Skipping session finalization because a crash has already occurred.");
            return Boolean.FALSE.booleanValue();
        }
        com.google.firebase.crashlytics.d.b.a().a("Finalizing previously open sessions.");
        try {
            a(i2, true);
            com.google.firebase.crashlytics.d.b.a().a("Closed all previously open sessions");
            return true;
        } catch (Exception e2) {
            com.google.firebase.crashlytics.d.b.a().b("Unable to finalize previously open sessions.", e2);
            return false;
        }
    }

    boolean i() {
        com.google.firebase.crashlytics.d.h.r rVar = this.u;
        return rVar != null && rVar.a();
    }

    private void d(int i2) {
        HashSet hashSet = new HashSet();
        File[] w2 = w();
        int min = Math.min(i2, w2.length);
        for (int i3 = 0; i3 < min; i3++) {
            hashSet.add(a(w2[i3]));
        }
        this.m.a(hashSet);
        a(a(new x(null)), hashSet);
    }

    private void c(String str) {
        com.google.firebase.crashlytics.d.b.a().a("Finalizing native report for session " + str);
        com.google.firebase.crashlytics.d.d b2 = this.p.b(str);
        File d2 = b2.d();
        if (d2 != null && d2.exists()) {
            long lastModified = d2.lastModified();
            com.google.firebase.crashlytics.d.i.b bVar = new com.google.firebase.crashlytics.d.i.b(this.f14443b, this.f14453l, str);
            File file = new File(g(), str);
            if (!file.mkdirs()) {
                com.google.firebase.crashlytics.d.b.a().a("Couldn't create native sessions directory");
                return;
            }
            a(lastModified);
            List<com.google.firebase.crashlytics.d.h.c0> a2 = a(b2, str, t(), f(), bVar.b());
            com.google.firebase.crashlytics.d.h.d0.a(file, a2);
            this.t.a(f(str), a2);
            bVar.a();
            return;
        }
        com.google.firebase.crashlytics.d.b.a().d("No minidump data found for session " + str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Thread.UncaughtExceptionHandler uncaughtExceptionHandler, com.google.firebase.crashlytics.d.o.e eVar) {
        n();
        this.u = new com.google.firebase.crashlytics.d.h.r(new s(), eVar, uncaughtExceptionHandler);
        Thread.setDefaultUncaughtExceptionHandler(this.u);
    }

    File g() {
        return new File(f(), "native-sessions");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        this.f14447f.a(new f());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long b(Date date) {
        return date.getTime() / 1000;
    }

    synchronized void a(@NonNull com.google.firebase.crashlytics.d.o.e eVar, @NonNull Thread thread, @NonNull Throwable th) {
        com.google.firebase.crashlytics.d.b.a().a("Crashlytics is handling uncaught exception \"" + th + "\" from thread " + thread.getName());
        try {
            l0.a(this.f14447f.b(new t(new Date(), th, thread, eVar)));
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(@NonNull Thread thread, @NonNull Throwable th, @NonNull String str, long j2) {
        com.google.firebase.crashlytics.d.l.b bVar;
        com.google.firebase.crashlytics.d.l.c a2;
        com.google.firebase.crashlytics.d.l.c cVar = null;
        r1 = null;
        com.google.firebase.crashlytics.d.l.c cVar2 = null;
        cVar = null;
        try {
            try {
                com.google.firebase.crashlytics.d.b.a().a("Crashlytics is logging non-fatal exception \"" + th + "\" from thread " + thread.getName());
                bVar = new com.google.firebase.crashlytics.d.l.b(f(), str + "SessionEvent" + com.google.firebase.crashlytics.d.h.h.a(this.f14442a.getAndIncrement()));
                try {
                    a2 = com.google.firebase.crashlytics.d.l.c.a(bVar);
                } catch (Exception e2) {
                    e = e2;
                }
            } catch (Throwable th2) {
                th = th2;
            }
            try {
                k kVar = this;
                kVar.a(a2, thread, th, j2, HummerConstants.HUMMER_ERROR, false);
                com.google.firebase.crashlytics.d.h.h.a(a2, "Failed to flush to non-fatal file.");
                cVar = kVar;
            } catch (Exception e3) {
                e = e3;
                cVar2 = a2;
                com.google.firebase.crashlytics.d.b.a().b("An error occurred in the non-fatal exception logger", e);
                com.google.firebase.crashlytics.d.h.h.a(cVar2, "Failed to flush to non-fatal file.");
                cVar = cVar2;
                com.google.firebase.crashlytics.d.h.h.a((Closeable) bVar, "Failed to close non-fatal file output stream.");
                a(str, 64);
            } catch (Throwable th3) {
                th = th3;
                cVar = a2;
                com.google.firebase.crashlytics.d.h.h.a(cVar, "Failed to flush to non-fatal file.");
                com.google.firebase.crashlytics.d.h.h.a((Closeable) bVar, "Failed to close non-fatal file output stream.");
                throw th;
            }
        } catch (Exception e4) {
            e = e4;
            bVar = null;
        } catch (Throwable th4) {
            th = th4;
            bVar = null;
        }
        com.google.firebase.crashlytics.d.h.h.a((Closeable) bVar, "Failed to close non-fatal file output stream.");
        try {
            a(str, 64);
        } catch (Exception e5) {
            com.google.firebase.crashlytics.d.b.a().b("An error occurred when trimming non-fatal files.", e5);
        }
    }

    private j0 d(String str) {
        if (i()) {
            return this.f14446e;
        }
        return new com.google.firebase.crashlytics.d.h.b0(f()).c(str);
    }

    File h() {
        return new File(f(), "nonfatal-sessions");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public e.i.b.b.d.h<Boolean> a() {
        if (!this.y.compareAndSet(false, true)) {
            com.google.firebase.crashlytics.d.b.a().a("checkForUnsentReports should only be called once per execution.");
            return e.i.b.b.d.k.a(false);
        }
        return this.v.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e.i.b.b.d.h<Void> a(float f2, e.i.b.b.d.h<com.google.firebase.crashlytics.d.o.i.b> hVar) {
        if (!this.n.a()) {
            com.google.firebase.crashlytics.d.b.a().a("No reports are available.");
            this.v.b((e.i.b.b.d.i<Boolean>) false);
            return e.i.b.b.d.k.a((Object) null);
        }
        com.google.firebase.crashlytics.d.b.a().a("Unsent reports are available.");
        return y().a(new v(hVar, f2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c(File[] fileArr) {
        if (fileArr == null) {
            return;
        }
        for (File file : fileArr) {
            file.delete();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(@Nullable String str, @NonNull File file) {
        if (str == null) {
            return;
        }
        a(file, new n(str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(long j2, String str) {
        this.f14447f.a(new a(j2, str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.google.firebase.crashlytics.d.m.d.b b(String str, String str2) {
        String b2 = com.google.firebase.crashlytics.d.h.h.b(t(), "com.crashlytics.ApiEndpoint");
        return new com.google.firebase.crashlytics.d.m.d.a(new com.google.firebase.crashlytics.d.m.d.c(b2, str, this.f14448g, com.google.firebase.crashlytics.d.h.m.i()), new com.google.firebase.crashlytics.d.m.d.d(b2, str2, this.f14448g, com.google.firebase.crashlytics.d.h.m.i()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@NonNull Thread thread, @NonNull Throwable th) {
        this.f14447f.a(new b(new Date(), th, thread));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str) {
        this.f14446e.a(str);
        a(this.f14446e);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str, String str2) {
        try {
            this.f14446e.a(str, str2);
            a(this.f14446e.a());
        } catch (IllegalArgumentException e2) {
            Context context = this.f14443b;
            if (context != null && com.google.firebase.crashlytics.d.h.h.i(context)) {
                throw e2;
            }
            com.google.firebase.crashlytics.d.b.a().b("Attempting to set custom attribute with null key, ignoring.");
        }
    }

    private e.i.b.b.d.h<Void> b(long j2) {
        if (s()) {
            com.google.firebase.crashlytics.d.b.a().a("Skipping logging Crashlytics event to Firebase, FirebaseCrash exists");
            return e.i.b.b.d.k.a((Object) null);
        }
        return e.i.b.b.d.k.a(new ScheduledThreadPoolExecutor(1), new o(j2));
    }

    private void a(j0 j0Var) {
        this.f14447f.a(new c(j0Var));
    }

    private void a(Map<String, String> map) {
        this.f14447f.a(new d(map));
    }

    static String a(File file) {
        return file.getName().substring(0, 35);
    }

    void a(int i2) {
        a(i2, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void a(int i2, boolean z2) {
        d((z2 ? 1 : 0) + 8);
        File[] w2 = w();
        if (w2.length <= z2) {
            com.google.firebase.crashlytics.d.b.a().a("No open sessions to be closed.");
            return;
        }
        String a2 = a(w2[z2 ? 1 : 0]);
        j(a2);
        if (this.p.c(a2)) {
            c(a2);
            if (!this.p.a(a2)) {
                com.google.firebase.crashlytics.d.b.a().a("Could not finalize native session: " + a2);
            }
        }
        a(w2, z2 ? 1 : 0, i2);
        this.t.a(v(), z2 != 0 ? f(a(w2[0])) : null);
    }

    private void a(File[] fileArr, int i2, int i3) {
        com.google.firebase.crashlytics.d.b.a().a("Closing open sessions.");
        while (i2 < fileArr.length) {
            File file = fileArr[i2];
            String a2 = a(file);
            com.google.firebase.crashlytics.d.b.a().a("Closing session: " + a2);
            a(file, a2, i3);
            i2++;
        }
    }

    private void a(com.google.firebase.crashlytics.d.l.b bVar) {
        if (bVar == null) {
            return;
        }
        try {
            bVar.i();
        } catch (IOException e2) {
            com.google.firebase.crashlytics.d.b.a().b("Error closing session file stream in the presence of an exception", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public File[] a(FilenameFilter filenameFilter) {
        return a(f(), filenameFilter);
    }

    private static File[] a(File file, FilenameFilter filenameFilter) {
        return d(file.listFiles(filenameFilter));
    }

    private void a(String str, int i2) {
        l0.a(f(), new z(str + "SessionEvent"), i2, D);
    }

    private void a(File[] fileArr, Set<String> set) {
        for (File file : fileArr) {
            String name = file.getName();
            Matcher matcher = E.matcher(name);
            if (!matcher.matches()) {
                com.google.firebase.crashlytics.d.b.a().a("Deleting unknown file: " + name);
                file.delete();
            } else if (!set.contains(matcher.group(1))) {
                com.google.firebase.crashlytics.d.b.a().a("Trimming session file: " + name);
                file.delete();
            }
        }
    }

    private File[] a(String str, File[] fileArr, int i2) {
        if (fileArr.length <= i2) {
            return fileArr;
        }
        com.google.firebase.crashlytics.d.b.a().a(String.format(Locale.US, "Trimming down to %d logged exceptions.", Integer.valueOf(i2)));
        a(str, i2);
        return a(new z(str + "SessionEvent"));
    }

    void a(File[] fileArr) {
        HashSet hashSet = new HashSet();
        for (File file : fileArr) {
            com.google.firebase.crashlytics.d.b.a().a("Found invalid session part file: " + file);
            hashSet.add(a(file));
        }
        if (hashSet.isEmpty()) {
            return;
        }
        for (File file2 : a(new g(this, hashSet))) {
            com.google.firebase.crashlytics.d.b.a().a("Deleting invalid session file: " + file2);
            file2.delete();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(@NonNull Thread thread, @NonNull Throwable th, @NonNull String str, long j2) {
        com.google.firebase.crashlytics.d.l.b bVar;
        com.google.firebase.crashlytics.d.l.c cVar = null;
        try {
            try {
                bVar = new com.google.firebase.crashlytics.d.l.b(f(), str + "SessionCrash");
                try {
                    cVar = com.google.firebase.crashlytics.d.l.c.a(bVar);
                    a(cVar, thread, th, j2, "crash", true);
                } catch (Exception e2) {
                    e = e2;
                    com.google.firebase.crashlytics.d.b.a().b("An error occurred in the fatal exception logger", e);
                    com.google.firebase.crashlytics.d.h.h.a(cVar, "Failed to flush to session begin file.");
                    com.google.firebase.crashlytics.d.h.h.a((Closeable) bVar, "Failed to close fatal exception file output stream.");
                }
            } catch (Throwable th2) {
                th = th2;
                com.google.firebase.crashlytics.d.h.h.a(cVar, "Failed to flush to session begin file.");
                com.google.firebase.crashlytics.d.h.h.a((Closeable) bVar, "Failed to close fatal exception file output stream.");
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
            bVar = null;
        } catch (Throwable th3) {
            th = th3;
            bVar = null;
            com.google.firebase.crashlytics.d.h.h.a(cVar, "Failed to flush to session begin file.");
            com.google.firebase.crashlytics.d.h.h.a((Closeable) bVar, "Failed to close fatal exception file output stream.");
            throw th;
        }
        com.google.firebase.crashlytics.d.h.h.a(cVar, "Failed to flush to session begin file.");
        com.google.firebase.crashlytics.d.h.h.a((Closeable) bVar, "Failed to close fatal exception file output stream.");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(long j2) {
        try {
            new File(f(), ".ae" + j2).createNewFile();
        } catch (IOException unused) {
            com.google.firebase.crashlytics.d.b.a().a("Could not write app exception marker.");
        }
    }

    private void a(String str, String str2, y yVar) {
        com.google.firebase.crashlytics.d.l.b bVar;
        com.google.firebase.crashlytics.d.l.c cVar = null;
        try {
            bVar = new com.google.firebase.crashlytics.d.l.b(f(), str + str2);
            try {
                cVar = com.google.firebase.crashlytics.d.l.c.a(bVar);
                yVar.a(cVar);
                com.google.firebase.crashlytics.d.h.h.a(cVar, "Failed to flush to session " + str2 + " file.");
                com.google.firebase.crashlytics.d.h.h.a((Closeable) bVar, "Failed to close session " + str2 + " file.");
            } catch (Throwable th) {
                th = th;
                com.google.firebase.crashlytics.d.h.h.a(cVar, "Failed to flush to session " + str2 + " file.");
                com.google.firebase.crashlytics.d.h.h.a((Closeable) bVar, "Failed to close session " + str2 + " file.");
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            bVar = null;
        }
    }

    private static void a(@NonNull File file, @NonNull y yVar) {
        FileOutputStream fileOutputStream;
        com.google.firebase.crashlytics.d.l.c cVar = null;
        try {
            fileOutputStream = new FileOutputStream(file, true);
        } catch (Throwable th) {
            th = th;
            fileOutputStream = null;
        }
        try {
            cVar = com.google.firebase.crashlytics.d.l.c.a(fileOutputStream);
            yVar.a(cVar);
            com.google.firebase.crashlytics.d.h.h.a(cVar, "Failed to flush to append to " + file.getPath());
            com.google.firebase.crashlytics.d.h.h.a((Closeable) fileOutputStream, "Failed to close " + file.getPath());
        } catch (Throwable th2) {
            th = th2;
            com.google.firebase.crashlytics.d.h.h.a(cVar, "Failed to flush to append to " + file.getPath());
            com.google.firebase.crashlytics.d.h.h.a((Closeable) fileOutputStream, "Failed to close " + file.getPath());
            throw th;
        }
    }

    private void a(String str, long j2) {
        String format = String.format(Locale.US, "Crashlytics Android SDK/%s", com.google.firebase.crashlytics.d.h.m.i());
        a(str, "BeginSession", new h(this, str, format, j2));
        this.p.a(str, format, j2);
    }

    private void a(com.google.firebase.crashlytics.d.l.c cVar, Thread thread, Throwable th, long j2, String str, boolean z2) {
        Thread[] threadArr;
        Map<String, String> a2;
        Map<String, String> treeMap;
        com.google.firebase.crashlytics.d.p.e eVar = new com.google.firebase.crashlytics.d.p.e(th, this.q);
        Context t2 = t();
        com.google.firebase.crashlytics.d.h.e a3 = com.google.firebase.crashlytics.d.h.e.a(t2);
        Float a4 = a3.a();
        int b2 = a3.b();
        boolean f2 = com.google.firebase.crashlytics.d.h.h.f(t2);
        int i2 = t2.getResources().getConfiguration().orientation;
        long b3 = com.google.firebase.crashlytics.d.h.h.b() - com.google.firebase.crashlytics.d.h.h.a(t2);
        long a5 = com.google.firebase.crashlytics.d.h.h.a(Environment.getDataDirectory().getPath());
        ActivityManager.RunningAppProcessInfo a6 = com.google.firebase.crashlytics.d.h.h.a(t2.getPackageName(), t2);
        LinkedList linkedList = new LinkedList();
        StackTraceElement[] stackTraceElementArr = eVar.f14741c;
        String str2 = this.f14451j.f14402b;
        String b4 = this.f14449h.b();
        int i3 = 0;
        if (z2) {
            Map<Thread, StackTraceElement[]> allStackTraces = Thread.getAllStackTraces();
            Thread[] threadArr2 = new Thread[allStackTraces.size()];
            for (Map.Entry<Thread, StackTraceElement[]> entry : allStackTraces.entrySet()) {
                threadArr2[i3] = entry.getKey();
                linkedList.add(this.q.a(entry.getValue()));
                i3++;
            }
            threadArr = threadArr2;
        } else {
            threadArr = new Thread[0];
        }
        if (!com.google.firebase.crashlytics.d.h.h.a(t2, "com.crashlytics.CollectCustomKeys", true)) {
            a2 = new TreeMap<>();
        } else {
            a2 = this.f14446e.a();
            if (a2 != null && a2.size() > 1) {
                treeMap = new TreeMap(a2);
                com.google.firebase.crashlytics.d.l.d.a(cVar, j2, str, eVar, thread, stackTraceElementArr, threadArr, linkedList, 8, treeMap, this.m.b(), a6, i2, b4, str2, a4, b2, f2, b3, a5);
                this.m.a();
            }
        }
        treeMap = a2;
        com.google.firebase.crashlytics.d.l.d.a(cVar, j2, str, eVar, thread, stackTraceElementArr, threadArr, linkedList, 8, treeMap, this.m.b(), a6, i2, b4, str2, a4, b2, f2, b3, a5);
        this.m.a();
    }

    private void a(File file, String str, int i2) {
        com.google.firebase.crashlytics.d.b.a().a("Collecting session parts for ID " + str);
        File[] a2 = a(new z(str + "SessionCrash"));
        boolean z2 = a2 != null && a2.length > 0;
        com.google.firebase.crashlytics.d.b.a().a(String.format(Locale.US, "Session %s has fatal exception: %s", str, Boolean.valueOf(z2)));
        File[] a3 = a(new z(str + "SessionEvent"));
        boolean z3 = a3 != null && a3.length > 0;
        com.google.firebase.crashlytics.d.b.a().a(String.format(Locale.US, "Session %s has non-fatal exceptions: %s", str, Boolean.valueOf(z3)));
        if (!z2 && !z3) {
            com.google.firebase.crashlytics.d.b.a().a("No events present for session ID " + str);
        } else {
            a(file, str, a(str, a3, i2), z2 ? a2[0] : null);
        }
        com.google.firebase.crashlytics.d.b.a().a("Removing session part files for ID " + str);
        c(e(str));
    }

    private void a(File file, String str, File[] fileArr, File file2) {
        com.google.firebase.crashlytics.d.l.b bVar;
        boolean z2 = file2 != null;
        File e2 = z2 ? e() : h();
        if (!e2.exists()) {
            e2.mkdirs();
        }
        com.google.firebase.crashlytics.d.l.c cVar = null;
        try {
            try {
                bVar = new com.google.firebase.crashlytics.d.l.b(e2, str);
                try {
                    cVar = com.google.firebase.crashlytics.d.l.c.a(bVar);
                    com.google.firebase.crashlytics.d.b.a().a("Collecting SessionStart data for session ID " + str);
                    a(cVar, file);
                    cVar.a(4, v());
                    cVar.a(5, z2);
                    cVar.d(11, 1);
                    cVar.a(12, 3);
                    a(cVar, str);
                    a(cVar, fileArr, str);
                    if (z2) {
                        a(cVar, file2);
                    }
                    com.google.firebase.crashlytics.d.h.h.a(cVar, "Error flushing session file stream");
                    com.google.firebase.crashlytics.d.h.h.a((Closeable) bVar, "Failed to close CLS file");
                } catch (Exception e3) {
                    e = e3;
                    com.google.firebase.crashlytics.d.b.a().b("Failed to write session file for session ID: " + str, e);
                    com.google.firebase.crashlytics.d.h.h.a(cVar, "Error flushing session file stream");
                    a(bVar);
                }
            } catch (Throwable th) {
                th = th;
                com.google.firebase.crashlytics.d.h.h.a((Flushable) null, "Error flushing session file stream");
                com.google.firebase.crashlytics.d.h.h.a((Closeable) null, "Failed to close CLS file");
                throw th;
            }
        } catch (Exception e4) {
            e = e4;
            bVar = null;
        } catch (Throwable th2) {
            th = th2;
            com.google.firebase.crashlytics.d.h.h.a((Flushable) null, "Error flushing session file stream");
            com.google.firebase.crashlytics.d.h.h.a((Closeable) null, "Failed to close CLS file");
            throw th;
        }
    }

    private static void a(com.google.firebase.crashlytics.d.l.c cVar, File[] fileArr, String str) {
        Arrays.sort(fileArr, com.google.firebase.crashlytics.d.h.h.f14424c);
        for (File file : fileArr) {
            try {
                com.google.firebase.crashlytics.d.b.a().a(String.format(Locale.US, "Found Non Fatal for session ID %s in %s ", str, file.getName()));
                a(cVar, file);
            } catch (Exception e2) {
                com.google.firebase.crashlytics.d.b.a().b("Error writting non-fatal to session.", e2);
            }
        }
    }

    private void a(com.google.firebase.crashlytics.d.l.c cVar, String str) {
        for (String str2 : G) {
            File[] a2 = a(new z(str + str2 + ".cls"));
            if (a2.length == 0) {
                com.google.firebase.crashlytics.d.b.a().a("Can't find " + str2 + " data for session ID " + str);
            } else {
                com.google.firebase.crashlytics.d.b.a().a("Collecting " + str2 + " data for session ID " + str);
                a(cVar, a2[0]);
            }
        }
    }

    private static void a(com.google.firebase.crashlytics.d.l.c cVar, File file) {
        if (!file.exists()) {
            com.google.firebase.crashlytics.d.b.a().b("Tried to include a file that doesn't exist: " + file.getName());
            return;
        }
        FileInputStream fileInputStream = null;
        try {
            FileInputStream fileInputStream2 = new FileInputStream(file);
            try {
                a(fileInputStream2, cVar, (int) file.length());
                com.google.firebase.crashlytics.d.h.h.a(fileInputStream2, "Failed to close file input stream.");
            } catch (Throwable th) {
                th = th;
                fileInputStream = fileInputStream2;
                com.google.firebase.crashlytics.d.h.h.a(fileInputStream, "Failed to close file input stream.");
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private static void a(InputStream inputStream, com.google.firebase.crashlytics.d.l.c cVar, int i2) {
        int read;
        byte[] bArr = new byte[i2];
        int i3 = 0;
        while (i3 < bArr.length && (read = inputStream.read(bArr, i3, bArr.length - i3)) >= 0) {
            i3 += read;
        }
        cVar.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(@NonNull com.google.firebase.crashlytics.d.o.i.b bVar, boolean z2) {
        Context t2 = t();
        com.google.firebase.crashlytics.d.m.b a2 = this.f14452k.a(bVar);
        for (File file : k()) {
            b(bVar.f14712e, file);
            this.f14447f.a(new e0(t2, new com.google.firebase.crashlytics.d.m.c.d(file, F), a2, z2));
        }
    }

    @NonNull
    static List<com.google.firebase.crashlytics.d.h.c0> a(com.google.firebase.crashlytics.d.d dVar, String str, Context context, File file, byte[] bArr) {
        com.google.firebase.crashlytics.d.h.b0 b0Var = new com.google.firebase.crashlytics.d.h.b0(file);
        File b2 = b0Var.b(str);
        File a2 = b0Var.a(str);
        ArrayList arrayList = new ArrayList();
        arrayList.add(new com.google.firebase.crashlytics.d.h.f("logs_file", "logs", bArr));
        arrayList.add(new com.google.firebase.crashlytics.d.h.x("crash_meta_file", "metadata", dVar.f()));
        arrayList.add(new com.google.firebase.crashlytics.d.h.x("session_meta_file", "session", dVar.e()));
        arrayList.add(new com.google.firebase.crashlytics.d.h.x("app_meta_file", "app", dVar.a()));
        arrayList.add(new com.google.firebase.crashlytics.d.h.x("device_meta_file", "device", dVar.c()));
        arrayList.add(new com.google.firebase.crashlytics.d.h.x("os_meta_file", "os", dVar.b()));
        arrayList.add(new com.google.firebase.crashlytics.d.h.x("minidump_file", "minidump", dVar.d()));
        arrayList.add(new com.google.firebase.crashlytics.d.h.x("user_meta_file", "user", b2));
        arrayList.add(new com.google.firebase.crashlytics.d.h.x("keys_file", "keys", a2));
        return arrayList;
    }
}
