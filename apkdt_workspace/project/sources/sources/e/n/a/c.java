package e.n.a;

import android.annotation.SuppressLint;
import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteCantOpenDatabaseException;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import com.alipay.mobile.security.bio.utils.HanziToPinyin;
import com.ap.zoloz.hummer.h5.H5PluginHandler;
import g.a.c.a.j;
import g.a.c.a.k;
import io.flutter.embedding.engine.g.a;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: SqflitePlugin.java */
/* loaded from: classes2.dex */
public class c implements io.flutter.embedding.engine.g.a, k.c {
    static String m;
    private static HandlerThread o;
    private static Handler p;

    /* renamed from: e, reason: collision with root package name */
    private Context f18116e;

    /* renamed from: f, reason: collision with root package name */
    private k f18117f;

    /* renamed from: g, reason: collision with root package name */
    static final Map<String, Integer> f18110g = new HashMap();

    /* renamed from: h, reason: collision with root package name */
    private static boolean f18111h = false;

    /* renamed from: i, reason: collision with root package name */
    private static int f18112i = 10;

    /* renamed from: j, reason: collision with root package name */
    static int f18113j = 0;

    /* renamed from: k, reason: collision with root package name */
    private static final Object f18114k = new Object();

    /* renamed from: l, reason: collision with root package name */
    private static final Object f18115l = new Object();
    private static int n = 0;

    @SuppressLint({"UseSparseArrays"})
    static final Map<Integer, e.n.a.a> q = new HashMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SqflitePlugin.java */
    /* loaded from: classes2.dex */
    public class a implements Runnable {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ j f18118e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ i f18119f;

        /* renamed from: g, reason: collision with root package name */
        final /* synthetic */ e.n.a.a f18120g;

