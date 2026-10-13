package e.b.b.a.a.d.a;

import android.os.SystemClock;
import android.text.TextUtils;
import java.io.File;
import java.util.Arrays;
import java.util.Comparator;
import java.util.concurrent.TimeUnit;

/* compiled from: LogFileLogAppender.java */
@Deprecated
/* loaded from: classes.dex */
public class g extends a {
    protected static final int s = 2;
    protected static final Comparator<File> t = new h();

    /* renamed from: i, reason: collision with root package name */
    protected StringBuilder f16972i;

    /* renamed from: j, reason: collision with root package name */
    protected int f16973j;

    /* renamed from: k, reason: collision with root package name */
    protected boolean f16974k;

    /* renamed from: l, reason: collision with root package name */
    protected File f16975l;
    protected long m;
    protected File n;
    protected long o;
    protected long p;
    protected long q;
    String r;

    public g(e.b.b.a.a.a.d dVar, String str, long j2, long j3, long j4, int i2) {
        super(dVar, str);
        this.o = j2;
        this.p = j3;
        this.q = j4;
        this.r = str;
        this.f16973j = i2 / 2;
        this.f16972i = new StringBuilder(this.f16973j);
    }

    private boolean e() {
        try {
            try {
                byte[] bytes = this.f16972i.toString().getBytes("UTF-8");
                return a(bytes, 0, bytes.length);
            } finally {
                this.f16972i.setLength(0);
            }
        } catch (Throwable unused) {
            if (!this.f16974k) {
                this.f16974k = true;
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // e.b.b.a.a.d.a.b
    public File a() {
        long currentTimeMillis = System.currentTimeMillis();
        long j2 = this.o;
        this.m = (currentTimeMillis / j2) * j2;
        String str = this.m + "_" + this.f16959d;
        File file = this.f16975l;
        if (file == null || !file.exists() || !this.f16975l.getName().equals(str)) {
            String str2 = "checkAndRollFile: " + str;
            File d2 = d();
            if (d2 == null) {
                String str3 = "currentLogDir is NULl with " + this.r;
                return null;
            }
            try {
                a(d2, this.p, this.q);
            } catch (Throwable unused) {
            }
            this.f16975l = new File(d2, str);
            if (!e.b.b.a.a.e.j.b()) {
                new Thread(new i(this), this.r + "Extras").start();
            }
        }
        return this.f16975l;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // e.b.b.a.a.d.a.b
    public synchronized void b() {
        if (this.f16972i.length() == 0) {
            return;
        }
        String str = this.r + " appender flush: " + this.f16972i.length();
        e();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void c() {
        String str = "handleExtrasOnGetNewFile, priority: " + Thread.currentThread().getPriority();
        Thread.currentThread().setPriority(5);
        SystemClock.sleep(TimeUnit.SECONDS.toMillis(20L));
    }

    protected File d() {
        if (this.n == null) {
            try {
                this.n = e.b.b.a.a.e.j.a(this.f16958c, this.r);
            } catch (Throwable unused) {
            }
        }
        try {
            if (this.n != null && !this.n.exists()) {
                this.n.mkdirs();
            }
        } catch (Throwable unused2) {
        }
        return this.n;
    }

    private void c(String str) {
        StringBuilder sb = this.f16972i;
        sb.append(str);
        sb.append("$$");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // e.b.b.a.a.d.a.b
    public synchronized void b(String str) {
        e.b.b.a.a.d.i.c().c("LogFileAppender", "LogFileAppender write log: " + str);
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (this.f16972i.length() + str.length() + s > this.f16973j) {
            e();
            if (this.f16972i.length() + str.length() + s > this.f16973j) {
                try {
                    byte[] bytes = (str + "$$").getBytes("UTF-8");
                    a(bytes, 0, bytes.length);
                } catch (Throwable unused) {
                    if (!this.f16974k) {
                        this.f16974k = true;
                    }
                }
            } else {
                c(str);
            }
        } else {
            c(str);
        }
    }

    protected void a(File file, long j2, long j3) {
        File[] fileArr;
        if (file == null || !file.isDirectory()) {
            return;
        }
        File[] fileArr2 = null;
        try {
            fileArr = file.listFiles();
        } catch (Throwable unused) {
            fileArr = null;
        }
        if (fileArr == null || fileArr.length == 0) {
            return;
        }
        long currentTimeMillis = System.currentTimeMillis();
        long j4 = currentTimeMillis - j2;
        long j5 = currentTimeMillis + j2;
        for (File file2 : fileArr) {
            if (file2 != null && file2.exists() && file2.isFile()) {
                try {
                    long parseLong = Long.parseLong(file2.getName().split("_")[0]);
                    if (parseLong < j4 || parseLong > j5) {
                        file2.delete();
                        String str = "cleanExpiresFile: " + file2.getName() + " is too old !";
                    }
                } catch (Throwable unused2) {
                    file2.getName();
                }
            }
        }
        if (e.b.b.a.a.e.g.c(file) < j3) {
            return;
        }
        try {
            fileArr2 = file.listFiles();
        } catch (Throwable unused3) {
        }
        if (fileArr2 == null || fileArr2.length < 4) {
            return;
        }
        Arrays.sort(fileArr2, t);
        int length = fileArr2.length / 4;
        for (int i2 = 0; i2 < length; i2++) {
            File file3 = fileArr2[i2];
            if (file3 != null && file3.exists() && file3.isFile()) {
                try {
                    file3.delete();
                    String str2 = "cleanExpiresFile: " + file3.getName() + " is too large !";
                } catch (Throwable unused4) {
                    String str3 = file3.getName() + " cleanExpiresFile";
                }
            }
        }
    }
}
