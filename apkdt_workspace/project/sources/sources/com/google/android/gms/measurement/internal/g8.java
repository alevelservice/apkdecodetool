package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import androidx.annotation.NonNull;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.n0;
import com.google.android.gms.internal.measurement.p0;
import com.google.android.gms.internal.measurement.q0;
import com.google.android.gms.internal.measurement.r0;
import com.google.android.gms.internal.measurement.v0;
import com.google.android.gms.internal.measurement.zzx;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.net.MalformedURLException;
import java.net.URL;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.nio.channels.OverlappingFileLockException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes.dex */
public class g8 implements h5 {
    private static volatile g8 y;

    /* renamed from: a, reason: collision with root package name */
    private e4 f12941a;

    /* renamed from: b, reason: collision with root package name */
    private j3 f12942b;

    /* renamed from: c, reason: collision with root package name */
    private e9 f12943c;

    /* renamed from: d, reason: collision with root package name */
    private m3 f12944d;

    /* renamed from: e, reason: collision with root package name */
    private c8 f12945e;

    /* renamed from: f, reason: collision with root package name */
    private x8 f12946f;

    /* renamed from: g, reason: collision with root package name */
    private final n8 f12947g;

    /* renamed from: h, reason: collision with root package name */
    private o6 f12948h;

    /* renamed from: i, reason: collision with root package name */
    private final j4 f12949i;

    /* renamed from: j, reason: collision with root package name */
    private boolean f12950j;

    /* renamed from: k, reason: collision with root package name */
    private boolean f12951k;

    /* renamed from: l, reason: collision with root package name */
    private boolean f12952l;

    @VisibleForTesting
    private long m;
    private List<Runnable> n;
    private int o;
    private int p;
    private boolean q;
    private boolean r;
    private boolean s;
    private FileLock t;
    private FileChannel u;
    private List<Long> v;
    private List<Long> w;
    private long x;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a implements g9 {

        /* renamed from: a, reason: collision with root package name */
        com.google.android.gms.internal.measurement.r0 f12953a;

        /* renamed from: b, reason: collision with root package name */
        List<Long> f12954b;

        /* renamed from: c, reason: collision with root package name */
        List<com.google.android.gms.internal.measurement.n0> f12955c;

        /* renamed from: d, reason: collision with root package name */
        private long f12956d;

        private a(g8 g8Var) {
        }

        @Override // com.google.android.gms.measurement.internal.g9
        public final void a(com.google.android.gms.internal.measurement.r0 r0Var) {
            com.google.android.gms.common.internal.m.a(r0Var);
            this.f12953a = r0Var;
        }

        /* synthetic */ a(g8 g8Var, j8 j8Var) {
            this(g8Var);
        }

        @Override // com.google.android.gms.measurement.internal.g9
        public final boolean a(long j2, com.google.android.gms.internal.measurement.n0 n0Var) {
            com.google.android.gms.common.internal.m.a(n0Var);
            if (this.f12955c == null) {
                this.f12955c = new ArrayList();
            }
            if (this.f12954b == null) {
                this.f12954b = new ArrayList();
            }
            if (this.f12955c.size() > 0 && a(this.f12955c.get(0)) != a(n0Var)) {
                return false;
            }
            long b2 = this.f12956d + n0Var.b();
            if (b2 >= Math.max(0, j.n.a(null).intValue())) {
                return false;
            }
            this.f12956d = b2;
            this.f12955c.add(n0Var);
            this.f12954b.add(Long.valueOf(j2));
            return this.f12955c.size() < Math.max(1, j.o.a(null).intValue());
        }

        private static long a(com.google.android.gms.internal.measurement.n0 n0Var) {
            return ((n0Var.p() / 1000) / 60) / 60;
        }
    }

    private g8(m8 m8Var) {
        this(m8Var, null);
    }

    public static g8 a(Context context) {
        com.google.android.gms.common.internal.m.a(context);
        com.google.android.gms.common.internal.m.a(context.getApplicationContext());
        if (y == null) {
            synchronized (g8.class) {
                if (y == null) {
                    y = new g8(new m8(context));
                }
            }
        }
        return y;
    }

    private final m3 r() {
        m3 m3Var = this.f12944d;
        if (m3Var != null) {
            return m3Var;
        }
        throw new IllegalStateException("Network broadcast receiver not created");
    }

    private final c8 s() {
        b(this.f12945e);
        return this.f12945e;
    }

    private final long t() {
        long a2 = this.f12949i.a().a();
        o3 e2 = this.f12949i.e();
        e2.m();
        e2.g();
        long a3 = e2.f13118i.a();
        if (a3 == 0) {
            a3 = 1 + e2.j().r().nextInt(86400000);
            e2.f13118i.a(a3);
        }
        return ((((a2 + a3) / 1000) / 60) / 60) / 24;
    }