        a(j jVar, i iVar, e.n.a.a aVar) {
            this.f18118e = jVar;
            this.f18119f = iVar;
            this.f18120g = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            c.this.d(this.f18120g, new e.n.a.f.e(this.f18118e, this.f18119f));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SqflitePlugin.java */
    /* loaded from: classes2.dex */
    public class b implements Runnable {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ j f18122e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ i f18123f;

        /* renamed from: g, reason: collision with root package name */
        final /* synthetic */ e.n.a.a f18124g;

        b(j jVar, i iVar, e.n.a.a aVar) {
            this.f18122e = jVar;
            this.f18123f = iVar;
            this.f18124g = aVar;
        }

        /* JADX WARN: Removed duplicated region for block: B:19:0x00e6 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:34:0x006f A[SYNTHETIC] */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                Method dump skipped, instructions count: 290
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: e.n.a.c.b.run():void");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SqflitePlugin.java */
    /* renamed from: e.n.a.c$c, reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public class RunnableC0208c implements Runnable {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ j f18126e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ i f18127f;

        /* renamed from: g, reason: collision with root package name */
        final /* synthetic */ e.n.a.a f18128g;

        RunnableC0208c(j jVar, i iVar, e.n.a.a aVar) {
            this.f18126e = jVar;
            this.f18127f = iVar;
            this.f18128g = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            c.this.c(this.f18128g, new e.n.a.f.e(this.f18126e, this.f18127f));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SqflitePlugin.java */
    /* loaded from: classes2.dex */
    public class d implements Runnable {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ e.n.a.a f18130e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ j f18131f;

        /* renamed from: g, reason: collision with root package name */
        final /* synthetic */ i f18132g;

        d(e.n.a.a aVar, j jVar, i iVar) {
            this.f18130e = aVar;
            this.f18131f = jVar;
            this.f18132g = iVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (c.this.a(this.f18130e, this.f18131f, this.f18132g) == null) {
                return;
            }
            this.f18132g.a((Object) null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SqflitePlugin.java */
    /* loaded from: classes2.dex */
    public class e implements Runnable {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ j f18134e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ i f18135f;

        /* renamed from: g, reason: collision with root package name */
        final /* synthetic */ e.n.a.a f18136g;

        e(j jVar, i iVar, e.n.a.a aVar) {
            this.f18134e = jVar;
            this.f18135f = iVar;
            this.f18136g = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            c.this.e(this.f18136g, new e.n.a.f.e(this.f18134e, this.f18135f));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SqflitePlugin.java */
    /* loaded from: classes2.dex */
    public class f implements Runnable {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ boolean f18138e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ String f18139f;

        /* renamed from: g, reason: collision with root package name */
        final /* synthetic */ i f18140g;

        /* renamed from: h, reason: collision with root package name */
        final /* synthetic */ Boolean f18141h;

        /* renamed from: i, reason: collision with root package name */
        final /* synthetic */ e.n.a.a f18142i;

        /* renamed from: j, reason: collision with root package name */
        final /* synthetic */ j f18143j;

        /* renamed from: k, reason: collision with root package name */
        final /* synthetic */ boolean f18144k;

        /* renamed from: l, reason: collision with root package name */
        final /* synthetic */ int f18145l;

        f(boolean z, String str, i iVar, Boolean bool, e.n.a.a aVar, j jVar, boolean z2, int i2) {
            this.f18138e = z;
            this.f18139f = str;
            this.f18140g = iVar;
            this.f18141h = bool;
            this.f18142i = aVar;
            this.f18143j = jVar;
            this.f18144k = z2;
            this.f18145l = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (c.f18115l) {
                if (!this.f18138e) {
                    File file = new File(new File(this.f18139f).getParent());
                    if (!file.exists() && !file.mkdirs() && !file.exists()) {
                        this.f18140g.a("sqlite_error", "open_failed " + this.f18139f, null);
                        return;
                    }
                }
                try {
                    if (Boolean.TRUE.equals(this.f18141h)) {
                        this.f18142i.g();
                    } else {
                        this.f18142i.f();
                    }
                    synchronized (c.f18114k) {
                        if (this.f18144k) {
                            c.f18110g.put(this.f18139f, Integer.valueOf(this.f18145l));
                        }
                        c.q.put(Integer.valueOf(this.f18145l), this.f18142i);
                    }
                    if (e.n.a.b.a(this.f18142i.f18107d)) {
                        String str = this.f18142i.c() + "opened " + this.f18145l + HanziToPinyin.Token.SEPARATOR + this.f18139f;
                    }
                    this.f18140g.a(c.a(this.f18145l, false, false));
                } catch (Exception e2) {
                    c.this.a(e2, new e.n.a.f.e(this.f18143j, this.f18140g), this.f18142i);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SqflitePlugin.java */
    /* loaded from: classes2.dex */
    public class g implements Runnable {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ e.n.a.a f18146e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ i f18147f;

        g(e.n.a.a aVar, i iVar) {
            this.f18146e = aVar;
            this.f18147f = iVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (c.f18115l) {
                c.this.a(this.f18146e);
            }
            this.f18147f.a((Object) null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SqflitePlugin.java */
    /* loaded from: classes2.dex */
    public class h implements Runnable {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ e.n.a.a f18149e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ String f18150f;

        /* renamed from: g, reason: collision with root package name */
        final /* synthetic */ i f18151g;

        h(e.n.a.a aVar, String str, i iVar) {
            this.f18149e = aVar;
            this.f18150f = str;
            this.f18151g = iVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (c.f18115l) {
                if (this.f18149e != null) {
                    c.this.a(this.f18149e);
                }
                try {
                    if (e.n.a.b.b(c.f18113j)) {
                        String str = "delete database " + this.f18150f;
                    }
                    e.n.a.a.a(this.f18150f);
                } catch (Exception e2) {
                    String str2 = "error " + e2 + " while closing database " + c.n;
                }
            }
            this.f18151g.a((Object) null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SqflitePlugin.java */
    /* loaded from: classes2.dex */
    public class i implements k.d {

        /* renamed from: a, reason: collision with root package name */
        final Handler f18153a;

        /* renamed from: b, reason: collision with root package name */
        private final k.d f18154b;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: SqflitePlugin.java */
        /* loaded from: classes2.dex */
        public class a implements Runnable {

            /* renamed from: e, reason: collision with root package name */
            final /* synthetic */ Object f18155e;

            a(Object obj) {
                this.f18155e = obj;
            }

            @Override // java.lang.Runnable
            public void run() {
                i.this.f18154b.a(this.f18155e);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: SqflitePlugin.java */
        /* loaded from: classes2.dex */
        public class b implements Runnable {

            /* renamed from: e, reason: collision with root package name */
            final /* synthetic */ String f18157e;

            /* renamed from: f, reason: collision with root package name */
            final /* synthetic */ String f18158f;

            /* renamed from: g, reason: collision with root package name */
            final /* synthetic */ Object f18159g;

            b(String str, String str2, Object obj) {
                this.f18157e = str;
                this.f18158f = str2;
                this.f18159g = obj;
            }

            @Override // java.lang.Runnable
            public void run() {
                i.this.f18154b.a(this.f18157e, this.f18158f, this.f18159g);
            }
        }

        /* compiled from: SqflitePlugin.java */
        /* renamed from: e.n.a.c$i$c, reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        class RunnableC0209c implements Runnable {
            RunnableC0209c() {
            }

            @Override // java.lang.Runnable
            public void run() {
                i.this.f18154b.a();
            }
        }

        /* synthetic */ i(c cVar, k.d dVar, a aVar) {
            this(cVar, dVar);
        }

        private i(c cVar, k.d dVar) {
            this.f18153a = new Handler();
            this.f18154b = dVar;
        }

        @Override // g.a.c.a.k.d
        public void a(Object obj) {
            this.f18153a.post(new a(obj));
        }

        @Override // g.a.c.a.k.d
        public void a(String str, String str2, Object obj) {
            this.f18153a.post(new b(str, str2, obj));
        }

        @Override // g.a.c.a.k.d
        public void a() {
            this.f18153a.post(new RunnableC0209c());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean e(e.n.a.a aVar, e.n.a.f.f fVar) {
        Cursor cursor;
        if (!b(aVar, fVar)) {
            return false;
        }
        Cursor cursor2 = null;
        try {
            if (fVar.b()) {
                fVar.a((Object) null);
                return true;
            }
            try {
                cursor = aVar.e().rawQuery("SELECT changes()", null);
                if (cursor != null) {
                    try {
                        if (cursor.getCount() > 0 && cursor.moveToFirst()) {
                            int i2 = cursor.getInt(0);
                            if (e.n.a.b.a(aVar.f18107d)) {
                                String str = aVar.c() + "changed " + i2;
                            }
                            fVar.a(Integer.valueOf(i2));
                            if (cursor != null) {
                                cursor.close();
                            }
                            return true;
                        }
                    } catch (Exception e2) {
                        e = e2;
                        cursor2 = cursor;
                        a(e, fVar, aVar);
                        if (cursor2 != null) {
                            cursor2.close();
                        }
                        return false;
                    } catch (Throwable th) {
                        th = th;
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw th;
                    }
                }
                String str2 = aVar.c() + "fail to read changes for Update/Delete";
                fVar.a((Object) null);
                if (cursor != null) {
                    cursor.close();
                }
                return true;
            } catch (Exception e3) {
                e = e3;
            }
        } catch (Throwable th2) {
            th = th2;
            cursor = null;
        }
    }

    private void f(j jVar, k.d dVar) {
        String str = (String) jVar.a("cmd");
        HashMap hashMap = new HashMap();
        if ("get".equals(str)) {
            int i2 = f18113j;
            if (i2 > 0) {
                hashMap.put("logLevel", Integer.valueOf(i2));
            }
            if (!q.isEmpty()) {
                HashMap hashMap2 = new HashMap();
                for (Map.Entry<Integer, e.n.a.a> entry : q.entrySet()) {
                    e.n.a.a value = entry.getValue();
                    HashMap hashMap3 = new HashMap();
                    hashMap3.put("path", value.f18105b);
                    hashMap3.put("singleInstance", Boolean.valueOf(value.f18104a));
                    int i3 = value.f18107d;
                    if (i3 > 0) {
                        hashMap3.put("logLevel", Integer.valueOf(i3));
                    }
                    hashMap2.put(entry.getKey().toString(), hashMap3);
                }
                hashMap.put("databases", hashMap2);
            }
        }
        dVar.a(hashMap);
    }

    private void g(j jVar, k.d dVar) {
        e.n.a.e.a.f18164a = Boolean.TRUE.equals(jVar.a());
        e.n.a.e.a.f18166c = e.n.a.e.a.f18165b && e.n.a.e.a.f18164a;
        if (e.n.a.e.a.f18164a) {
            if (e.n.a.e.a.f18166c) {
                f18113j = 2;
            } else if (e.n.a.e.a.f18164a) {
                f18113j = 1;
            }
        } else {
            f18113j = 0;
        }
        dVar.a(null);
    }

    private void h(j jVar, k.d dVar) {
        a aVar;
        e.n.a.a aVar2;
        String str = (String) jVar.a("path");
        synchronized (f18114k) {
            if (e.n.a.b.b(f18113j)) {
                String str2 = "Look for " + str + " in " + f18110g.keySet();
            }
            Integer num = f18110g.get(str);
            aVar = null;
            if (num == null || (aVar2 = q.get(num)) == null || !aVar2.f18108e.isOpen()) {
                aVar2 = null;
            } else {
                if (e.n.a.b.b(f18113j)) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(aVar2.c());
                    sb.append("found single instance ");
                    sb.append(aVar2.f18109f ? "(in transaction) " : "");
                    sb.append(num);
                    sb.append(HanziToPinyin.Token.SEPARATOR);
                    sb.append(str);
                    sb.toString();
                }
                q.remove(num);
                f18110g.remove(str);
            }
        }
        h hVar = new h(aVar2, str, new i(this, dVar, aVar));
        Handler handler = p;
        if (handler != null) {
            handler.post(hVar);
        } else {
            hVar.run();
        }
    }

    private void i(j jVar, k.d dVar) {
        e.n.a.a c2 = c(jVar, dVar);
        if (c2 == null) {
            return;
        }
        p.post(new d(c2, jVar, new i(this, dVar, null)));
    }

    private void j(j jVar, k.d dVar) {
        e.n.a.a c2 = c(jVar, dVar);
        if (c2 == null) {
            return;
        }
        p.post(new RunnableC0208c(jVar, new i(this, dVar, null), c2));
    }

    private void k(j jVar, k.d dVar) {
        int i2;
        e.n.a.a aVar;
        String str = (String) jVar.a("path");
        Boolean bool = (Boolean) jVar.a("readOnly");
        boolean a2 = a(str);
        boolean z = (Boolean.FALSE.equals(jVar.a("singleInstance")) || a2) ? false : true;
        if (z) {
            synchronized (f18114k) {
                if (e.n.a.b.b(f18113j)) {
                    String str2 = "Look for " + str + " in " + f18110g.keySet();
                }
                Integer num = f18110g.get(str);
                if (num != null && (aVar = q.get(num)) != null) {
                    if (!aVar.f18108e.isOpen()) {
                        if (e.n.a.b.b(f18113j)) {
                            String str3 = aVar.c() + "single instance database of " + str + " not opened";
                        }
                    } else {
                        if (e.n.a.b.b(f18113j)) {
                            StringBuilder sb = new StringBuilder();
                            sb.append(aVar.c());
                            sb.append("re-opened single instance ");
                            sb.append(aVar.f18109f ? "(in transaction) " : "");
                            sb.append(num);
                            sb.append(HanziToPinyin.Token.SEPARATOR);
                            sb.append(str);
                            sb.toString();
                        }
                        dVar.a(a(num.intValue(), true, aVar.f18109f));
                        return;
                    }
                }
            }
        }
        synchronized (f18114k) {
            i2 = n + 1;
            n = i2;
        }
        e.n.a.a aVar2 = new e.n.a.a(str, i2, z, f18113j);
        i iVar = new i(this, dVar, null);
        synchronized (f18114k) {
            if (p == null) {
                o = new HandlerThread("Sqflite", f18112i);
                o.start();
                p = new Handler(o.getLooper());
                if (e.n.a.b.a(aVar2.f18107d)) {
                    String str4 = aVar2.c() + "starting thread" + o + " priority " + f18112i;
                }
            }
            if (e.n.a.b.a(aVar2.f18107d)) {
                String str5 = aVar2.c() + "opened " + i2 + HanziToPinyin.Token.SEPARATOR + str;
            }
            p.post(new f(a2, str, iVar, bool, aVar2, jVar, z, i2));
        }
    }

    private void l(j jVar, k.d dVar) {
        e.n.a.a c2 = c(jVar, dVar);
        if (c2 == null) {
            return;
        }
        p.post(new a(jVar, new i(this, dVar, null), c2));
    }

    private void m(j jVar, k.d dVar) {
        e.n.a.a c2 = c(jVar, dVar);
        if (c2 == null) {
            return;
        }
        p.post(new e(jVar, new i(this, dVar, null), c2));
    }

    @Override // io.flutter.embedding.engine.g.a
    public void onAttachedToEngine(a.b bVar) {
        a(bVar.a(), bVar.b());
    }

    @Override // io.flutter.embedding.engine.g.a
    public void onDetachedFromEngine(a.b bVar) {
        this.f18116e = null;
        this.f18117f.a((k.c) null);
        this.f18117f = null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // g.a.c.a.k.c
    public void onMethodCall(j jVar, k.d dVar) {
        char c2;
        String str = jVar.f18223a;
        switch (str.hashCode()) {
            case -1319569547:
                if (str.equals("execute")) {
                    c2 = 5;
                    break;
                }
                c2 = 65535;
                break;
            case -1253581933:
                if (str.equals("closeDatabase")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case -1249474914:
                if (str.equals("options")) {
                    c2 = '\b';
                    break;
                }
                c2 = 65535;
                break;
            case -1183792455:
                if (str.equals("insert")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case -838846263:
                if (str.equals("update")) {
                    c2 = 4;
                    break;
                }
                c2 = 65535;
                break;
            case -263511994:
                if (str.equals("deleteDatabase")) {
                    c2 = '\n';
                    break;
                }
                c2 = 65535;
                break;
            case -198450538:
                if (str.equals("debugMode")) {
                    c2 = '\f';
                    break;
                }
                c2 = 65535;
                break;
            case -17190427:
                if (str.equals("openDatabase")) {
                    c2 = 6;
                    break;
                }
                c2 = 65535;
                break;
            case 93509434:
                if (str.equals("batch")) {
                    c2 = 7;
                    break;
                }
                c2 = 65535;
                break;
            case 95458899:
                if (str.equals("debug")) {
                    c2 = 11;
                    break;
                }
                c2 = 65535;
                break;
            case 107944136:
                if (str.equals(H5PluginHandler.HUMMER_FOUNDATION_QUERY)) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case 1385449135:
                if (str.equals("getPlatformVersion")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            case 1863829223:
                if (str.equals("getDatabasesPath")) {
                    c2 = '\t';
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        switch (c2) {
            case 0:
                dVar.a("Android " + Build.VERSION.RELEASE);
                return;
            case 1:
                e(jVar, dVar);
                return;
            case 2:
                l(jVar, dVar);
                return;
            case 3:
                j(jVar, dVar);
                return;
            case 4:
                m(jVar, dVar);
                return;
            case 5:
                i(jVar, dVar);
                return;
            case 6:
                k(jVar, dVar);
                return;
            case 7:
                d(jVar, dVar);
                return;
            case '\b':
                b(jVar, dVar);
                return;
            case '\t':
                a(jVar, dVar);
                return;
            case '\n':
                h(jVar, dVar);
                return;
            case 11:
                f(jVar, dVar);
                return;
            case '\f':
                g(jVar, dVar);
                return;
            default:
                dVar.a();
                return;
        }
    }

    private void d(j jVar, k.d dVar) {
        e.n.a.a c2 = c(jVar, dVar);
        if (c2 == null) {
            return;
        }
        p.post(new b(jVar, new i(this, dVar, null), c2));
    }

    private static Object b(Cursor cursor, int i2) {
        int type = cursor.getType(i2);
        if (type == 0) {
            return null;
        }
        if (type == 1) {
            return Long.valueOf(cursor.getLong(i2));
        }
        if (type == 2) {
            return Double.valueOf(cursor.getDouble(i2));
        }
        if (type == 3) {
            return cursor.getString(i2);
        }
        if (type != 4) {
            return null;
        }
        return cursor.getBlob(i2);
    }

    private e.n.a.a c(j jVar, k.d dVar) {
        int intValue = ((Integer) jVar.a("id")).intValue();
        e.n.a.a a2 = a(intValue);
        if (a2 != null) {
            return a2;
        }
        dVar.a("sqlite_error", "database_closed " + intValue, null);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean d(e.n.a.a aVar, e.n.a.f.f fVar) {
        Cursor cursor;
        e.n.a.d a2 = fVar.a();
        ArrayList arrayList = new ArrayList();
        if (e.n.a.b.a(aVar.f18107d)) {
            String str = aVar.c() + a2;
        }
        boolean z = f18111h;
        Cursor cursor2 = null;
        Object obj = null;
        try {
            try {
                e.n.a.d e2 = a2.e();
                cursor = aVar.b().rawQuery(e2.c(), e2.a());
                ArrayList arrayList2 = null;
                int i2 = 0;
                while (cursor.moveToNext()) {
                    try {
                        if (z) {
                            Map<String, Object> a3 = a(cursor);
                            if (e.n.a.b.a(aVar.f18107d)) {
                                String str2 = aVar.c() + a((Object) a3);
                            }
                            arrayList.add(a3);
                        } else {
                            if (obj == null) {
                                ArrayList arrayList3 = new ArrayList();
                                HashMap hashMap = new HashMap();
                                int columnCount = cursor.getColumnCount();
                                hashMap.put("columns", Arrays.asList(cursor.getColumnNames()));
                                hashMap.put("rows", arrayList3);
                                arrayList2 = arrayList3;
                                obj = hashMap;
                                i2 = columnCount;
                            }
                            arrayList2.add(a(cursor, i2));
                        }
                    } catch (Exception e3) {
                        e = e3;
                        cursor2 = cursor;
                        a(e, fVar, aVar);
                        if (cursor2 != null) {
                            cursor2.close();
                        }
                        return false;
                    } catch (Throwable th) {
                        th = th;
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw th;
                    }
                }
                if (z) {
                    fVar.a(arrayList);
                } else {
                    if (obj == null) {
                        obj = new HashMap();
                    }
                    fVar.a(obj);
                }
                if (cursor != null) {
                    cursor.close();
                }
                return true;
            } catch (Throwable th2) {
                th = th2;
                cursor = null;
            }
        } catch (Exception e4) {
            e = e4;
        }
    }

    private void a(Context context, g.a.c.a.c cVar) {
        this.f18116e = context;
        this.f18117f = new k(cVar, "com.tekartik.sqflite");
        this.f18117f.a(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00c5  */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v6, types: [android.database.Cursor] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean c(e.n.a.a r9, e.n.a.f.f r10) {
        /*
            r8 = this;
            boolean r0 = r8.b(r9, r10)
            r1 = 0
            if (r0 != 0) goto L8
            return r1
        L8:
            boolean r0 = r10.b()
            r2 = 0
            r3 = 1
            if (r0 == 0) goto L14
            r10.a(r2)
            return r3
        L14:
            java.lang.String r0 = "SELECT changes(), last_insert_rowid()"
            android.database.sqlite.SQLiteDatabase r4 = r9.e()     // Catch: java.lang.Throwable -> Lb2 java.lang.Exception -> Lb5
            android.database.Cursor r0 = r4.rawQuery(r0, r2)     // Catch: java.lang.Throwable -> Lb2 java.lang.Exception -> Lb5
            if (r0 == 0) goto L95
            int r4 = r0.getCount()     // Catch: java.lang.Exception -> L93 java.lang.Throwable -> Lc2
            if (r4 <= 0) goto L95
            boolean r4 = r0.moveToFirst()     // Catch: java.lang.Exception -> L93 java.lang.Throwable -> Lc2
            if (r4 == 0) goto L95
            int r4 = r0.getInt(r1)     // Catch: java.lang.Exception -> L93 java.lang.Throwable -> Lc2
            if (r4 != 0) goto L63
            int r4 = r9.f18107d     // Catch: java.lang.Exception -> L93 java.lang.Throwable -> Lc2
            boolean r4 = e.n.a.b.a(r4)     // Catch: java.lang.Exception -> L93 java.lang.Throwable -> Lc2
            if (r4 == 0) goto L5a
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L93 java.lang.Throwable -> Lc2
            r4.<init>()     // Catch: java.lang.Exception -> L93 java.lang.Throwable -> Lc2
            java.lang.String r5 = r9.c()     // Catch: java.lang.Exception -> L93 java.lang.Throwable -> Lc2
            r4.append(r5)     // Catch: java.lang.Exception -> L93 java.lang.Throwable -> Lc2
            java.lang.String r5 = "no changes (id was "
            r4.append(r5)     // Catch: java.lang.Exception -> L93 java.lang.Throwable -> Lc2
            long r5 = r0.getLong(r3)     // Catch: java.lang.Exception -> L93 java.lang.Throwable -> Lc2
            r4.append(r5)     // Catch: java.lang.Exception -> L93 java.lang.Throwable -> Lc2
            java.lang.String r5 = ")"
            r4.append(r5)     // Catch: java.lang.Exception -> L93 java.lang.Throwable -> Lc2
            r4.toString()     // Catch: java.lang.Exception -> L93 java.lang.Throwable -> Lc2
        L5a:
            r10.a(r2)     // Catch: java.lang.Exception -> L93 java.lang.Throwable -> Lc2
            if (r0 == 0) goto L62
            r0.close()
        L62:
            return r3
        L63:
            long r4 = r0.getLong(r3)     // Catch: java.lang.Exception -> L93 java.lang.Throwable -> Lc2
            int r2 = r9.f18107d     // Catch: java.lang.Exception -> L93 java.lang.Throwable -> Lc2
            boolean r2 = e.n.a.b.a(r2)     // Catch: java.lang.Exception -> L93 java.lang.Throwable -> Lc2
            if (r2 == 0) goto L86
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L93 java.lang.Throwable -> Lc2
            r2.<init>()     // Catch: java.lang.Exception -> L93 java.lang.Throwable -> Lc2
            java.lang.String r6 = r9.c()     // Catch: java.lang.Exception -> L93 java.lang.Throwable -> Lc2
            r2.append(r6)     // Catch: java.lang.Exception -> L93 java.lang.Throwable -> Lc2
            java.lang.String r6 = "inserted "
            r2.append(r6)     // Catch: java.lang.Exception -> L93 java.lang.Throwable -> Lc2
            r2.append(r4)     // Catch: java.lang.Exception -> L93 java.lang.Throwable -> Lc2
            r2.toString()     // Catch: java.lang.Exception -> L93 java.lang.Throwable -> Lc2
        L86:
            java.lang.Long r2 = java.lang.Long.valueOf(r4)     // Catch: java.lang.Exception -> L93 java.lang.Throwable -> Lc2
            r10.a(r2)     // Catch: java.lang.Exception -> L93 java.lang.Throwable -> Lc2
            if (r0 == 0) goto L92
            r0.close()
        L92:
            return r3
        L93:
            r2 = move-exception
            goto Lb9
        L95:
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L93 java.lang.Throwable -> Lc2
            r4.<init>()     // Catch: java.lang.Exception -> L93 java.lang.Throwable -> Lc2
            java.lang.String r5 = r9.c()     // Catch: java.lang.Exception -> L93 java.lang.Throwable -> Lc2
            r4.append(r5)     // Catch: java.lang.Exception -> L93 java.lang.Throwable -> Lc2
            java.lang.String r5 = "fail to read changes for Insert"
            r4.append(r5)     // Catch: java.lang.Exception -> L93 java.lang.Throwable -> Lc2
            r4.toString()     // Catch: java.lang.Exception -> L93 java.lang.Throwable -> Lc2
            r10.a(r2)     // Catch: java.lang.Exception -> L93 java.lang.Throwable -> Lc2
            if (r0 == 0) goto Lb1
            r0.close()
        Lb1:
            return r3
        Lb2:
            r9 = move-exception
            r0 = r2
            goto Lc3
        Lb5:
            r0 = move-exception
            r7 = r2
            r2 = r0
            r0 = r7
        Lb9:
            r8.a(r2, r10, r9)     // Catch: java.lang.Throwable -> Lc2
            if (r0 == 0) goto Lc1
            r0.close()
        Lc1:
            return r1
        Lc2:
            r9 = move-exception
        Lc3:
            if (r0 == 0) goto Lc8
            r0.close()
        Lc8:
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: e.n.a.c.c(e.n.a.a, e.n.a.f.f):boolean");
    }

    private boolean b(e.n.a.a aVar, e.n.a.f.f fVar) {
        e.n.a.d a2 = fVar.a();
        if (e.n.a.b.a(aVar.f18107d)) {
            String str = aVar.c() + a2;
        }
        Boolean c2 = fVar.c();
        try {
            try {
                aVar.e().execSQL(a2.c(), a2.d());
                if (Boolean.TRUE.equals(c2)) {
                    aVar.f18109f = true;
                }
                if (Boolean.FALSE.equals(c2)) {
                    aVar.f18109f = false;
                }
                return true;
            } catch (Exception e2) {
                a(e2, fVar, aVar);
                if (Boolean.FALSE.equals(c2)) {
                    aVar.f18109f = false;
                }
                return false;
            }
        } catch (Throwable th) {
            if (Boolean.FALSE.equals(c2)) {
                aVar.f18109f = false;
            }
            throw th;
        }
    }

    private static List<Object> a(Cursor cursor, int i2) {
        ArrayList arrayList = new ArrayList(i2);
        for (int i3 = 0; i3 < i2; i3++) {
            Object b2 = b(cursor, i3);
            if (e.n.a.e.a.f18166c) {
                String str = null;
                if (b2 != null) {
                    str = b2.getClass().isArray() ? "array(" + b2.getClass().getComponentType().getName() + ")" : b2.getClass().getName();
                }
                StringBuilder sb = new StringBuilder();
                sb.append("column ");
                sb.append(i3);
                sb.append(HanziToPinyin.Token.SEPARATOR);
                sb.append(cursor.getType(i3));
                sb.append(": ");
                sb.append(b2);
                sb.append(str == null ? "" : " (" + str + ")");
                sb.toString();
            }
            arrayList.add(b2);
        }
        return arrayList;
    }

    private static Map<String, Object> a(Cursor cursor) {
        HashMap hashMap = new HashMap();
        String[] columnNames = cursor.getColumnNames();
        int length = columnNames.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (e.n.a.e.a.f18166c) {
                String str = "column " + i2 + HanziToPinyin.Token.SEPARATOR + cursor.getType(i2);
            }
            int type = cursor.getType(i2);
            if (type == 0) {
                hashMap.put(columnNames[i2], null);
            } else if (type == 1) {
                hashMap.put(columnNames[i2], Long.valueOf(cursor.getLong(i2)));
            } else if (type == 2) {
                hashMap.put(columnNames[i2], Double.valueOf(cursor.getDouble(i2)));
            } else if (type == 3) {
                hashMap.put(columnNames[i2], cursor.getString(i2));
            } else if (type == 4) {
                hashMap.put(columnNames[i2], cursor.getBlob(i2));
            }
        }
        return hashMap;
    }

    private void e(j jVar, k.d dVar) {
        int intValue = ((Integer) jVar.a("id")).intValue();
        e.n.a.a c2 = c(jVar, dVar);
        if (c2 == null) {
            return;
        }
        if (e.n.a.b.a(c2.f18107d)) {
            String str = c2.c() + "closing " + intValue + HanziToPinyin.Token.SEPARATOR + c2.f18105b;
        }
        String str2 = c2.f18105b;
        synchronized (f18114k) {
            q.remove(Integer.valueOf(intValue));
            if (c2.f18104a) {
                f18110g.remove(str2);
            }
        }
        p.post(new g(c2, new i(this, dVar, null)));
    }

    void b(j jVar, k.d dVar) {
        Object a2 = jVar.a("queryAsMapList");
        if (a2 != null) {
            f18111h = Boolean.TRUE.equals(a2);
        }
        Object a3 = jVar.a("androidThreadPriority");
        if (a3 != null) {
            f18112i = ((Integer) a3).intValue();
        }
        Integer a4 = e.n.a.b.a(jVar);
        if (a4 != null) {
            f18113j = a4.intValue();
        }
        dVar.a(null);
    }

    private static Map<String, Object> a(Map<Object, Object> map) {
        Object a2;
        HashMap hashMap = new HashMap();
        for (Map.Entry<Object, Object> entry : map.entrySet()) {
            Object value = entry.getValue();
            if (value instanceof Map) {
                a2 = a((Map<Object, Object>) value);
            } else {
                a2 = a(value);
            }
            hashMap.put(a(entry.getKey()), a2);
        }
        return hashMap;
    }

    private static String a(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof byte[]) {
            ArrayList arrayList = new ArrayList();
            for (byte b2 : (byte[]) obj) {
                arrayList.add(Integer.valueOf(b2));
            }
            return arrayList.toString();
        }
        if (obj instanceof Map) {
            return a((Map<Object, Object>) obj).toString();
        }
        return obj.toString();
    }

    static boolean a(String str) {
        return str == null || str.equals(":memory:");
    }

    private e.n.a.a a(int i2) {
        return q.get(Integer.valueOf(i2));
    }

    private e.n.a.d a(j jVar) {
        return new e.n.a.d((String) jVar.a("sql"), (List) jVar.a("arguments"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public e.n.a.a a(e.n.a.a aVar, j jVar, k.d dVar) {
        if (b(aVar, new e.n.a.f.d(dVar, a(jVar), (Boolean) jVar.a("inTransaction")))) {
            return aVar;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(e.n.a.a aVar, e.n.a.f.f fVar) {
        if (!b(aVar, fVar)) {
            return false;
        }
        fVar.a((Object) null);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Exception exc, e.n.a.f.f fVar, e.n.a.a aVar) {
        if (exc instanceof SQLiteCantOpenDatabaseException) {
            fVar.a("sqlite_error", "open_failed " + aVar.f18105b, null);
            return;
        }
        if (exc instanceof SQLException) {
            fVar.a("sqlite_error", exc.getMessage(), e.n.a.f.h.a(fVar));
        } else {
            fVar.a("sqlite_error", exc.getMessage(), e.n.a.f.h.a(fVar));
        }
    }

    static Map a(int i2, boolean z, boolean z2) {
        HashMap hashMap = new HashMap();
        hashMap.put("id", Integer.valueOf(i2));
        if (z) {
            hashMap.put("recovered", true);
        }
        if (z2) {
            hashMap.put("recoveredInTransaction", true);
        }
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(e.n.a.a aVar) {
        try {
            if (e.n.a.b.a(aVar.f18107d)) {
                String str = aVar.c() + "closing database " + o;
            }
            aVar.a();
        } catch (Exception e2) {
            String str2 = "error " + e2 + " while closing database " + n;
        }
        synchronized (f18114k) {
            if (q.isEmpty() && p != null) {
                if (e.n.a.b.a(aVar.f18107d)) {
                    String str3 = aVar.c() + "stopping thread" + o;
                }
                o.quit();
                o = null;
                p = null;
            }
        }
    }

    void a(j jVar, k.d dVar) {
        if (m == null) {
            m = this.f18116e.getDatabasePath("tekartik_sqflite.db").getParent();
        }
        dVar.a(m);
    }
}
