package com.google.android.gms.internal.ads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.util.Pair;
import androidx.annotation.VisibleForTesting;
import com.alipay.mobile.security.bio.workspace.Env;
import com.google.android.gms.internal.ads.gv;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.reflect.Method;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public class cf1 {

    /* renamed from: a, reason: collision with root package name */
    protected Context f5992a;

    /* renamed from: b, reason: collision with root package name */
    private ExecutorService f5993b;

    /* renamed from: c, reason: collision with root package name */
    private DexClassLoader f5994c;

    /* renamed from: d, reason: collision with root package name */
    private h31 f5995d;

    /* renamed from: e, reason: collision with root package name */
    private byte[] f5996e;

    /* renamed from: i, reason: collision with root package name */
    private boolean f6000i;

    /* renamed from: l, reason: collision with root package name */
    private ax0 f6003l;
    private Map<Pair<String, String>, qg1> o;

    /* renamed from: f, reason: collision with root package name */
    private volatile com.google.android.gms.ads.l.a f5997f = null;

    /* renamed from: g, reason: collision with root package name */
    private volatile boolean f5998g = false;

    /* renamed from: h, reason: collision with root package name */
    private Future f5999h = null;

    /* renamed from: j, reason: collision with root package name */
    private volatile ev f6001j = null;

    /* renamed from: k, reason: collision with root package name */
    private Future f6002k = null;
    protected boolean m = false;
    private boolean n = false;
    private boolean p = false;
    private boolean q = true;
    private boolean r = false;

    /* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
    /* loaded from: classes.dex */
    final class a extends BroadcastReceiver {
        private a() {
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            if (!"android.intent.action.USER_PRESENT".equals(intent.getAction())) {
                if ("android.intent.action.SCREEN_OFF".equals(intent.getAction())) {
                    cf1.this.q = false;
                    return;
                }
                return;
            }
            cf1.this.q = true;
        }

        /* synthetic */ a(cf1 cf1Var, gf1 gf1Var) {
            this();
        }
    }

    private cf1(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.f6000i = applicationContext != null;
        this.f5992a = this.f6000i ? applicationContext : context;
        this.o = new HashMap();
    }

    public static cf1 a(Context context, String str, String str2, boolean z) {
        gf1 gf1Var;
        cf1 cf1Var = new cf1(context);
        try {
            cf1Var.f5993b = Executors.newCachedThreadPool(new gf1());
            cf1Var.f5998g = z;
            if (z) {
                cf1Var.f5999h = cf1Var.f5993b.submit(new ef1(cf1Var));
            }
            cf1Var.f5993b.execute(new hf1(cf1Var));
            try {
                com.google.android.gms.common.d a2 = com.google.android.gms.common.d.a();
                cf1Var.m = a2.a(cf1Var.f5992a) > 0;
                cf1Var.n = a2.b(cf1Var.f5992a) == 0;
            } catch (Throwable unused) {
            }
            cf1Var.a(0, true);
            if (kf1.a() && ((Boolean) mu1.e().a(aw1.D1)).booleanValue()) {
                throw new IllegalStateException("Task Context initialization must not be called from the UI thread.");
            }
            gf1Var = null;
            cf1Var.f5995d = new h31(null);
        } catch (bf1 unused2) {
        }
        try {
            cf1Var.f5996e = cf1Var.f5995d.a(str);
            try {
                try {
                    File cacheDir = cf1Var.f5992a.getCacheDir();
                    if (cacheDir == null && (cacheDir = cf1Var.f5992a.getDir("dex", 0)) == null) {
                        throw new bf1();
                    }
                    File file = new File(String.format("%s/%s.jar", cacheDir, "1557357152169"));
                    if (!file.exists()) {
                        byte[] a3 = cf1Var.f5995d.a(cf1Var.f5996e, str2);
                        file.createNewFile();
                        FileOutputStream fileOutputStream = new FileOutputStream(file);
                        fileOutputStream.write(a3, 0, a3.length);
                        fileOutputStream.close();
                    }
                    cf1Var.b(cacheDir, "1557357152169");
                    try {
                        cf1Var.f5994c = new DexClassLoader(file.getAbsolutePath(), cacheDir.getAbsolutePath(), null, cf1Var.f5992a.getClassLoader());
                        a(file);
                        cf1Var.a(cacheDir, "1557357152169");
                        a(String.format("%s/%s.dex", cacheDir, "1557357152169"));
                        if (!cf1Var.r) {
                            IntentFilter intentFilter = new IntentFilter();
                            intentFilter.addAction("android.intent.action.USER_PRESENT");
                            intentFilter.addAction("android.intent.action.SCREEN_OFF");
                            cf1Var.f5992a.registerReceiver(new a(cf1Var, gf1Var), intentFilter);
                            cf1Var.r = true;
                        }
                        cf1Var.f6003l = new ax0(cf1Var);
                        cf1Var.p = true;
                        return cf1Var;
                    } catch (Throwable th) {
                        a(file);
                        cf1Var.a(cacheDir, "1557357152169");
                        a(String.format("%s/%s.dex", cacheDir, "1557357152169"));
                        throw th;
                    }
                } catch (l51 e2) {
                    throw new bf1(e2);
                } catch (FileNotFoundException e3) {
                    throw new bf1(e3);
                }
            } catch (IOException e4) {
                throw new bf1(e4);
            } catch (NullPointerException e5) {
                throw new bf1(e5);
            }
        } catch (l51 e6) {
            throw new bf1(e6);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void o() {
        try {
            if (this.f5997f == null && this.f6000i) {
                com.google.android.gms.ads.l.a aVar = new com.google.android.gms.ads.l.a(this.f5992a);
                aVar.c();
                this.f5997f = aVar;
            }
        } catch (com.google.android.gms.common.e | com.google.android.gms.common.f | IOException unused) {
            this.f5997f = null;
        }
    }

    @VisibleForTesting
    private final ev p() {
        try {
            return ov0.a(this.f5992a, this.f5992a.getPackageName(), Integer.toString(this.f5992a.getPackageManager().getPackageInfo(this.f5992a.getPackageName(), 0).versionCode));
        } catch (Throwable unused) {
            return null;
        }
    }

    public final boolean b() {
        return this.p;
    }

    public final int c() {
        return this.f6003l != null ? ax0.a() : e.b.b.a.a.a.c.ALL_INT;
    }

    public final ExecutorService d() {
        return this.f5993b;
    }

    public final DexClassLoader e() {
        return this.f5994c;
    }

    public final h31 f() {
        return this.f5995d;
    }

    public final byte[] g() {
        return this.f5996e;
    }

    public final boolean h() {
        return this.m;
    }

    public final ax0 i() {
        return this.f6003l;
    }

    public final boolean j() {
        return this.n;
    }

    public final boolean k() {
        return this.q;
    }

    public final ev l() {
        return this.f6001j;
    }

    public final Future m() {
        return this.f6002k;
    }

    public final com.google.android.gms.ads.l.a n() {
        if (!this.f5998g) {
            return null;
        }
        if (this.f5997f != null) {
            return this.f5997f;
        }
        Future future = this.f5999h;
        if (future != null) {
            try {
                future.get(2000L, TimeUnit.MILLISECONDS);
                this.f5999h = null;
            } catch (InterruptedException | ExecutionException unused) {
            } catch (TimeoutException unused2) {
                this.f5999h.cancel(true);
            }
        }
        return this.f5997f;
    }

    private final boolean b(File file, String str) {
        FileInputStream fileInputStream;
        File file2 = new File(String.format("%s/%s.tmp", file, str));
        if (!file2.exists()) {
            return false;
        }
        File file3 = new File(String.format("%s/%s.dex", file, str));
        if (file3.exists()) {
            return false;
        }
        FileOutputStream fileOutputStream = null;
        try {
            long length = file2.length();
            if (length <= 0) {
                a(file2);
                return false;
            }
            byte[] bArr = new byte[(int) length];
            fileInputStream = new FileInputStream(file2);
            try {
                try {
                    if (fileInputStream.read(bArr) <= 0) {
                        a(file2);
                        try {
                            fileInputStream.close();
                        } catch (IOException unused) {
                        }
                        return false;
                    }
                    gv a2 = gv.a(bArr, q81.c());
                    if (str.equals(new String(a2.n().toByteArray())) && Arrays.equals(a2.m().toByteArray(), nf0.a(a2.k().toByteArray())) && Arrays.equals(a2.o().toByteArray(), Build.VERSION.SDK.getBytes())) {
                        byte[] a3 = this.f5995d.a(this.f5996e, new String(a2.k().toByteArray()));
                        file3.createNewFile();
                        FileOutputStream fileOutputStream2 = new FileOutputStream(file3);
                        try {
                            fileOutputStream2.write(a3, 0, a3.length);
                            try {
                                fileInputStream.close();
                            } catch (IOException unused2) {
                            }
                            try {
                                fileOutputStream2.close();
                            } catch (IOException unused3) {
                            }
                            return true;
                        } catch (l51 | IOException | NoSuchAlgorithmException unused4) {
                            fileOutputStream = fileOutputStream2;
                            if (fileInputStream != null) {
                                try {
                                    fileInputStream.close();
                                } catch (IOException unused5) {
                                }
                            }
                            if (fileOutputStream != null) {
                                try {
                                    fileOutputStream.close();
                                } catch (IOException unused6) {
                                }
                            }
                            return false;
                        } catch (Throwable th) {
                            th = th;
                            fileOutputStream = fileOutputStream2;
                            if (fileInputStream != null) {
                                try {
                                    fileInputStream.close();
                                } catch (IOException unused7) {
                                }
                            }
                            if (fileOutputStream != null) {
                                try {
                                    fileOutputStream.close();
                                    throw th;
                                } catch (IOException unused8) {
                                    throw th;
                                }
                            }
                            throw th;
                        }
                    }
                    a(file2);
                    try {
                        fileInputStream.close();
                    } catch (IOException unused9) {
                    }
                    return false;
                } catch (l51 | IOException | NoSuchAlgorithmException unused10) {
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (l51 | IOException | NoSuchAlgorithmException unused11) {
            fileInputStream = null;
        } catch (Throwable th3) {
            th = th3;
            fileInputStream = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    public final ev b(int i2, boolean z) {
        if (i2 > 0 && z) {
            try {
                Thread.sleep(i2 * 1000);
            } catch (InterruptedException unused) {
            }
        }
        return p();
    }

    public final Context a() {
        return this.f5992a;
    }

    private final void a(File file, String str) {
        FileInputStream fileInputStream;
        File file2 = new File(String.format("%s/%s.tmp", file, str));
        if (file2.exists()) {
            return;
        }
        File file3 = new File(String.format("%s/%s.dex", file, str));
        if (!file3.exists()) {
            return;
        }
        long length = file3.length();
        if (length <= 0) {
            return;
        }
        byte[] bArr = new byte[(int) length];
        FileOutputStream fileOutputStream = null;
        try {
            fileInputStream = new FileInputStream(file3);
            try {
                try {
                    if (fileInputStream.read(bArr) <= 0) {
                        try {
                            fileInputStream.close();
                        } catch (IOException unused) {
                        }
                        a(file3);
                        return;
                    }
                    System.out.print(Env.NAME_TEST);
                    System.out.print(Env.NAME_TEST);
                    System.out.print(Env.NAME_TEST);
                    gv.a q = gv.q();
                    q.d(t71.zzy(Build.VERSION.SDK.getBytes()));
                    q.c(t71.zzy(str.getBytes()));
                    byte[] bytes = this.f5995d.a(this.f5996e, bArr).getBytes();
                    q.a(t71.zzy(bytes));
                    q.b(t71.zzy(nf0.a(bytes)));
                    file2.createNewFile();
                    FileOutputStream fileOutputStream2 = new FileOutputStream(file2);
                    try {
                        byte[] e2 = ((gv) ((e91) q.s())).e();
                        fileOutputStream2.write(e2, 0, e2.length);
                        fileOutputStream2.close();
                        try {
                            fileInputStream.close();
                        } catch (IOException unused2) {
                        }
                        try {
                            fileOutputStream2.close();
                        } catch (IOException unused3) {
                        }
                        a(file3);
                    } catch (l51 | IOException | NoSuchAlgorithmException unused4) {
                        fileOutputStream = fileOutputStream2;
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (IOException unused5) {
                            }
                        }
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (IOException unused6) {
                            }
                        }
                        a(file3);
                    } catch (Throwable th) {
                        th = th;
                        fileOutputStream = fileOutputStream2;
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (IOException unused7) {
                            }
                        }
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (IOException unused8) {
                            }
                        }
                        a(file3);
                        throw th;
                    }
                } catch (l51 | IOException | NoSuchAlgorithmException unused9) {
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (l51 | IOException | NoSuchAlgorithmException unused10) {
            fileInputStream = null;
        } catch (Throwable th3) {
            th = th3;
            fileInputStream = null;
        }
    }

    private static void a(String str) {
        a(new File(str));
    }

    private static void a(File file) {
        if (file.exists()) {
            file.delete();
        } else {
            String.format("File %s not found. No need for deletion", file.getAbsolutePath());
        }
    }

    public final boolean a(String str, String str2, Class<?>... clsArr) {
        if (this.o.containsKey(new Pair(str, str2))) {
            return false;
        }
        this.o.put(new Pair<>(str, str2), new qg1(this, str, str2, clsArr));
        return true;
    }

    public final Method a(String str, String str2) {
        qg1 qg1Var = this.o.get(new Pair(str, str2));
        if (qg1Var == null) {
            return null;
        }
        return qg1Var.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    public final void a(int i2, boolean z) {
        if (this.n) {
            Future<?> submit = this.f5993b.submit(new if1(this, i2, z));
            if (i2 == 0) {
                this.f6002k = submit;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean a(int i2, ev evVar) {
        if (i2 < 4) {
            return evVar == null || !evVar.m() || evVar.k().equals("0000000000000000000000000000000000000000000000000000000000000000") || !evVar.n() || !evVar.o().k() || evVar.o().m() == -2;
        }
        return false;
    }
}