    private final boolean u() {
        z();
        k();
        return g().B() || !TextUtils.isEmpty(g().w());
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x01a2  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x01c0  */
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void v() {
        /*
            Method dump skipped, instructions count: 649
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.g8.v():void");
    }

    @WorkerThread
    private final void w() {
        z();
        if (!this.q && !this.r && !this.s) {
            this.f12949i.zzab().y().a("Stopping uploading service(s)");
            List<Runnable> list = this.n;
            if (list == null) {
                return;
            }
            Iterator<Runnable> it = list.iterator();
            while (it.hasNext()) {
                it.next().run();
            }
            this.n.clear();
            return;
        }
        this.f12949i.zzab().y().a("Not stopping services. fetch, network, upload", Boolean.valueOf(this.q), Boolean.valueOf(this.r), Boolean.valueOf(this.s));
    }

    @VisibleForTesting
    @WorkerThread
    private final boolean x() {
        FileLock fileLock;
        z();
        if (this.f12949i.f().a(j.F0) && (fileLock = this.t) != null && fileLock.isValid()) {
            this.f12949i.zzab().y().a("Storage concurrent access okay");
            return true;
        }
        try {
            this.u = new RandomAccessFile(new File(this.f12949i.getContext().getFilesDir(), "google_app_measurement.db"), "rw").getChannel();
            this.t = this.u.tryLock();
            if (this.t != null) {
                this.f12949i.zzab().y().a("Storage concurrent access okay");
                return true;
            }
            this.f12949i.zzab().q().a("Storage concurrent data access panic");
            return false;
        } catch (FileNotFoundException e2) {
            this.f12949i.zzab().q().a("Failed to acquire storage lock", e2);
            return false;
        } catch (IOException e3) {
            this.f12949i.zzab().q().a("Failed to access storage lock file", e3);
            return false;
        } catch (OverlappingFileLockException e4) {
            this.f12949i.zzab().t().a("Storage lock already acquired", e4);
            return false;
        }
    }

    @WorkerThread
    private final boolean y() {
        z();
        k();
        return this.f12951k;
    }

    @WorkerThread
    private final void z() {
        this.f12949i.b().g();
    }

    @Override // com.google.android.gms.measurement.internal.h5
    public final d4 b() {
        return this.f12949i.b();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @WorkerThread
    public final void c() {
        this.f12949i.b().g();
        g().y();
        if (this.f12949i.e().f13114e.a() == 0) {
            this.f12949i.e().f13114e.a(this.f12949i.a().a());
        }
        v();
    }

    public final z8 d() {
        return this.f12949i.f();
    }

    public final n8 e() {
        b(this.f12947g);
        return this.f12947g;
    }

    public final x8 f() {
        b(this.f12946f);
        return this.f12946f;
    }

    public final e9 g() {
        b(this.f12943c);
        return this.f12943c;
    }

    @Override // com.google.android.gms.measurement.internal.h5
    public final Context getContext() {
        return this.f12949i.getContext();
    }

    public final e4 h() {
        b(this.f12941a);
        return this.f12941a;
    }

    public final j3 i() {
        b(this.f12942b);
        return this.f12942b;
    }

    public final o6 j() {
        b(this.f12948h);
        return this.f12948h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void k() {
        if (!this.f12950j) {
            throw new IllegalStateException("UploadController is not initialized");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final void l() {
        a4 b2;
        String str;
        z();
        k();
        this.s = true;
        try {
            this.f12949i.zzae();
            Boolean E = this.f12949i.x().E();
            if (E == null) {
                this.f12949i.zzab().t().a("Upload data called on the client side before use of service was decided");
                return;
            }
            if (E.booleanValue()) {
                this.f12949i.zzab().q().a("Upload called in the client side when service should be used");
                return;
            }
            if (this.m > 0) {
                v();
                return;
            }
            z();
            if (this.v != null) {
                this.f12949i.zzab().y().a("Uploading requested multiple times");
                return;
            }
            if (!i().s()) {
                this.f12949i.zzab().y().a("Network not connected, ignoring upload request");
                v();
                return;
            }
            long a2 = this.f12949i.a().a();
            a((String) null, a2 - z8.u());
            long a3 = this.f12949i.e().f13114e.a();
            if (a3 != 0) {
                this.f12949i.zzab().x().a("Uploading events. Elapsed time since last upload attempt (ms)", Long.valueOf(Math.abs(a2 - a3)));
            }
            String w = g().w();
            if (!TextUtils.isEmpty(w)) {
                if (this.x == -1) {
                    this.x = g().D();
                }
                List<Pair<com.google.android.gms.internal.measurement.r0, Long>> a4 = g().a(w, this.f12949i.f().b(w, j.f13003l), Math.max(0, this.f12949i.f().b(w, j.m)));
                if (!a4.isEmpty()) {
                    Iterator<Pair<com.google.android.gms.internal.measurement.r0, Long>> it = a4.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            str = null;
                            break;
                        }
                        com.google.android.gms.internal.measurement.r0 r0Var = (com.google.android.gms.internal.measurement.r0) it.next().first;
                        if (!TextUtils.isEmpty(r0Var.Y())) {
                            str = r0Var.Y();
                            break;
                        }
                    }
                    if (str != null) {
                        int i2 = 0;
                        while (true) {
                            if (i2 >= a4.size()) {
                                break;
                            }
                            com.google.android.gms.internal.measurement.r0 r0Var2 = (com.google.android.gms.internal.measurement.r0) a4.get(i2).first;
                            if (!TextUtils.isEmpty(r0Var2.Y()) && !r0Var2.Y().equals(str)) {
                                a4 = a4.subList(0, i2);
                                break;
                            }
                            i2++;
                        }
                    }
                    q0.a o = com.google.android.gms.internal.measurement.q0.o();
                    int size = a4.size();
                    ArrayList arrayList = new ArrayList(a4.size());
                    boolean z = z8.v() && this.f12949i.f().d(w);
                    for (int i3 = 0; i3 < size; i3++) {
                        r0.a i4 = ((com.google.android.gms.internal.measurement.r0) a4.get(i3).first).i();
                        arrayList.add((Long) a4.get(i3).second);
                        i4.g(this.f12949i.f().k());
                        i4.a(a2);
                        this.f12949i.zzae();
                        i4.b(false);
                        if (!z) {
                            i4.x();
                        }
                        if (this.f12949i.f().e(w, j.r0)) {
                            i4.l(e().a(((com.google.android.gms.internal.measurement.r0) ((com.google.android.gms.internal.measurement.b4) i4.t())).e()));
                        }
                        o.a(i4);
                    }
                    String a5 = this.f12949i.zzab().a(2) ? e().a((com.google.android.gms.internal.measurement.q0) ((com.google.android.gms.internal.measurement.b4) o.t())) : null;
                    e();
                    byte[] e2 = ((com.google.android.gms.internal.measurement.q0) ((com.google.android.gms.internal.measurement.b4) o.t())).e();
                    String a6 = j.v.a(null);
                    try {
                        URL url = new URL(a6);
                        com.google.android.gms.common.internal.m.a(!arrayList.isEmpty());
                        if (this.v != null) {
                            this.f12949i.zzab().q().a("Set uploading progress before finishing the previous upload");
                        } else {
                            this.v = new ArrayList(arrayList);
                        }
                        this.f12949i.e().f13115f.a(a2);
                        this.f12949i.zzab().y().a("Uploading data. app, uncompressed size, data", size > 0 ? o.a(0).s() : "?", Integer.valueOf(e2.length), a5);
                        this.r = true;
                        j3 i5 = i();
                        i8 i8Var = new i8(this, w);
                        i5.g();
                        i5.q();
                        com.google.android.gms.common.internal.m.a(url);
                        com.google.android.gms.common.internal.m.a(e2);
                        com.google.android.gms.common.internal.m.a(i8Var);
                        i5.b().b(new n3(i5, w, url, e2, null, i8Var));
                    } catch (MalformedURLException unused) {
                        this.f12949i.zzab().q().a("Failed to parse upload URL. Not uploading. appId", f3.a(w), a6);
                    }
                }
            } else {
                this.x = -1L;
                String a7 = g().a(a2 - z8.u());
                if (!TextUtils.isEmpty(a7) && (b2 = g().b(a7)) != null) {
                    a(b2);
                }
            }
        } finally {
            this.s = false;
            w();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final void m() {
        z();
        k();
        if (!this.f12952l) {
            this.f12952l = true;
            z();
            k();
            if ((this.f12949i.f().a(j.m0) || y()) && x()) {
                int a2 = a(this.u);
                int C = this.f12949i.w().C();
                z();
                if (a2 > C) {
                    this.f12949i.zzab().q().a("Panic: can't downgrade version. Previous, current version", Integer.valueOf(a2), Integer.valueOf(C));
                } else if (a2 < C) {
                    if (a(C, this.u)) {
                        this.f12949i.zzab().y().a("Storage version upgraded. Previous, current version", Integer.valueOf(a2), Integer.valueOf(C));
                    } else {
                        this.f12949i.zzab().q().a("Storage version upgrade failed. Previous, current version", Integer.valueOf(a2), Integer.valueOf(C));
                    }
                }
            }
        }
        if (this.f12951k || this.f12949i.f().a(j.m0)) {
            return;
        }
        this.f12949i.zzab().w().a("This instance being marked as an uploader");
        this.f12951k = true;
        v();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void n() {
        this.p++;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final j4 o() {
        return this.f12949i;
    }

    public final d3 p() {
        return this.f12949i.C();
    }

    public final r8 q() {
        return this.f12949i.D();
    }

    @Override // com.google.android.gms.measurement.internal.h5
    public final f3 zzab() {
        return this.f12949i.zzab();
    }

    @Override // com.google.android.gms.measurement.internal.h5
    public final y8 zzae() {
        return this.f12949i.zzae();
    }

    private g8(m8 m8Var, j4 j4Var) {
        this.f12950j = false;
        com.google.android.gms.common.internal.m.a(m8Var);
        this.f12949i = j4.a(m8Var.f13093a, (zzx) null);
        this.x = -1L;
        n8 n8Var = new n8(this);
        n8Var.o();
        this.f12947g = n8Var;
        j3 j3Var = new j3(this);
        j3Var.o();
        this.f12942b = j3Var;
        e4 e4Var = new e4(this);
        e4Var.o();
        this.f12941a = e4Var;
        this.f12949i.b().a(new j8(this, m8Var));
    }

    private static void b(h8 h8Var) {
        if (h8Var != null) {
            if (h8Var.p()) {
                return;
            }
            String valueOf = String.valueOf(h8Var.getClass());
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 27);
            sb.append("Component not initialized: ");
            sb.append(valueOf);
            throw new IllegalStateException(sb.toString());
        }
        throw new IllegalStateException("Upload Component not created");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String d(zzn zznVar) {
        try {
            return (String) this.f12949i.b().a(new k8(this, zznVar)).get(30000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e2) {
            this.f12949i.zzab().q().a("Failed to get app instance id. appId", f3.a(zznVar.f13391e), e2);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0132  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0140  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x014e  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0188  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x006a  */
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.a4 e(com.google.android.gms.measurement.internal.zzn r11) {
        /*
            Method dump skipped, instructions count: 400
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.g8.e(com.google.android.gms.measurement.internal.zzn):com.google.android.gms.measurement.internal.a4");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(zzn zznVar) {
        z();
        k();
        com.google.android.gms.common.internal.m.b(zznVar.f13391e);
        e(zznVar);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(14:225|(1:227)(1:250)|228|(7:233|234|(1:236)|237|(0)|43|(0)(0))|242|243|244|245|234|(0)|237|(0)|43|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:247:0x023a, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:249:0x023c, code lost:
    
        r7.zzab().q().a("Error pruning currencies. appId", com.google.android.gms.measurement.internal.f3.a(r15), r0);
     */
    /* JADX WARN: Removed duplicated region for block: B:236:0x0272 A[Catch: all -> 0x08c0, TryCatch #0 {all -> 0x08c0, blocks: (B:36:0x0108, B:39:0x0117, B:43:0x02b8, B:45:0x02f7, B:47:0x02fc, B:48:0x0315, B:52:0x0326, B:54:0x033b, B:56:0x0342, B:57:0x035b, B:61:0x037e, B:65:0x03a6, B:66:0x03bf, B:69:0x03cf, B:72:0x03f2, B:73:0x0410, B:76:0x041a, B:78:0x0428, B:80:0x0434, B:82:0x043a, B:83:0x0445, B:85:0x044d, B:87:0x045d, B:89:0x046b, B:90:0x0476, B:92:0x0482, B:93:0x0499, B:95:0x04c6, B:98:0x04d6, B:101:0x0512, B:102:0x053a, B:104:0x0572, B:105:0x0577, B:107:0x057f, B:108:0x0584, B:110:0x058c, B:111:0x0591, B:113:0x059a, B:114:0x05a0, B:116:0x05ad, B:117:0x05b2, B:119:0x05c0, B:121:0x05ca, B:123:0x05d2, B:124:0x05e5, B:126:0x05ed, B:127:0x05f2, B:129:0x0607, B:131:0x0611, B:132:0x0614, B:134:0x0622, B:136:0x062c, B:138:0x0630, B:140:0x063b, B:141:0x06a9, B:143:0x06ed, B:145:0x06f3, B:147:0x06fc, B:148:0x0701, B:150:0x070d, B:151:0x0774, B:153:0x077e, B:154:0x0785, B:156:0x078f, B:157:0x0796, B:158:0x07a1, B:160:0x07a7, B:163:0x07d6, B:164:0x07e6, B:166:0x07ee, B:167:0x07f4, B:169:0x07fa, B:174:0x0845, B:176:0x084b, B:177:0x0867, B:179:0x087b, B:183:0x080c, B:185:0x0830, B:191:0x084f, B:192:0x0647, B:194:0x0659, B:196:0x065d, B:198:0x066f, B:199:0x06a6, B:200:0x0689, B:202:0x068f, B:203:0x05d8, B:205:0x05e0, B:206:0x052c, B:209:0x0125, B:212:0x0137, B:214:0x014e, B:220:0x016a, B:221:0x0196, B:223:0x019c, B:225:0x01aa, B:227:0x01b6, B:228:0x01c0, B:230:0x01cb, B:233:0x01d2, B:234:0x0268, B:236:0x0272, B:239:0x02a9, B:242:0x0201, B:244:0x021f, B:245:0x024d, B:249:0x023c, B:250:0x01bb, B:252:0x016f, B:253:0x018c), top: B:35:0x0108, inners: #1, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:239:0x02a9 A[Catch: all -> 0x08c0, TRY_LEAVE, TryCatch #0 {all -> 0x08c0, blocks: (B:36:0x0108, B:39:0x0117, B:43:0x02b8, B:45:0x02f7, B:47:0x02fc, B:48:0x0315, B:52:0x0326, B:54:0x033b, B:56:0x0342, B:57:0x035b, B:61:0x037e, B:65:0x03a6, B:66:0x03bf, B:69:0x03cf, B:72:0x03f2, B:73:0x0410, B:76:0x041a, B:78:0x0428, B:80:0x0434, B:82:0x043a, B:83:0x0445, B:85:0x044d, B:87:0x045d, B:89:0x046b, B:90:0x0476, B:92:0x0482, B:93:0x0499, B:95:0x04c6, B:98:0x04d6, B:101:0x0512, B:102:0x053a, B:104:0x0572, B:105:0x0577, B:107:0x057f, B:108:0x0584, B:110:0x058c, B:111:0x0591, B:113:0x059a, B:114:0x05a0, B:116:0x05ad, B:117:0x05b2, B:119:0x05c0, B:121:0x05ca, B:123:0x05d2, B:124:0x05e5, B:126:0x05ed, B:127:0x05f2, B:129:0x0607, B:131:0x0611, B:132:0x0614, B:134:0x0622, B:136:0x062c, B:138:0x0630, B:140:0x063b, B:141:0x06a9, B:143:0x06ed, B:145:0x06f3, B:147:0x06fc, B:148:0x0701, B:150:0x070d, B:151:0x0774, B:153:0x077e, B:154:0x0785, B:156:0x078f, B:157:0x0796, B:158:0x07a1, B:160:0x07a7, B:163:0x07d6, B:164:0x07e6, B:166:0x07ee, B:167:0x07f4, B:169:0x07fa, B:174:0x0845, B:176:0x084b, B:177:0x0867, B:179:0x087b, B:183:0x080c, B:185:0x0830, B:191:0x084f, B:192:0x0647, B:194:0x0659, B:196:0x065d, B:198:0x066f, B:199:0x06a6, B:200:0x0689, B:202:0x068f, B:203:0x05d8, B:205:0x05e0, B:206:0x052c, B:209:0x0125, B:212:0x0137, B:214:0x014e, B:220:0x016a, B:221:0x0196, B:223:0x019c, B:225:0x01aa, B:227:0x01b6, B:228:0x01c0, B:230:0x01cb, B:233:0x01d2, B:234:0x0268, B:236:0x0272, B:239:0x02a9, B:242:0x0201, B:244:0x021f, B:245:0x024d, B:249:0x023c, B:250:0x01bb, B:252:0x016f, B:253:0x018c), top: B:35:0x0108, inners: #1, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x02f7 A[Catch: all -> 0x08c0, TryCatch #0 {all -> 0x08c0, blocks: (B:36:0x0108, B:39:0x0117, B:43:0x02b8, B:45:0x02f7, B:47:0x02fc, B:48:0x0315, B:52:0x0326, B:54:0x033b, B:56:0x0342, B:57:0x035b, B:61:0x037e, B:65:0x03a6, B:66:0x03bf, B:69:0x03cf, B:72:0x03f2, B:73:0x0410, B:76:0x041a, B:78:0x0428, B:80:0x0434, B:82:0x043a, B:83:0x0445, B:85:0x044d, B:87:0x045d, B:89:0x046b, B:90:0x0476, B:92:0x0482, B:93:0x0499, B:95:0x04c6, B:98:0x04d6, B:101:0x0512, B:102:0x053a, B:104:0x0572, B:105:0x0577, B:107:0x057f, B:108:0x0584, B:110:0x058c, B:111:0x0591, B:113:0x059a, B:114:0x05a0, B:116:0x05ad, B:117:0x05b2, B:119:0x05c0, B:121:0x05ca, B:123:0x05d2, B:124:0x05e5, B:126:0x05ed, B:127:0x05f2, B:129:0x0607, B:131:0x0611, B:132:0x0614, B:134:0x0622, B:136:0x062c, B:138:0x0630, B:140:0x063b, B:141:0x06a9, B:143:0x06ed, B:145:0x06f3, B:147:0x06fc, B:148:0x0701, B:150:0x070d, B:151:0x0774, B:153:0x077e, B:154:0x0785, B:156:0x078f, B:157:0x0796, B:158:0x07a1, B:160:0x07a7, B:163:0x07d6, B:164:0x07e6, B:166:0x07ee, B:167:0x07f4, B:169:0x07fa, B:174:0x0845, B:176:0x084b, B:177:0x0867, B:179:0x087b, B:183:0x080c, B:185:0x0830, B:191:0x084f, B:192:0x0647, B:194:0x0659, B:196:0x065d, B:198:0x066f, B:199:0x06a6, B:200:0x0689, B:202:0x068f, B:203:0x05d8, B:205:0x05e0, B:206:0x052c, B:209:0x0125, B:212:0x0137, B:214:0x014e, B:220:0x016a, B:221:0x0196, B:223:0x019c, B:225:0x01aa, B:227:0x01b6, B:228:0x01c0, B:230:0x01cb, B:233:0x01d2, B:234:0x0268, B:236:0x0272, B:239:0x02a9, B:242:0x0201, B:244:0x021f, B:245:0x024d, B:249:0x023c, B:250:0x01bb, B:252:0x016f, B:253:0x018c), top: B:35:0x0108, inners: #1, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0324  */
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void b(com.google.android.gms.measurement.internal.zzai r28, com.google.android.gms.measurement.internal.zzn r29) {
        /*
            Method dump skipped, instructions count: 2252
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.g8.b(com.google.android.gms.measurement.internal.zzai, com.google.android.gms.measurement.internal.zzn):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public final void a(m8 m8Var) {
        this.f12949i.b().g();
        e9 e9Var = new e9(this);
        e9Var.o();
        this.f12943c = e9Var;
        this.f12949i.f().a(this.f12941a);
        x8 x8Var = new x8(this);
        x8Var.o();
        this.f12946f = x8Var;
        o6 o6Var = new o6(this);
        o6Var.o();
        this.f12948h = o6Var;
        c8 c8Var = new c8(this);
        c8Var.o();
        this.f12945e = c8Var;
        this.f12944d = new m3(this);
        if (this.o != this.p) {
            this.f12949i.zzab().q().a("Not all upload components initialized", Integer.valueOf(this.o), Integer.valueOf(this.p));
        }
        this.f12950j = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:140:0x04a7 A[Catch: all -> 0x04d2, TryCatch #0 {all -> 0x04d2, blocks: (B:30:0x00b8, B:32:0x00c8, B:34:0x00d6, B:36:0x00e0, B:38:0x00e4, B:41:0x00f5, B:43:0x010d, B:45:0x0134, B:47:0x0140, B:49:0x0157, B:51:0x017f, B:54:0x0186, B:56:0x01c9, B:60:0x01f5, B:63:0x0202, B:65:0x020c, B:66:0x0261, B:68:0x0266, B:70:0x0285, B:73:0x0299, B:75:0x02c2, B:76:0x02d0, B:78:0x0303, B:79:0x030b, B:81:0x030f, B:82:0x0312, B:84:0x031e, B:85:0x03d8, B:87:0x03f3, B:88:0x03f6, B:89:0x0464, B:91:0x0474, B:93:0x048c, B:94:0x0493, B:95:0x04c3, B:100:0x0335, B:102:0x0360, B:104:0x0368, B:106:0x0370, B:107:0x0378, B:110:0x0383, B:112:0x0395, B:122:0x03a8, B:114:0x03c0, B:116:0x03c6, B:117:0x03cb, B:119:0x03d1, B:128:0x0348, B:132:0x040f, B:134:0x0442, B:135:0x044a, B:137:0x044e, B:138:0x0451, B:140:0x04a7, B:142:0x04ab, B:144:0x0275, B:146:0x022d, B:148:0x0234, B:150:0x0240, B:153:0x01df, B:158:0x0117, B:162:0x0121), top: B:29:0x00b8, inners: #1, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:143:0x0273  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x01f5 A[Catch: all -> 0x04d2, TRY_LEAVE, TryCatch #0 {all -> 0x04d2, blocks: (B:30:0x00b8, B:32:0x00c8, B:34:0x00d6, B:36:0x00e0, B:38:0x00e4, B:41:0x00f5, B:43:0x010d, B:45:0x0134, B:47:0x0140, B:49:0x0157, B:51:0x017f, B:54:0x0186, B:56:0x01c9, B:60:0x01f5, B:63:0x0202, B:65:0x020c, B:66:0x0261, B:68:0x0266, B:70:0x0285, B:73:0x0299, B:75:0x02c2, B:76:0x02d0, B:78:0x0303, B:79:0x030b, B:81:0x030f, B:82:0x0312, B:84:0x031e, B:85:0x03d8, B:87:0x03f3, B:88:0x03f6, B:89:0x0464, B:91:0x0474, B:93:0x048c, B:94:0x0493, B:95:0x04c3, B:100:0x0335, B:102:0x0360, B:104:0x0368, B:106:0x0370, B:107:0x0378, B:110:0x0383, B:112:0x0395, B:122:0x03a8, B:114:0x03c0, B:116:0x03c6, B:117:0x03cb, B:119:0x03d1, B:128:0x0348, B:132:0x040f, B:134:0x0442, B:135:0x044a, B:137:0x044e, B:138:0x0451, B:140:0x04a7, B:142:0x04ab, B:144:0x0275, B:146:0x022d, B:148:0x0234, B:150:0x0240, B:153:0x01df, B:158:0x0117, B:162:0x0121), top: B:29:0x00b8, inners: #1, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0266 A[Catch: all -> 0x04d2, TryCatch #0 {all -> 0x04d2, blocks: (B:30:0x00b8, B:32:0x00c8, B:34:0x00d6, B:36:0x00e0, B:38:0x00e4, B:41:0x00f5, B:43:0x010d, B:45:0x0134, B:47:0x0140, B:49:0x0157, B:51:0x017f, B:54:0x0186, B:56:0x01c9, B:60:0x01f5, B:63:0x0202, B:65:0x020c, B:66:0x0261, B:68:0x0266, B:70:0x0285, B:73:0x0299, B:75:0x02c2, B:76:0x02d0, B:78:0x0303, B:79:0x030b, B:81:0x030f, B:82:0x0312, B:84:0x031e, B:85:0x03d8, B:87:0x03f3, B:88:0x03f6, B:89:0x0464, B:91:0x0474, B:93:0x048c, B:94:0x0493, B:95:0x04c3, B:100:0x0335, B:102:0x0360, B:104:0x0368, B:106:0x0370, B:107:0x0378, B:110:0x0383, B:112:0x0395, B:122:0x03a8, B:114:0x03c0, B:116:0x03c6, B:117:0x03cb, B:119:0x03d1, B:128:0x0348, B:132:0x040f, B:134:0x0442, B:135:0x044a, B:137:0x044e, B:138:0x0451, B:140:0x04a7, B:142:0x04ab, B:144:0x0275, B:146:0x022d, B:148:0x0234, B:150:0x0240, B:153:0x01df, B:158:0x0117, B:162:0x0121), top: B:29:0x00b8, inners: #1, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0285 A[Catch: all -> 0x04d2, TRY_LEAVE, TryCatch #0 {all -> 0x04d2, blocks: (B:30:0x00b8, B:32:0x00c8, B:34:0x00d6, B:36:0x00e0, B:38:0x00e4, B:41:0x00f5, B:43:0x010d, B:45:0x0134, B:47:0x0140, B:49:0x0157, B:51:0x017f, B:54:0x0186, B:56:0x01c9, B:60:0x01f5, B:63:0x0202, B:65:0x020c, B:66:0x0261, B:68:0x0266, B:70:0x0285, B:73:0x0299, B:75:0x02c2, B:76:0x02d0, B:78:0x0303, B:79:0x030b, B:81:0x030f, B:82:0x0312, B:84:0x031e, B:85:0x03d8, B:87:0x03f3, B:88:0x03f6, B:89:0x0464, B:91:0x0474, B:93:0x048c, B:94:0x0493, B:95:0x04c3, B:100:0x0335, B:102:0x0360, B:104:0x0368, B:106:0x0370, B:107:0x0378, B:110:0x0383, B:112:0x0395, B:122:0x03a8, B:114:0x03c0, B:116:0x03c6, B:117:0x03cb, B:119:0x03d1, B:128:0x0348, B:132:0x040f, B:134:0x0442, B:135:0x044a, B:137:0x044e, B:138:0x0451, B:140:0x04a7, B:142:0x04ab, B:144:0x0275, B:146:0x022d, B:148:0x0234, B:150:0x0240, B:153:0x01df, B:158:0x0117, B:162:0x0121), top: B:29:0x00b8, inners: #1, #2 }] */
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void c(com.google.android.gms.measurement.internal.zzn r22) {
        /*
            Method dump skipped, instructions count: 1243
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.g8.c(com.google.android.gms.measurement.internal.zzn):void");
    }

    @Override // com.google.android.gms.measurement.internal.h5
    public final com.google.android.gms.common.util.e a() {
        return this.f12949i.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final void a(zzai zzaiVar, String str) {
        a4 b2 = g().b(str);
        if (b2 != null && !TextUtils.isEmpty(b2.k())) {
            Boolean b3 = b(b2);
            if (b3 == null) {
                if (!"_ui".equals(zzaiVar.f13377e)) {
                    this.f12949i.zzab().t().a("Could not find package. appId", f3.a(str));
                }
            } else if (!b3.booleanValue()) {
                this.f12949i.zzab().q().a("App version does not match; dropping event. appId", f3.a(str));
                return;
            }
            a(zzaiVar, new zzn(str, b2.c(), b2.k(), b2.l(), b2.m(), b2.n(), b2.o(), (String) null, b2.d(), false, b2.b(), b2.C(), 0L, 0, b2.D(), b2.E(), false, b2.g(), b2.F(), b2.p(), b2.G()));
            return;
        }
        this.f12949i.zzab().x().a("No app data available; dropping event", str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final void a(zzai zzaiVar, zzn zznVar) {
        List<zzq> a2;
        List<zzq> a3;
        List<zzq> a4;
        List<String> list;
        zzai zzaiVar2 = zzaiVar;
        com.google.android.gms.common.internal.m.a(zznVar);
        com.google.android.gms.common.internal.m.b(zznVar.f13391e);
        z();
        k();
        String str = zznVar.f13391e;
        long j2 = zzaiVar2.f13380h;
        if (e().a(zzaiVar2, zznVar)) {
            if (!zznVar.f13398l) {
                e(zznVar);
                return;
            }
            if (this.f12949i.f().e(str, j.w0) && (list = zznVar.y) != null) {
                if (list.contains(zzaiVar2.f13377e)) {
                    Bundle j3 = zzaiVar2.f13378f.j();
                    j3.putLong("ga_safelisted", 1L);
                    zzaiVar2 = new zzai(zzaiVar2.f13377e, new zzah(j3), zzaiVar2.f13379g, zzaiVar2.f13380h);
                } else {
                    this.f12949i.zzab().x().a("Dropping non-safelisted event. appId, event name, origin", str, zzaiVar2.f13377e, zzaiVar2.f13379g);
                    return;
                }
            }
            g().s();
            try {
                e9 g2 = g();
                com.google.android.gms.common.internal.m.b(str);
                g2.g();
                g2.q();
                if (j2 < 0) {
                    g2.zzab().t().a("Invalid time querying timed out conditional properties", f3.a(str), Long.valueOf(j2));
                    a2 = Collections.emptyList();
                } else {
                    a2 = g2.a("active=0 and app_id=? and abs(? - creation_timestamp) > trigger_timeout", new String[]{str, String.valueOf(j2)});
                }
                for (zzq zzqVar : a2) {
                    if (zzqVar != null) {
                        this.f12949i.zzab().x().a("User property timed out", zzqVar.f13399e, this.f12949i.C().c(zzqVar.f13401g.f13385f), zzqVar.f13401g.j());
                        if (zzqVar.f13405k != null) {
                            b(new zzai(zzqVar.f13405k, j2), zznVar);
                        }
                        g().f(str, zzqVar.f13401g.f13385f);
                    }
                }
                e9 g3 = g();
                com.google.android.gms.common.internal.m.b(str);
                g3.g();
                g3.q();
                if (j2 < 0) {
                    g3.zzab().t().a("Invalid time querying expired conditional properties", f3.a(str), Long.valueOf(j2));
                    a3 = Collections.emptyList();
                } else {
                    a3 = g3.a("active<>0 and app_id=? and abs(? - triggered_timestamp) > time_to_live", new String[]{str, String.valueOf(j2)});
                }
                ArrayList arrayList = new ArrayList(a3.size());
                for (zzq zzqVar2 : a3) {
                    if (zzqVar2 != null) {
                        this.f12949i.zzab().x().a("User property expired", zzqVar2.f13399e, this.f12949i.C().c(zzqVar2.f13401g.f13385f), zzqVar2.f13401g.j());
                        g().c(str, zzqVar2.f13401g.f13385f);
                        if (zzqVar2.o != null) {
                            arrayList.add(zzqVar2.o);
                        }
                        g().f(str, zzqVar2.f13401g.f13385f);
                    }
                }
                int size = arrayList.size();
                int i2 = 0;
                while (i2 < size) {
                    Object obj = arrayList.get(i2);
                    i2++;
                    b(new zzai((zzai) obj, j2), zznVar);
                }
                e9 g4 = g();
                String str2 = zzaiVar2.f13377e;
                com.google.android.gms.common.internal.m.b(str);
                com.google.android.gms.common.internal.m.b(str2);
                g4.g();
                g4.q();
                if (j2 < 0) {
                    g4.zzab().t().a("Invalid time querying triggered conditional properties", f3.a(str), g4.i().a(str2), Long.valueOf(j2));
                    a4 = Collections.emptyList();
                } else {
                    a4 = g4.a("active=0 and app_id=? and trigger_event_name=? and abs(? - creation_timestamp) <= trigger_timeout", new String[]{str, str2, String.valueOf(j2)});
                }
                ArrayList arrayList2 = new ArrayList(a4.size());
                for (zzq zzqVar3 : a4) {
                    if (zzqVar3 != null) {
                        zzjn zzjnVar = zzqVar3.f13401g;
                        o8 o8Var = new o8(zzqVar3.f13399e, zzqVar3.f13400f, zzjnVar.f13385f, j2, zzjnVar.j());
                        if (g().a(o8Var)) {
                            this.f12949i.zzab().x().a("User property triggered", zzqVar3.f13399e, this.f12949i.C().c(o8Var.f13131c), o8Var.f13133e);
                        } else {
                            this.f12949i.zzab().q().a("Too many active user properties, ignoring", f3.a(zzqVar3.f13399e), this.f12949i.C().c(o8Var.f13131c), o8Var.f13133e);
                        }
                        if (zzqVar3.m != null) {
                            arrayList2.add(zzqVar3.m);
                        }
                        zzqVar3.f13401g = new zzjn(o8Var);
                        zzqVar3.f13403i = true;
                        g().a(zzqVar3);
                    }
                }
                b(zzaiVar2, zznVar);
                int size2 = arrayList2.size();
                int i3 = 0;
                while (i3 < size2) {
                    Object obj2 = arrayList2.get(i3);
                    i3++;
                    b(new zzai((zzai) obj2, j2), zznVar);
                }
                g().v();
            } finally {
                g().t();
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:441:0x0c52, code lost:
    
        if (r26 != r14) goto L465;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:122:0x05e5 A[Catch: all -> 0x0f07, TryCatch #7 {all -> 0x0f07, blocks: (B:3:0x0009, B:19:0x0085, B:20:0x0290, B:22:0x0294, B:27:0x02a2, B:28:0x02ca, B:31:0x02da, B:34:0x02fe, B:36:0x0335, B:41:0x034b, B:43:0x0355, B:46:0x07d3, B:48:0x037a, B:51:0x0390, B:68:0x03f2, B:71:0x03fc, B:73:0x040a, B:75:0x0453, B:76:0x0428, B:78:0x0438, B:85:0x0460, B:87:0x0493, B:88:0x04bf, B:90:0x04f2, B:91:0x04f8, B:94:0x0504, B:96:0x0539, B:97:0x0556, B:99:0x055c, B:101:0x056a, B:103:0x057d, B:104:0x0572, B:112:0x0584, B:114:0x058a, B:115:0x05a6, B:116:0x05bf, B:119:0x05d3, B:120:0x05df, B:122:0x05e5, B:126:0x060c, B:127:0x05f9, B:135:0x0612, B:137:0x061e, B:139:0x062a, B:144:0x067b, B:145:0x069a, B:147:0x06ae, B:149:0x06b8, B:152:0x06cd, B:154:0x06e0, B:156:0x06ee, B:159:0x075c, B:161:0x0766, B:163:0x076c, B:164:0x0786, B:166:0x0799, B:167:0x07b3, B:168:0x07bc, B:174:0x0704, B:176:0x0712, B:179:0x0725, B:181:0x0738, B:183:0x0746, B:186:0x064d, B:190:0x0661, B:192:0x0667, B:194:0x0672, B:205:0x03b2, B:208:0x03bc, B:211:0x03c6, B:220:0x07e9, B:222:0x07f7, B:224:0x0802, B:226:0x0834, B:227:0x080a, B:229:0x0813, B:231:0x0819, B:233:0x0825, B:235:0x082f, B:242:0x0839, B:244:0x084f, B:245:0x0857, B:247:0x085d, B:252:0x0874, B:253:0x0881, B:254:0x08a5, B:256:0x08b7, B:258:0x08d6, B:260:0x08e4, B:262:0x08ea, B:264:0x08f4, B:265:0x0923, B:267:0x0929, B:271:0x0939, B:273:0x0944, B:269:0x093e, B:276:0x0947, B:363:0x09a9, B:365:0x09c4, B:366:0x09d5, B:368:0x09d9, B:370:0x09e5, B:371:0x09ed, B:373:0x09f1, B:375:0x09f9, B:376:0x0a07, B:377:0x0a12, B:385:0x0a54, B:386:0x0a5c, B:388:0x0a62, B:392:0x0a74, B:394:0x0a78, B:398:0x0aae, B:400:0x0ac4, B:403:0x0af7, B:405:0x0b0b, B:407:0x0b3a, B:414:0x0ba5, B:416:0x0bb6, B:418:0x0bba, B:420:0x0bbe, B:422:0x0bc2, B:423:0x0bce, B:426:0x0bd9, B:428:0x0bf5, B:429:0x0bfe, B:438:0x0c34, B:458:0x0b60, B:461:0x0a86, B:463:0x0a8a, B:465:0x0a94, B:467:0x0a98, B:483:0x0886, B:485:0x0898, B:505:0x0134, B:526:0x01cc, B:543:0x0207, B:539:0x0227, B:554:0x028d, B:572:0x024b, B:608:0x00e4, B:509:0x0148), top: B:2:0x0009, inners: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:135:0x0612 A[Catch: all -> 0x0f07, TryCatch #7 {all -> 0x0f07, blocks: (B:3:0x0009, B:19:0x0085, B:20:0x0290, B:22:0x0294, B:27:0x02a2, B:28:0x02ca, B:31:0x02da, B:34:0x02fe, B:36:0x0335, B:41:0x034b, B:43:0x0355, B:46:0x07d3, B:48:0x037a, B:51:0x0390, B:68:0x03f2, B:71:0x03fc, B:73:0x040a, B:75:0x0453, B:76:0x0428, B:78:0x0438, B:85:0x0460, B:87:0x0493, B:88:0x04bf, B:90:0x04f2, B:91:0x04f8, B:94:0x0504, B:96:0x0539, B:97:0x0556, B:99:0x055c, B:101:0x056a, B:103:0x057d, B:104:0x0572, B:112:0x0584, B:114:0x058a, B:115:0x05a6, B:116:0x05bf, B:119:0x05d3, B:120:0x05df, B:122:0x05e5, B:126:0x060c, B:127:0x05f9, B:135:0x0612, B:137:0x061e, B:139:0x062a, B:144:0x067b, B:145:0x069a, B:147:0x06ae, B:149:0x06b8, B:152:0x06cd, B:154:0x06e0, B:156:0x06ee, B:159:0x075c, B:161:0x0766, B:163:0x076c, B:164:0x0786, B:166:0x0799, B:167:0x07b3, B:168:0x07bc, B:174:0x0704, B:176:0x0712, B:179:0x0725, B:181:0x0738, B:183:0x0746, B:186:0x064d, B:190:0x0661, B:192:0x0667, B:194:0x0672, B:205:0x03b2, B:208:0x03bc, B:211:0x03c6, B:220:0x07e9, B:222:0x07f7, B:224:0x0802, B:226:0x0834, B:227:0x080a, B:229:0x0813, B:231:0x0819, B:233:0x0825, B:235:0x082f, B:242:0x0839, B:244:0x084f, B:245:0x0857, B:247:0x085d, B:252:0x0874, B:253:0x0881, B:254:0x08a5, B:256:0x08b7, B:258:0x08d6, B:260:0x08e4, B:262:0x08ea, B:264:0x08f4, B:265:0x0923, B:267:0x0929, B:271:0x0939, B:273:0x0944, B:269:0x093e, B:276:0x0947, B:363:0x09a9, B:365:0x09c4, B:366:0x09d5, B:368:0x09d9, B:370:0x09e5, B:371:0x09ed, B:373:0x09f1, B:375:0x09f9, B:376:0x0a07, B:377:0x0a12, B:385:0x0a54, B:386:0x0a5c, B:388:0x0a62, B:392:0x0a74, B:394:0x0a78, B:398:0x0aae, B:400:0x0ac4, B:403:0x0af7, B:405:0x0b0b, B:407:0x0b3a, B:414:0x0ba5, B:416:0x0bb6, B:418:0x0bba, B:420:0x0bbe, B:422:0x0bc2, B:423:0x0bce, B:426:0x0bd9, B:428:0x0bf5, B:429:0x0bfe, B:438:0x0c34, B:458:0x0b60, B:461:0x0a86, B:463:0x0a8a, B:465:0x0a94, B:467:0x0a98, B:483:0x0886, B:485:0x0898, B:505:0x0134, B:526:0x01cc, B:543:0x0207, B:539:0x0227, B:554:0x028d, B:572:0x024b, B:608:0x00e4, B:509:0x0148), top: B:2:0x0009, inners: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:147:0x06ae A[Catch: all -> 0x0f07, TryCatch #7 {all -> 0x0f07, blocks: (B:3:0x0009, B:19:0x0085, B:20:0x0290, B:22:0x0294, B:27:0x02a2, B:28:0x02ca, B:31:0x02da, B:34:0x02fe, B:36:0x0335, B:41:0x034b, B:43:0x0355, B:46:0x07d3, B:48:0x037a, B:51:0x0390, B:68:0x03f2, B:71:0x03fc, B:73:0x040a, B:75:0x0453, B:76:0x0428, B:78:0x0438, B:85:0x0460, B:87:0x0493, B:88:0x04bf, B:90:0x04f2, B:91:0x04f8, B:94:0x0504, B:96:0x0539, B:97:0x0556, B:99:0x055c, B:101:0x056a, B:103:0x057d, B:104:0x0572, B:112:0x0584, B:114:0x058a, B:115:0x05a6, B:116:0x05bf, B:119:0x05d3, B:120:0x05df, B:122:0x05e5, B:126:0x060c, B:127:0x05f9, B:135:0x0612, B:137:0x061e, B:139:0x062a, B:144:0x067b, B:145:0x069a, B:147:0x06ae, B:149:0x06b8, B:152:0x06cd, B:154:0x06e0, B:156:0x06ee, B:159:0x075c, B:161:0x0766, B:163:0x076c, B:164:0x0786, B:166:0x0799, B:167:0x07b3, B:168:0x07bc, B:174:0x0704, B:176:0x0712, B:179:0x0725, B:181:0x0738, B:183:0x0746, B:186:0x064d, B:190:0x0661, B:192:0x0667, B:194:0x0672, B:205:0x03b2, B:208:0x03bc, B:211:0x03c6, B:220:0x07e9, B:222:0x07f7, B:224:0x0802, B:226:0x0834, B:227:0x080a, B:229:0x0813, B:231:0x0819, B:233:0x0825, B:235:0x082f, B:242:0x0839, B:244:0x084f, B:245:0x0857, B:247:0x085d, B:252:0x0874, B:253:0x0881, B:254:0x08a5, B:256:0x08b7, B:258:0x08d6, B:260:0x08e4, B:262:0x08ea, B:264:0x08f4, B:265:0x0923, B:267:0x0929, B:271:0x0939, B:273:0x0944, B:269:0x093e, B:276:0x0947, B:363:0x09a9, B:365:0x09c4, B:366:0x09d5, B:368:0x09d9, B:370:0x09e5, B:371:0x09ed, B:373:0x09f1, B:375:0x09f9, B:376:0x0a07, B:377:0x0a12, B:385:0x0a54, B:386:0x0a5c, B:388:0x0a62, B:392:0x0a74, B:394:0x0a78, B:398:0x0aae, B:400:0x0ac4, B:403:0x0af7, B:405:0x0b0b, B:407:0x0b3a, B:414:0x0ba5, B:416:0x0bb6, B:418:0x0bba, B:420:0x0bbe, B:422:0x0bc2, B:423:0x0bce, B:426:0x0bd9, B:428:0x0bf5, B:429:0x0bfe, B:438:0x0c34, B:458:0x0b60, B:461:0x0a86, B:463:0x0a8a, B:465:0x0a94, B:467:0x0a98, B:483:0x0886, B:485:0x0898, B:505:0x0134, B:526:0x01cc, B:543:0x0207, B:539:0x0227, B:554:0x028d, B:572:0x024b, B:608:0x00e4, B:509:0x0148), top: B:2:0x0009, inners: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:159:0x075c A[Catch: all -> 0x0f07, TryCatch #7 {all -> 0x0f07, blocks: (B:3:0x0009, B:19:0x0085, B:20:0x0290, B:22:0x0294, B:27:0x02a2, B:28:0x02ca, B:31:0x02da, B:34:0x02fe, B:36:0x0335, B:41:0x034b, B:43:0x0355, B:46:0x07d3, B:48:0x037a, B:51:0x0390, B:68:0x03f2, B:71:0x03fc, B:73:0x040a, B:75:0x0453, B:76:0x0428, B:78:0x0438, B:85:0x0460, B:87:0x0493, B:88:0x04bf, B:90:0x04f2, B:91:0x04f8, B:94:0x0504, B:96:0x0539, B:97:0x0556, B:99:0x055c, B:101:0x056a, B:103:0x057d, B:104:0x0572, B:112:0x0584, B:114:0x058a, B:115:0x05a6, B:116:0x05bf, B:119:0x05d3, B:120:0x05df, B:122:0x05e5, B:126:0x060c, B:127:0x05f9, B:135:0x0612, B:137:0x061e, B:139:0x062a, B:144:0x067b, B:145:0x069a, B:147:0x06ae, B:149:0x06b8, B:152:0x06cd, B:154:0x06e0, B:156:0x06ee, B:159:0x075c, B:161:0x0766, B:163:0x076c, B:164:0x0786, B:166:0x0799, B:167:0x07b3, B:168:0x07bc, B:174:0x0704, B:176:0x0712, B:179:0x0725, B:181:0x0738, B:183:0x0746, B:186:0x064d, B:190:0x0661, B:192:0x0667, B:194:0x0672, B:205:0x03b2, B:208:0x03bc, B:211:0x03c6, B:220:0x07e9, B:222:0x07f7, B:224:0x0802, B:226:0x0834, B:227:0x080a, B:229:0x0813, B:231:0x0819, B:233:0x0825, B:235:0x082f, B:242:0x0839, B:244:0x084f, B:245:0x0857, B:247:0x085d, B:252:0x0874, B:253:0x0881, B:254:0x08a5, B:256:0x08b7, B:258:0x08d6, B:260:0x08e4, B:262:0x08ea, B:264:0x08f4, B:265:0x0923, B:267:0x0929, B:271:0x0939, B:273:0x0944, B:269:0x093e, B:276:0x0947, B:363:0x09a9, B:365:0x09c4, B:366:0x09d5, B:368:0x09d9, B:370:0x09e5, B:371:0x09ed, B:373:0x09f1, B:375:0x09f9, B:376:0x0a07, B:377:0x0a12, B:385:0x0a54, B:386:0x0a5c, B:388:0x0a62, B:392:0x0a74, B:394:0x0a78, B:398:0x0aae, B:400:0x0ac4, B:403:0x0af7, B:405:0x0b0b, B:407:0x0b3a, B:414:0x0ba5, B:416:0x0bb6, B:418:0x0bba, B:420:0x0bbe, B:422:0x0bc2, B:423:0x0bce, B:426:0x0bd9, B:428:0x0bf5, B:429:0x0bfe, B:438:0x0c34, B:458:0x0b60, B:461:0x0a86, B:463:0x0a8a, B:465:0x0a94, B:467:0x0a98, B:483:0x0886, B:485:0x0898, B:505:0x0134, B:526:0x01cc, B:543:0x0207, B:539:0x0227, B:554:0x028d, B:572:0x024b, B:608:0x00e4, B:509:0x0148), top: B:2:0x0009, inners: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:163:0x076c A[Catch: all -> 0x0f07, TryCatch #7 {all -> 0x0f07, blocks: (B:3:0x0009, B:19:0x0085, B:20:0x0290, B:22:0x0294, B:27:0x02a2, B:28:0x02ca, B:31:0x02da, B:34:0x02fe, B:36:0x0335, B:41:0x034b, B:43:0x0355, B:46:0x07d3, B:48:0x037a, B:51:0x0390, B:68:0x03f2, B:71:0x03fc, B:73:0x040a, B:75:0x0453, B:76:0x0428, B:78:0x0438, B:85:0x0460, B:87:0x0493, B:88:0x04bf, B:90:0x04f2, B:91:0x04f8, B:94:0x0504, B:96:0x0539, B:97:0x0556, B:99:0x055c, B:101:0x056a, B:103:0x057d, B:104:0x0572, B:112:0x0584, B:114:0x058a, B:115:0x05a6, B:116:0x05bf, B:119:0x05d3, B:120:0x05df, B:122:0x05e5, B:126:0x060c, B:127:0x05f9, B:135:0x0612, B:137:0x061e, B:139:0x062a, B:144:0x067b, B:145:0x069a, B:147:0x06ae, B:149:0x06b8, B:152:0x06cd, B:154:0x06e0, B:156:0x06ee, B:159:0x075c, B:161:0x0766, B:163:0x076c, B:164:0x0786, B:166:0x0799, B:167:0x07b3, B:168:0x07bc, B:174:0x0704, B:176:0x0712, B:179:0x0725, B:181:0x0738, B:183:0x0746, B:186:0x064d, B:190:0x0661, B:192:0x0667, B:194:0x0672, B:205:0x03b2, B:208:0x03bc, B:211:0x03c6, B:220:0x07e9, B:222:0x07f7, B:224:0x0802, B:226:0x0834, B:227:0x080a, B:229:0x0813, B:231:0x0819, B:233:0x0825, B:235:0x082f, B:242:0x0839, B:244:0x084f, B:245:0x0857, B:247:0x085d, B:252:0x0874, B:253:0x0881, B:254:0x08a5, B:256:0x08b7, B:258:0x08d6, B:260:0x08e4, B:262:0x08ea, B:264:0x08f4, B:265:0x0923, B:267:0x0929, B:271:0x0939, B:273:0x0944, B:269:0x093e, B:276:0x0947, B:363:0x09a9, B:365:0x09c4, B:366:0x09d5, B:368:0x09d9, B:370:0x09e5, B:371:0x09ed, B:373:0x09f1, B:375:0x09f9, B:376:0x0a07, B:377:0x0a12, B:385:0x0a54, B:386:0x0a5c, B:388:0x0a62, B:392:0x0a74, B:394:0x0a78, B:398:0x0aae, B:400:0x0ac4, B:403:0x0af7, B:405:0x0b0b, B:407:0x0b3a, B:414:0x0ba5, B:416:0x0bb6, B:418:0x0bba, B:420:0x0bbe, B:422:0x0bc2, B:423:0x0bce, B:426:0x0bd9, B:428:0x0bf5, B:429:0x0bfe, B:438:0x0c34, B:458:0x0b60, B:461:0x0a86, B:463:0x0a8a, B:465:0x0a94, B:467:0x0a98, B:483:0x0886, B:485:0x0898, B:505:0x0134, B:526:0x01cc, B:543:0x0207, B:539:0x0227, B:554:0x028d, B:572:0x024b, B:608:0x00e4, B:509:0x0148), top: B:2:0x0009, inners: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:164:0x0786 A[Catch: all -> 0x0f07, TryCatch #7 {all -> 0x0f07, blocks: (B:3:0x0009, B:19:0x0085, B:20:0x0290, B:22:0x0294, B:27:0x02a2, B:28:0x02ca, B:31:0x02da, B:34:0x02fe, B:36:0x0335, B:41:0x034b, B:43:0x0355, B:46:0x07d3, B:48:0x037a, B:51:0x0390, B:68:0x03f2, B:71:0x03fc, B:73:0x040a, B:75:0x0453, B:76:0x0428, B:78:0x0438, B:85:0x0460, B:87:0x0493, B:88:0x04bf, B:90:0x04f2, B:91:0x04f8, B:94:0x0504, B:96:0x0539, B:97:0x0556, B:99:0x055c, B:101:0x056a, B:103:0x057d, B:104:0x0572, B:112:0x0584, B:114:0x058a, B:115:0x05a6, B:116:0x05bf, B:119:0x05d3, B:120:0x05df, B:122:0x05e5, B:126:0x060c, B:127:0x05f9, B:135:0x0612, B:137:0x061e, B:139:0x062a, B:144:0x067b, B:145:0x069a, B:147:0x06ae, B:149:0x06b8, B:152:0x06cd, B:154:0x06e0, B:156:0x06ee, B:159:0x075c, B:161:0x0766, B:163:0x076c, B:164:0x0786, B:166:0x0799, B:167:0x07b3, B:168:0x07bc, B:174:0x0704, B:176:0x0712, B:179:0x0725, B:181:0x0738, B:183:0x0746, B:186:0x064d, B:190:0x0661, B:192:0x0667, B:194:0x0672, B:205:0x03b2, B:208:0x03bc, B:211:0x03c6, B:220:0x07e9, B:222:0x07f7, B:224:0x0802, B:226:0x0834, B:227:0x080a, B:229:0x0813, B:231:0x0819, B:233:0x0825, B:235:0x082f, B:242:0x0839, B:244:0x084f, B:245:0x0857, B:247:0x085d, B:252:0x0874, B:253:0x0881, B:254:0x08a5, B:256:0x08b7, B:258:0x08d6, B:260:0x08e4, B:262:0x08ea, B:264:0x08f4, B:265:0x0923, B:267:0x0929, B:271:0x0939, B:273:0x0944, B:269:0x093e, B:276:0x0947, B:363:0x09a9, B:365:0x09c4, B:366:0x09d5, B:368:0x09d9, B:370:0x09e5, B:371:0x09ed, B:373:0x09f1, B:375:0x09f9, B:376:0x0a07, B:377:0x0a12, B:385:0x0a54, B:386:0x0a5c, B:388:0x0a62, B:392:0x0a74, B:394:0x0a78, B:398:0x0aae, B:400:0x0ac4, B:403:0x0af7, B:405:0x0b0b, B:407:0x0b3a, B:414:0x0ba5, B:416:0x0bb6, B:418:0x0bba, B:420:0x0bbe, B:422:0x0bc2, B:423:0x0bce, B:426:0x0bd9, B:428:0x0bf5, B:429:0x0bfe, B:438:0x0c34, B:458:0x0b60, B:461:0x0a86, B:463:0x0a8a, B:465:0x0a94, B:467:0x0a98, B:483:0x0886, B:485:0x0898, B:505:0x0134, B:526:0x01cc, B:543:0x0207, B:539:0x0227, B:554:0x028d, B:572:0x024b, B:608:0x00e4, B:509:0x0148), top: B:2:0x0009, inners: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:185:0x0756  */
    /* JADX WARN: Removed duplicated region for block: B:203:0x03df  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0294 A[Catch: all -> 0x0f07, TryCatch #7 {all -> 0x0f07, blocks: (B:3:0x0009, B:19:0x0085, B:20:0x0290, B:22:0x0294, B:27:0x02a2, B:28:0x02ca, B:31:0x02da, B:34:0x02fe, B:36:0x0335, B:41:0x034b, B:43:0x0355, B:46:0x07d3, B:48:0x037a, B:51:0x0390, B:68:0x03f2, B:71:0x03fc, B:73:0x040a, B:75:0x0453, B:76:0x0428, B:78:0x0438, B:85:0x0460, B:87:0x0493, B:88:0x04bf, B:90:0x04f2, B:91:0x04f8, B:94:0x0504, B:96:0x0539, B:97:0x0556, B:99:0x055c, B:101:0x056a, B:103:0x057d, B:104:0x0572, B:112:0x0584, B:114:0x058a, B:115:0x05a6, B:116:0x05bf, B:119:0x05d3, B:120:0x05df, B:122:0x05e5, B:126:0x060c, B:127:0x05f9, B:135:0x0612, B:137:0x061e, B:139:0x062a, B:144:0x067b, B:145:0x069a, B:147:0x06ae, B:149:0x06b8, B:152:0x06cd, B:154:0x06e0, B:156:0x06ee, B:159:0x075c, B:161:0x0766, B:163:0x076c, B:164:0x0786, B:166:0x0799, B:167:0x07b3, B:168:0x07bc, B:174:0x0704, B:176:0x0712, B:179:0x0725, B:181:0x0738, B:183:0x0746, B:186:0x064d, B:190:0x0661, B:192:0x0667, B:194:0x0672, B:205:0x03b2, B:208:0x03bc, B:211:0x03c6, B:220:0x07e9, B:222:0x07f7, B:224:0x0802, B:226:0x0834, B:227:0x080a, B:229:0x0813, B:231:0x0819, B:233:0x0825, B:235:0x082f, B:242:0x0839, B:244:0x084f, B:245:0x0857, B:247:0x085d, B:252:0x0874, B:253:0x0881, B:254:0x08a5, B:256:0x08b7, B:258:0x08d6, B:260:0x08e4, B:262:0x08ea, B:264:0x08f4, B:265:0x0923, B:267:0x0929, B:271:0x0939, B:273:0x0944, B:269:0x093e, B:276:0x0947, B:363:0x09a9, B:365:0x09c4, B:366:0x09d5, B:368:0x09d9, B:370:0x09e5, B:371:0x09ed, B:373:0x09f1, B:375:0x09f9, B:376:0x0a07, B:377:0x0a12, B:385:0x0a54, B:386:0x0a5c, B:388:0x0a62, B:392:0x0a74, B:394:0x0a78, B:398:0x0aae, B:400:0x0ac4, B:403:0x0af7, B:405:0x0b0b, B:407:0x0b3a, B:414:0x0ba5, B:416:0x0bb6, B:418:0x0bba, B:420:0x0bbe, B:422:0x0bc2, B:423:0x0bce, B:426:0x0bd9, B:428:0x0bf5, B:429:0x0bfe, B:438:0x0c34, B:458:0x0b60, B:461:0x0a86, B:463:0x0a8a, B:465:0x0a94, B:467:0x0a98, B:483:0x0886, B:485:0x0898, B:505:0x0134, B:526:0x01cc, B:543:0x0207, B:539:0x0227, B:554:0x028d, B:572:0x024b, B:608:0x00e4, B:509:0x0148), top: B:2:0x0009, inners: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x02a2 A[Catch: all -> 0x0f07, TryCatch #7 {all -> 0x0f07, blocks: (B:3:0x0009, B:19:0x0085, B:20:0x0290, B:22:0x0294, B:27:0x02a2, B:28:0x02ca, B:31:0x02da, B:34:0x02fe, B:36:0x0335, B:41:0x034b, B:43:0x0355, B:46:0x07d3, B:48:0x037a, B:51:0x0390, B:68:0x03f2, B:71:0x03fc, B:73:0x040a, B:75:0x0453, B:76:0x0428, B:78:0x0438, B:85:0x0460, B:87:0x0493, B:88:0x04bf, B:90:0x04f2, B:91:0x04f8, B:94:0x0504, B:96:0x0539, B:97:0x0556, B:99:0x055c, B:101:0x056a, B:103:0x057d, B:104:0x0572, B:112:0x0584, B:114:0x058a, B:115:0x05a6, B:116:0x05bf, B:119:0x05d3, B:120:0x05df, B:122:0x05e5, B:126:0x060c, B:127:0x05f9, B:135:0x0612, B:137:0x061e, B:139:0x062a, B:144:0x067b, B:145:0x069a, B:147:0x06ae, B:149:0x06b8, B:152:0x06cd, B:154:0x06e0, B:156:0x06ee, B:159:0x075c, B:161:0x0766, B:163:0x076c, B:164:0x0786, B:166:0x0799, B:167:0x07b3, B:168:0x07bc, B:174:0x0704, B:176:0x0712, B:179:0x0725, B:181:0x0738, B:183:0x0746, B:186:0x064d, B:190:0x0661, B:192:0x0667, B:194:0x0672, B:205:0x03b2, B:208:0x03bc, B:211:0x03c6, B:220:0x07e9, B:222:0x07f7, B:224:0x0802, B:226:0x0834, B:227:0x080a, B:229:0x0813, B:231:0x0819, B:233:0x0825, B:235:0x082f, B:242:0x0839, B:244:0x084f, B:245:0x0857, B:247:0x085d, B:252:0x0874, B:253:0x0881, B:254:0x08a5, B:256:0x08b7, B:258:0x08d6, B:260:0x08e4, B:262:0x08ea, B:264:0x08f4, B:265:0x0923, B:267:0x0929, B:271:0x0939, B:273:0x0944, B:269:0x093e, B:276:0x0947, B:363:0x09a9, B:365:0x09c4, B:366:0x09d5, B:368:0x09d9, B:370:0x09e5, B:371:0x09ed, B:373:0x09f1, B:375:0x09f9, B:376:0x0a07, B:377:0x0a12, B:385:0x0a54, B:386:0x0a5c, B:388:0x0a62, B:392:0x0a74, B:394:0x0a78, B:398:0x0aae, B:400:0x0ac4, B:403:0x0af7, B:405:0x0b0b, B:407:0x0b3a, B:414:0x0ba5, B:416:0x0bb6, B:418:0x0bba, B:420:0x0bbe, B:422:0x0bc2, B:423:0x0bce, B:426:0x0bd9, B:428:0x0bf5, B:429:0x0bfe, B:438:0x0c34, B:458:0x0b60, B:461:0x0a86, B:463:0x0a8a, B:465:0x0a94, B:467:0x0a98, B:483:0x0886, B:485:0x0898, B:505:0x0134, B:526:0x01cc, B:543:0x0207, B:539:0x0227, B:554:0x028d, B:572:0x024b, B:608:0x00e4, B:509:0x0148), top: B:2:0x0009, inners: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:487:0x0ee9  */
    /* JADX WARN: Removed duplicated region for block: B:503:0x0121 A[Catch: all -> 0x0139, SQLiteException -> 0x013f, TRY_ENTER, TRY_LEAVE, TryCatch #21 {SQLiteException -> 0x013f, all -> 0x0139, blocks: (B:503:0x0121, B:512:0x0156, B:516:0x0171), top: B:501:0x011f }] */
    /* JADX WARN: Removed duplicated region for block: B:506:0x0144 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:554:0x028d A[Catch: all -> 0x0f07, TRY_ENTER, TryCatch #7 {all -> 0x0f07, blocks: (B:3:0x0009, B:19:0x0085, B:20:0x0290, B:22:0x0294, B:27:0x02a2, B:28:0x02ca, B:31:0x02da, B:34:0x02fe, B:36:0x0335, B:41:0x034b, B:43:0x0355, B:46:0x07d3, B:48:0x037a, B:51:0x0390, B:68:0x03f2, B:71:0x03fc, B:73:0x040a, B:75:0x0453, B:76:0x0428, B:78:0x0438, B:85:0x0460, B:87:0x0493, B:88:0x04bf, B:90:0x04f2, B:91:0x04f8, B:94:0x0504, B:96:0x0539, B:97:0x0556, B:99:0x055c, B:101:0x056a, B:103:0x057d, B:104:0x0572, B:112:0x0584, B:114:0x058a, B:115:0x05a6, B:116:0x05bf, B:119:0x05d3, B:120:0x05df, B:122:0x05e5, B:126:0x060c, B:127:0x05f9, B:135:0x0612, B:137:0x061e, B:139:0x062a, B:144:0x067b, B:145:0x069a, B:147:0x06ae, B:149:0x06b8, B:152:0x06cd, B:154:0x06e0, B:156:0x06ee, B:159:0x075c, B:161:0x0766, B:163:0x076c, B:164:0x0786, B:166:0x0799, B:167:0x07b3, B:168:0x07bc, B:174:0x0704, B:176:0x0712, B:179:0x0725, B:181:0x0738, B:183:0x0746, B:186:0x064d, B:190:0x0661, B:192:0x0667, B:194:0x0672, B:205:0x03b2, B:208:0x03bc, B:211:0x03c6, B:220:0x07e9, B:222:0x07f7, B:224:0x0802, B:226:0x0834, B:227:0x080a, B:229:0x0813, B:231:0x0819, B:233:0x0825, B:235:0x082f, B:242:0x0839, B:244:0x084f, B:245:0x0857, B:247:0x085d, B:252:0x0874, B:253:0x0881, B:254:0x08a5, B:256:0x08b7, B:258:0x08d6, B:260:0x08e4, B:262:0x08ea, B:264:0x08f4, B:265:0x0923, B:267:0x0929, B:271:0x0939, B:273:0x0944, B:269:0x093e, B:276:0x0947, B:363:0x09a9, B:365:0x09c4, B:366:0x09d5, B:368:0x09d9, B:370:0x09e5, B:371:0x09ed, B:373:0x09f1, B:375:0x09f9, B:376:0x0a07, B:377:0x0a12, B:385:0x0a54, B:386:0x0a5c, B:388:0x0a62, B:392:0x0a74, B:394:0x0a78, B:398:0x0aae, B:400:0x0ac4, B:403:0x0af7, B:405:0x0b0b, B:407:0x0b3a, B:414:0x0ba5, B:416:0x0bb6, B:418:0x0bba, B:420:0x0bbe, B:422:0x0bc2, B:423:0x0bce, B:426:0x0bd9, B:428:0x0bf5, B:429:0x0bfe, B:438:0x0c34, B:458:0x0b60, B:461:0x0a86, B:463:0x0a8a, B:465:0x0a94, B:467:0x0a98, B:483:0x0886, B:485:0x0898, B:505:0x0134, B:526:0x01cc, B:543:0x0207, B:539:0x0227, B:554:0x028d, B:572:0x024b, B:608:0x00e4, B:509:0x0148), top: B:2:0x0009, inners: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:559:0x0f01 A[Catch: all -> 0x0f05, TRY_ENTER, TryCatch #4 {all -> 0x0f05, blocks: (B:295:0x0d67, B:296:0x0dde, B:298:0x0de4, B:300:0x0df9, B:303:0x0dfe, B:304:0x0e33, B:305:0x0e08, B:307:0x0e14, B:308:0x0e1a, B:309:0x0e44, B:310:0x0e5b, B:313:0x0e63, B:315:0x0e68, B:318:0x0e78, B:320:0x0e92, B:321:0x0eab, B:323:0x0eb3, B:324:0x0ed5, B:331:0x0ec4, B:332:0x0d81, B:334:0x0d89, B:336:0x0d93, B:337:0x0d9a, B:342:0x0daa, B:343:0x0db1, B:345:0x0dd0, B:346:0x0dd7, B:347:0x0dd4, B:348:0x0dae, B:350:0x0d97, B:488:0x0eea, B:559:0x0f01, B:560:0x0f04), top: B:5:0x0023, inners: #9 }] */
    /* JADX WARN: Removed duplicated region for block: B:561:? A[Catch: all -> 0x0f05, SYNTHETIC, TRY_LEAVE, TryCatch #4 {all -> 0x0f05, blocks: (B:295:0x0d67, B:296:0x0dde, B:298:0x0de4, B:300:0x0df9, B:303:0x0dfe, B:304:0x0e33, B:305:0x0e08, B:307:0x0e14, B:308:0x0e1a, B:309:0x0e44, B:310:0x0e5b, B:313:0x0e63, B:315:0x0e68, B:318:0x0e78, B:320:0x0e92, B:321:0x0eab, B:323:0x0eb3, B:324:0x0ed5, B:331:0x0ec4, B:332:0x0d81, B:334:0x0d89, B:336:0x0d93, B:337:0x0d9a, B:342:0x0daa, B:343:0x0db1, B:345:0x0dd0, B:346:0x0dd7, B:347:0x0dd4, B:348:0x0dae, B:350:0x0d97, B:488:0x0eea, B:559:0x0f01, B:560:0x0f04), top: B:5:0x0023, inners: #9 }] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x03d3  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x03de  */
    /* JADX WARN: Type inference failed for: r3v53 */
    /* JADX WARN: Type inference failed for: r3v54 */
    /* JADX WARN: Type inference failed for: r6v100 */
    /* JADX WARN: Type inference failed for: r6v101 */
    /* JADX WARN: Type inference failed for: r6v103 */
    /* JADX WARN: Type inference failed for: r6v107, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r6v108 */
    /* JADX WARN: Type inference failed for: r6v117, types: [boolean] */
    /* JADX WARN: Type inference failed for: r6v118, types: [boolean] */
    /* JADX WARN: Type inference failed for: r6v120, types: [com.google.android.gms.measurement.internal.h3] */
    /* JADX WARN: Type inference failed for: r6v99 */
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean a(java.lang.String r63, long r64) {
        /*
            Method dump skipped, instructions count: 3860
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.g8.a(java.lang.String, long):boolean");
    }

    @WorkerThread
    private final Boolean b(a4 a4Var) {
        try {
            if (a4Var.l() != -2147483648L) {
                if (a4Var.l() == com.google.android.gms.common.o.c.a(this.f12949i.getContext()).b(a4Var.f(), 0).versionCode) {
                    return true;
                }
            } else {
                String str = com.google.android.gms.common.o.c.a(this.f12949i.getContext()).b(a4Var.f(), 0).versionName;
                if (a4Var.k() != null && a4Var.k().equals(str)) {
                    return true;
                }
            }
            return false;
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final void b(zzjn zzjnVar, zzn zznVar) {
        z();
        k();
        if (TextUtils.isEmpty(zznVar.f13392f) && TextUtils.isEmpty(zznVar.v)) {
            return;
        }
        if (!zznVar.f13398l) {
            e(zznVar);
            return;
        }
        if (this.f12949i.f().e(zznVar.f13391e, j.j0)) {
            if ("_npa".equals(zzjnVar.f13385f) && zznVar.w != null) {
                this.f12949i.zzab().x().a("Falling back to manifest metadata value for ad personalization");
                a(new zzjn("_npa", this.f12949i.a().a(), Long.valueOf(zznVar.w.booleanValue() ? 1L : 0L), "auto"), zznVar);
                return;
            }
            this.f12949i.zzab().x().a("Removing user property", this.f12949i.C().c(zzjnVar.f13385f));
            g().s();
            try {
                e(zznVar);
                g().c(zznVar.f13391e, zzjnVar.f13385f);
                g().v();
                this.f12949i.zzab().x().a("User property removed", this.f12949i.C().c(zzjnVar.f13385f));
                return;
            } finally {
            }
        }
        this.f12949i.zzab().x().a("Removing user property", this.f12949i.C().c(zzjnVar.f13385f));
        g().s();
        try {
            e(zznVar);
            g().c(zznVar.f13391e, zzjnVar.f13385f);
            g().v();
            this.f12949i.zzab().x().a("User property removed", this.f12949i.C().c(zzjnVar.f13385f));
        } finally {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final void b(zzq zzqVar) {
        zzn a2 = a(zzqVar.f13399e);
        if (a2 != null) {
            b(zzqVar, a2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final void b(zzq zzqVar, zzn zznVar) {
        com.google.android.gms.common.internal.m.a(zzqVar);
        com.google.android.gms.common.internal.m.b(zzqVar.f13399e);
        com.google.android.gms.common.internal.m.a(zzqVar.f13401g);
        com.google.android.gms.common.internal.m.b(zzqVar.f13401g.f13385f);
        z();
        k();
        if (TextUtils.isEmpty(zznVar.f13392f) && TextUtils.isEmpty(zznVar.v)) {
            return;
        }
        if (!zznVar.f13398l) {
            e(zznVar);
            return;
        }
        g().s();
        try {
            e(zznVar);
            zzq e2 = g().e(zzqVar.f13399e, zzqVar.f13401g.f13385f);
            if (e2 != null) {
                this.f12949i.zzab().x().a("Removing conditional user property", zzqVar.f13399e, this.f12949i.C().c(zzqVar.f13401g.f13385f));
                g().f(zzqVar.f13399e, zzqVar.f13401g.f13385f);
                if (e2.f13403i) {
                    g().c(zzqVar.f13399e, zzqVar.f13401g.f13385f);
                }
                if (zzqVar.o != null) {
                    b(this.f12949i.D().a(zzqVar.f13399e, zzqVar.o.f13377e, zzqVar.o.f13378f != null ? zzqVar.o.f13378f.j() : null, e2.f13400f, zzqVar.o.f13380h, true, false), zznVar);
                }
            } else {
                this.f12949i.zzab().t().a("Conditional user property doesn't exist", f3.a(zzqVar.f13399e), this.f12949i.C().c(zzqVar.f13401g.f13385f));
            }
            g().v();
        } finally {
            g().t();
        }
    }

    @VisibleForTesting
    private final void a(r0.a aVar, long j2, boolean z) {
        o8 o8Var;
        String str = z ? "_se" : "_lte";
        o8 d2 = g().d(aVar.i(), str);
        if (d2 != null && d2.f13133e != null) {
            o8Var = new o8(aVar.i(), "auto", str, this.f12949i.a().a(), Long.valueOf(((Long) d2.f13133e).longValue() + j2));
        } else {
            o8Var = new o8(aVar.i(), "auto", str, this.f12949i.a().a(), Long.valueOf(j2));
        }
        v0.a B = com.google.android.gms.internal.measurement.v0.B();
        B.a(str);
        B.a(this.f12949i.a().a());
        B.b(((Long) o8Var.f13133e).longValue());
        com.google.android.gms.internal.measurement.v0 v0Var = (com.google.android.gms.internal.measurement.v0) B.t();
        boolean z2 = false;
        int i2 = 0;
        while (true) {
            if (i2 >= aVar.o()) {
                break;
            }
            if (str.equals(aVar.d(i2).n())) {
                aVar.a(i2, v0Var);
                z2 = true;
                break;
            }
            i2++;
        }
        if (!z2) {
            aVar.a(v0Var);
        }
        if (j2 > 0) {
            g().a(o8Var);
            this.f12949i.zzab().x().a("Updated engagement user property. scope, value", z ? "session-scoped" : "lifetime", o8Var.f13133e);
        }
    }

    private final boolean a(n0.a aVar, n0.a aVar2) {
        com.google.android.gms.common.internal.m.a("_e".equals(aVar.h()));
        e();
        com.google.android.gms.internal.measurement.p0 a2 = n8.a((com.google.android.gms.internal.measurement.n0) aVar.t(), "_sc");
        String p = a2 == null ? null : a2.p();
        e();
        com.google.android.gms.internal.measurement.p0 a3 = n8.a((com.google.android.gms.internal.measurement.n0) aVar2.t(), "_pc");
        String p2 = a3 != null ? a3.p() : null;
        if (p2 == null || !p2.equals(p)) {
            return false;
        }
        e();
        com.google.android.gms.internal.measurement.p0 a4 = n8.a((com.google.android.gms.internal.measurement.n0) aVar.t(), "_et");
        if (a4.q() && a4.s() > 0) {
            long s = a4.s();
            e();
            com.google.android.gms.internal.measurement.p0 a5 = n8.a((com.google.android.gms.internal.measurement.n0) aVar2.t(), "_et");
            if (a5 != null && a5.s() > 0) {
                s += a5.s();
            }
            e();
            n8.a(aVar2, "_et", Long.valueOf(s));
            e();
            n8.a(aVar, "_fr", (Object) 1L);
        }
        return true;
    }

    @VisibleForTesting
    private static void a(n0.a aVar, @NonNull String str) {
        List<com.google.android.gms.internal.measurement.p0> j2 = aVar.j();
        for (int i2 = 0; i2 < j2.size(); i2++) {
            if (str.equals(j2.get(i2).n())) {
                aVar.b(i2);
                return;
            }
        }
    }

    @VisibleForTesting
    private static void a(n0.a aVar, int i2, String str) {
        List<com.google.android.gms.internal.measurement.p0> j2 = aVar.j();
        for (int i3 = 0; i3 < j2.size(); i3++) {
            if ("_err".equals(j2.get(i3).n())) {
                return;
            }
        }
        p0.a z = com.google.android.gms.internal.measurement.p0.z();
        z.a("_err");
        z.a(Long.valueOf(i2).longValue());
        com.google.android.gms.internal.measurement.p0 p0Var = (com.google.android.gms.internal.measurement.p0) z.t();
        p0.a z2 = com.google.android.gms.internal.measurement.p0.z();
        z2.a("_ev");
        z2.b(str);
        com.google.android.gms.internal.measurement.p0 p0Var2 = (com.google.android.gms.internal.measurement.p0) z2.t();
        aVar.a(p0Var);
        aVar.a(p0Var2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0158, code lost:
    
        r8.f12949i.e().f13116g.a(r8.f12949i.a().a());
     */
    @com.google.android.gms.common.util.VisibleForTesting
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(int r9, java.lang.Throwable r10, byte[] r11, java.lang.String r12) {
        /*
            Method dump skipped, instructions count: 390
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.g8.a(int, java.lang.Throwable, byte[], java.lang.String):void");
    }

    @WorkerThread
    private final void a(a4 a4Var) {
        z();
        if (TextUtils.isEmpty(a4Var.c()) && (!z8.w() || TextUtils.isEmpty(a4Var.g()))) {
            a(a4Var.f(), 204, null, null, null);
            return;
        }
        z8 f2 = this.f12949i.f();
        Uri.Builder builder = new Uri.Builder();
        String c2 = a4Var.c();
        if (TextUtils.isEmpty(c2) && z8.w()) {
            c2 = a4Var.g();
        }
        a.e.a aVar = null;
        Uri.Builder encodedAuthority = builder.scheme(j.f13001j.a(null)).encodedAuthority(j.f13002k.a(null));
        String valueOf = String.valueOf(c2);
        encodedAuthority.path(valueOf.length() != 0 ? "config/app/".concat(valueOf) : new String("config/app/")).appendQueryParameter("app_instance_id", a4Var.a()).appendQueryParameter("platform", "android").appendQueryParameter("gmp_version", String.valueOf(f2.k()));
        String uri = builder.build().toString();
        try {
            URL url = new URL(uri);
            this.f12949i.zzab().y().a("Fetching remote configuration", a4Var.f());
            com.google.android.gms.internal.measurement.z0 a2 = h().a(a4Var.f());
            String b2 = h().b(a4Var.f());
            if (a2 != null && !TextUtils.isEmpty(b2)) {
                aVar = new a.e.a();
                aVar.put("If-Modified-Since", b2);
            }
            this.q = true;
            j3 i2 = i();
            String f3 = a4Var.f();
            l8 l8Var = new l8(this);
            i2.g();
            i2.q();
            com.google.android.gms.common.internal.m.a(url);
            com.google.android.gms.common.internal.m.a(l8Var);
            i2.b().b(new n3(i2, f3, url, null, aVar, l8Var));
        } catch (MalformedURLException unused) {
            this.f12949i.zzab().q().a("Failed to parse config URL. Not fetching. appId", f3.a(a4Var.f()), uri);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00b0, code lost:
    
        r6.f12949i.e().f13116g.a(r6.f12949i.a().a());
     */
    /* JADX WARN: Removed duplicated region for block: B:49:0x013a A[Catch: all -> 0x018d, TryCatch #1 {all -> 0x018d, blocks: (B:5:0x0029, B:12:0x0045, B:13:0x0179, B:23:0x0061, B:30:0x00b0, B:31:0x00c5, B:34:0x00cd, B:36:0x00d9, B:38:0x00df, B:42:0x00ec, B:47:0x0124, B:49:0x013a, B:50:0x0162, B:52:0x016c, B:54:0x0172, B:55:0x0176, B:56:0x014a, B:57:0x0103, B:59:0x010d), top: B:4:0x0029, outer: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x014a A[Catch: all -> 0x018d, TryCatch #1 {all -> 0x018d, blocks: (B:5:0x0029, B:12:0x0045, B:13:0x0179, B:23:0x0061, B:30:0x00b0, B:31:0x00c5, B:34:0x00cd, B:36:0x00d9, B:38:0x00df, B:42:0x00ec, B:47:0x0124, B:49:0x013a, B:50:0x0162, B:52:0x016c, B:54:0x0172, B:55:0x0176, B:56:0x014a, B:57:0x0103, B:59:0x010d), top: B:4:0x0029, outer: #0 }] */
    @com.google.android.gms.common.util.VisibleForTesting
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(java.lang.String r7, int r8, java.lang.Throwable r9, byte[] r10, java.util.Map<java.lang.String, java.util.List<java.lang.String>> r11) {
        /*
            Method dump skipped, instructions count: 413
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.g8.a(java.lang.String, int, java.lang.Throwable, byte[], java.util.Map):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final void a(Runnable runnable) {
        z();
        if (this.n == null) {
            this.n = new ArrayList();
        }
        this.n.add(runnable);
    }

    @VisibleForTesting
    @WorkerThread
    private final int a(FileChannel fileChannel) {
        z();
        if (fileChannel != null && fileChannel.isOpen()) {
            ByteBuffer allocate = ByteBuffer.allocate(4);
            try {
                fileChannel.position(0L);
                int read = fileChannel.read(allocate);
                if (read == 4) {
                    allocate.flip();
                    return allocate.getInt();
                }
                if (read != -1) {
                    this.f12949i.zzab().t().a("Unexpected data length. Bytes read", Integer.valueOf(read));
                }
                return 0;
            } catch (IOException e2) {
                this.f12949i.zzab().q().a("Failed to read from channel", e2);
                return 0;
            }
        }
        this.f12949i.zzab().q().a("Bad channel to read from");
        return 0;
    }

    @VisibleForTesting
    @WorkerThread
    private final boolean a(int i2, FileChannel fileChannel) {
        z();
        if (fileChannel != null && fileChannel.isOpen()) {
            ByteBuffer allocate = ByteBuffer.allocate(4);
            allocate.putInt(i2);
            allocate.flip();
            try {
                fileChannel.truncate(0L);
                fileChannel.write(allocate);
                fileChannel.force(true);
                if (fileChannel.size() != 4) {
                    this.f12949i.zzab().q().a("Error writing to channel. Bytes written", Long.valueOf(fileChannel.size()));
                }
                return true;
            } catch (IOException e2) {
                this.f12949i.zzab().q().a("Failed to write to channel", e2);
                return false;
            }
        }
        this.f12949i.zzab().q().a("Bad channel to read from");
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    @WorkerThread
    public final void a(zzn zznVar) {
        if (this.v != null) {
            this.w = new ArrayList();
            this.w.addAll(this.v);
        }
        e9 g2 = g();
        String str = zznVar.f13391e;
        com.google.android.gms.common.internal.m.b(str);
        g2.g();
        g2.q();
        try {
            SQLiteDatabase u = g2.u();
            String[] strArr = {str};
            int delete = u.delete("apps", "app_id=?", strArr) + 0 + u.delete("events", "app_id=?", strArr) + u.delete("user_attributes", "app_id=?", strArr) + u.delete("conditional_properties", "app_id=?", strArr) + u.delete("raw_events", "app_id=?", strArr) + u.delete("raw_events_metadata", "app_id=?", strArr) + u.delete("queue", "app_id=?", strArr) + u.delete("audience_filter_values", "app_id=?", strArr) + u.delete("main_event_params", "app_id=?", strArr);
            if (delete > 0) {
                g2.zzab().y().a("Reset analytics data. app, records", str, Integer.valueOf(delete));
            }
        } catch (SQLiteException e2) {
            g2.zzab().q().a("Error resetting analytics data. appId, error", f3.a(str), e2);
        }
        zzn a2 = a(this.f12949i.getContext(), zznVar.f13391e, zznVar.f13392f, zznVar.f13398l, zznVar.s, zznVar.t, zznVar.q, zznVar.v);
        if (zznVar.f13398l) {
            c(a2);
        }
    }

    private final zzn a(Context context, String str, String str2, boolean z, boolean z2, boolean z3, long j2, String str3) {
        String str4;
        int i2;
        String str5;
        PackageManager packageManager = context.getPackageManager();
        if (packageManager == null) {
            this.f12949i.zzab().q().a("PackageManager is null, can not log app install information");
            return null;
        }
        try {
            str4 = packageManager.getInstallerPackageName(str);
        } catch (IllegalArgumentException unused) {
            this.f12949i.zzab().q().a("Error retrieving installer package name. appId", f3.a(str));
            str4 = "Unknown";
        }
        if (str4 == null) {
            str4 = "manual_install";
        } else if ("com.android.vending".equals(str4)) {
            str4 = "";
        }
        String str6 = str4;
        try {
            PackageInfo b2 = com.google.android.gms.common.o.c.a(context).b(str, 0);
            if (b2 != null) {
                CharSequence b3 = com.google.android.gms.common.o.c.a(context).b(str);
                if (!TextUtils.isEmpty(b3)) {
                    b3.toString();
                }
                String str7 = b2.versionName;
                i2 = b2.versionCode;
                str5 = str7;
            } else {
                i2 = e.b.b.a.a.a.c.ALL_INT;
                str5 = "Unknown";
            }
            this.f12949i.zzae();
            return new zzn(str, str2, str5, i2, str6, this.f12949i.f().k(), this.f12949i.D().a(context, str), (String) null, z, false, "", 0L, this.f12949i.f().j(str) ? j2 : 0L, 0, z2, z3, false, str3, (Boolean) null, 0L, (List<String>) null);
        } catch (PackageManager.NameNotFoundException unused2) {
            this.f12949i.zzab().q().a("Error retrieving newly installed package info. appId, appName", f3.a(str), "Unknown");
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final void a(zzjn zzjnVar, zzn zznVar) {
        f b2;
        z();
        k();
        if (TextUtils.isEmpty(zznVar.f13392f) && TextUtils.isEmpty(zznVar.v)) {
            return;
        }
        if (!zznVar.f13398l) {
            e(zznVar);
            return;
        }
        int b3 = this.f12949i.D().b(zzjnVar.f13385f);
        if (b3 != 0) {
            this.f12949i.D();
            String a2 = r8.a(zzjnVar.f13385f, 24, true);
            String str = zzjnVar.f13385f;
            this.f12949i.D().a(zznVar.f13391e, b3, "_ev", a2, str != null ? str.length() : 0);
            return;
        }
        int b4 = this.f12949i.D().b(zzjnVar.f13385f, zzjnVar.j());
        if (b4 != 0) {
            this.f12949i.D();
            String a3 = r8.a(zzjnVar.f13385f, 24, true);
            Object j2 = zzjnVar.j();
            this.f12949i.D().a(zznVar.f13391e, b4, "_ev", a3, (j2 == null || !((j2 instanceof String) || (j2 instanceof CharSequence))) ? 0 : String.valueOf(j2).length());
            return;
        }
        Object c2 = this.f12949i.D().c(zzjnVar.f13385f, zzjnVar.j());
        if (c2 == null) {
            return;
        }
        if ("_sid".equals(zzjnVar.f13385f) && this.f12949i.f().o(zznVar.f13391e)) {
            long j3 = zzjnVar.f13386g;
            String str2 = zzjnVar.f13389j;
            long j4 = 0;
            o8 d2 = g().d(zznVar.f13391e, "_sno");
            if (d2 != null) {
                Object obj = d2.f13133e;
                if (obj instanceof Long) {
                    j4 = ((Long) obj).longValue();
                    a(new zzjn("_sno", j3, Long.valueOf(j4 + 1), str2), zznVar);
                }
            }
            if (d2 != null) {
                this.f12949i.zzab().t().a("Retrieved last session number from database does not contain a valid (long) value", d2.f13133e);
            }
            if (this.f12949i.f().e(zznVar.f13391e, j.e0) && (b2 = g().b(zznVar.f13391e, "_s")) != null) {
                j4 = b2.f12884c;
                this.f12949i.zzab().y().a("Backfill the session number. Last used session number", Long.valueOf(j4));
            }
            a(new zzjn("_sno", j3, Long.valueOf(j4 + 1), str2), zznVar);
        }
        o8 o8Var = new o8(zznVar.f13391e, zzjnVar.f13389j, zzjnVar.f13385f, zzjnVar.f13386g, c2);
        this.f12949i.zzab().x().a("Setting user property", this.f12949i.C().c(o8Var.f13131c), c2);
        g().s();
        try {
            e(zznVar);
            boolean a4 = g().a(o8Var);
            g().v();
            if (a4) {
                this.f12949i.zzab().x().a("User property set", this.f12949i.C().c(o8Var.f13131c), o8Var.f13133e);
            } else {
                this.f12949i.zzab().q().a("Too many unique user properties are set. Ignoring user property", this.f12949i.C().c(o8Var.f13131c), o8Var.f13133e);
                this.f12949i.D().a(zznVar.f13391e, 9, (String) null, (String) null, 0);
            }
        } finally {
            g().t();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(h8 h8Var) {
        this.o++;
    }

    @WorkerThread
    private final zzn a(String str) {
        a4 b2 = g().b(str);
        if (b2 != null && !TextUtils.isEmpty(b2.k())) {
            Boolean b3 = b(b2);
            if (b3 != null && !b3.booleanValue()) {
                this.f12949i.zzab().q().a("App version does not match; dropping. appId", f3.a(str));
                return null;
            }
            return new zzn(str, b2.c(), b2.k(), b2.l(), b2.m(), b2.n(), b2.o(), (String) null, b2.d(), false, b2.b(), b2.C(), 0L, 0, b2.D(), b2.E(), false, b2.g(), b2.F(), b2.p(), b2.G());
        }
        this.f12949i.zzab().x().a("No app data available; dropping", str);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final void a(zzq zzqVar) {
        zzn a2 = a(zzqVar.f13399e);
        if (a2 != null) {
            a(zzqVar, a2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final void a(zzq zzqVar, zzn zznVar) {
        com.google.android.gms.common.internal.m.a(zzqVar);
        com.google.android.gms.common.internal.m.b(zzqVar.f13399e);
        com.google.android.gms.common.internal.m.a(zzqVar.f13400f);
        com.google.android.gms.common.internal.m.a(zzqVar.f13401g);
        com.google.android.gms.common.internal.m.b(zzqVar.f13401g.f13385f);
        z();
        k();
        if (TextUtils.isEmpty(zznVar.f13392f) && TextUtils.isEmpty(zznVar.v)) {
            return;
        }
        if (!zznVar.f13398l) {
            e(zznVar);
            return;
        }
        zzq zzqVar2 = new zzq(zzqVar);
        boolean z = false;
        zzqVar2.f13403i = false;
        g().s();
        try {
            zzq e2 = g().e(zzqVar2.f13399e, zzqVar2.f13401g.f13385f);
            if (e2 != null && !e2.f13400f.equals(zzqVar2.f13400f)) {
                this.f12949i.zzab().t().a("Updating a conditional user property with different origin. name, origin, origin (from DB)", this.f12949i.C().c(zzqVar2.f13401g.f13385f), zzqVar2.f13400f, e2.f13400f);
            }
            if (e2 != null && e2.f13403i) {
                zzqVar2.f13400f = e2.f13400f;
                zzqVar2.f13402h = e2.f13402h;
                zzqVar2.f13406l = e2.f13406l;
                zzqVar2.f13404j = e2.f13404j;
                zzqVar2.m = e2.m;
                zzqVar2.f13403i = e2.f13403i;
                zzqVar2.f13401g = new zzjn(zzqVar2.f13401g.f13385f, e2.f13401g.f13386g, zzqVar2.f13401g.j(), e2.f13401g.f13389j);
            } else if (TextUtils.isEmpty(zzqVar2.f13404j)) {
                zzqVar2.f13401g = new zzjn(zzqVar2.f13401g.f13385f, zzqVar2.f13402h, zzqVar2.f13401g.j(), zzqVar2.f13401g.f13389j);
                zzqVar2.f13403i = true;
                z = true;
            }
            if (zzqVar2.f13403i) {
                zzjn zzjnVar = zzqVar2.f13401g;
                o8 o8Var = new o8(zzqVar2.f13399e, zzqVar2.f13400f, zzjnVar.f13385f, zzjnVar.f13386g, zzjnVar.j());
                if (g().a(o8Var)) {
                    this.f12949i.zzab().x().a("User property updated immediately", zzqVar2.f13399e, this.f12949i.C().c(o8Var.f13131c), o8Var.f13133e);
                } else {
                    this.f12949i.zzab().q().a("(2)Too many active user properties, ignoring", f3.a(zzqVar2.f13399e), this.f12949i.C().c(o8Var.f13131c), o8Var.f13133e);
                }
                if (z && zzqVar2.m != null) {
                    b(new zzai(zzqVar2.m, zzqVar2.f13402h), zznVar);
                }
            }
            if (g().a(zzqVar2)) {
                this.f12949i.zzab().x().a("Conditional property added", zzqVar2.f13399e, this.f12949i.C().c(zzqVar2.f13401g.f13385f), zzqVar2.f13401g.j());
            } else {
                this.f12949i.zzab().q().a("Too many conditional properties, ignoring", f3.a(zzqVar2.f13399e), this.f12949i.C().c(zzqVar2.f13401g.f13385f), zzqVar2.f13401g.j());
            }
            g().v();
        } finally {
            g().t();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(boolean z) {
        v();
    }
}
