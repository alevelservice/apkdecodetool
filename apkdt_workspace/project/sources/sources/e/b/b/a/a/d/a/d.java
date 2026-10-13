package e.b.b.a.a.d.a;

import android.text.TextUtils;
import java.io.File;
import java.util.Arrays;
import java.util.Comparator;
import java.util.concurrent.TimeUnit;

/* compiled from: DiagnoseLogAppender.java */
/* loaded from: classes.dex */
public class d extends f {
    private static final int s = 2;
    private static final Comparator<File> t = new e();

    /* renamed from: h, reason: collision with root package name */
    private File f16967h;

    /* renamed from: i, reason: collision with root package name */
    private long f16968i;

    /* renamed from: j, reason: collision with root package name */
    private long f16969j;

    /* renamed from: k, reason: collision with root package name */
    private File f16970k;

    /* renamed from: l, reason: collision with root package name */
    private volatile long f16971l;
    private volatile long m;
    private volatile double n;
    private StringBuilder o;
    private int p;
    private boolean q;
    private boolean r;

    public d(e.b.b.a.a.a.d dVar, String str, long j2, long j3, long j4, int i2) {
        super(dVar, str);
        this.n = 0.25d;
        this.f16969j = j2;
        this.f16971l = j3;
        this.m = j4;
        this.p = i2 / 2;
        this.o = new StringBuilder(this.p);
    }

    private File d() {
        if (this.f16970k == null) {
            try {
                this.f16970k = e.b.b.a.a.e.j.a(this.f16958c, this.f16957b);
            } catch (Throwable th) {
                e.b.b.a.a.d.i.d().b("Appender", "getCurrentLogsDir", th);
            }
        }
        try {
            if (this.f16970k != null && !this.f16970k.exists()) {
                this.f16970k.mkdirs();
            }
        } catch (Throwable th2) {
            e.b.b.a.a.d.i.d().b("Appender", "getCurrentLogsDir", th2);
        }
        return this.f16970k;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // e.b.b.a.a.d.a.b
    public File a() {
        long currentTimeMillis = System.currentTimeMillis();
        long j2 = this.f16969j;
        this.f16968i = (currentTimeMillis / j2) * j2;
        StringBuilder sb = new StringBuilder();
        sb.append(this.f16968i);
        sb.append("_");
        sb.append(this.f16959d);
        if (e.b.b.a.a.e.j.b()) {
            sb.append("_dev");
        }
        sb.append("_");
        sb.append("applog");
        String sb2 = sb.toString();
        File file = this.f16967h;
        if (file == null || !file.exists() || !this.f16967h.getName().equals(sb2)) {
            e.b.b.a.a.d.i.d().e("Appender", "checkAndRollFile: " + sb2);
            File file2 = this.f16967h;
            if (file2 != null && file2.exists()) {
                b();
            }
            File d2 = d();
            if (d2 == null) {
                e.b.b.a.a.d.i.d().a("Appender", "currentLogDir is NULl with " + this.f16957b);
                return null;
            }
            try {
                a(d2, this.f16971l, this.m);
            } catch (Throwable th) {
                e.b.b.a.a.d.i.d().a("Appender", "clean currentLogDir", th);
            }
            this.f16967h = new File(d2, sb2);
        }
        return this.f16967h;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // e.b.b.a.a.d.a.b
    public synchronized void b() {
        if (this.o.length() == 0) {
            return;
        }
        e.b.b.a.a.d.i.d().d("Appender", this.f16957b + " appender flush: " + this.o.length());
        c();
    }

    boolean c() {
        try {
            byte[] bytes = this.o.toString().getBytes("UTF-8");
            return a(bytes, 0, bytes.length);
        } catch (Throwable th) {
            try {
                if (!this.q) {
                    this.q = true;
                    e.b.b.a.a.d.i.d().b("Appender", "appendLogEvent", th);
                }
                return false;
            } finally {
                this.o.setLength(0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // e.b.b.a.a.d.a.b
    public synchronized void b(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (this.o.length() + str.length() + s > this.p) {
            c();
            if (this.o.length() + str.length() + s > this.p) {
                try {
                    byte[] bytes = (str + "$$").getBytes("UTF-8");
                    a(bytes, 0, bytes.length);
                } catch (Throwable th) {
                    if (!this.q) {
                        this.q = true;
                        e.b.b.a.a.d.i.d().b("Appender", "appendLogEvent", th);
                    }
                }
            } else {
                c(str);
            }
        } else {
            c(str);
        }
    }

    protected void c(String str) {
        StringBuilder sb = this.o;
        sb.append(str);
        sb.append("$$");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // e.b.b.a.a.d.a.b
    public boolean a(String str) {
        try {
            File a2 = a();
            if (a2 != null) {
                e.b.b.a.a.e.g.a(a2, str, true);
            }
            return true;
        } catch (Throwable th) {
            if (this.f16960e) {
                return false;
            }
            this.f16960e = true;
            e.b.b.a.a.d.i.d().b("Appender", this.f16957b, th);
            return false;
        }
    }

    public void b(int i2) {
        if (i2 > 0) {
            this.m = i2 * 1024 * 1024;
        }
    }

    protected boolean a(byte[] bArr, int i2, int i3) {
        byte[] bArr2;
        try {
            bArr2 = e.b.b.a.a.e.j.a(bArr, i2, i3);
        } catch (Throwable th) {
            if (!this.f16961f) {
                this.f16961f = true;
                e.b.b.a.a.d.i.d().b("Appender", this.f16957b, th);
            }
            bArr2 = null;
        }
        if (bArr2 == null) {
            return false;
        }
        byte[] a2 = e.b.b.a.a.e.h.b().a(bArr2, 0, bArr2.length);
        byte[] a3 = e.b.b.a.a.e.h.b().a();
        if (a2 != null && a3 != null) {
            if (a3.length > 32767) {
                e.b.b.a.a.d.i.d().a("Appender", "the length of secure seed is too long: " + a3.length);
                return false;
            }
            return e.b.b.a.a.e.g.a(a2, a3, a());
        }
        if (!this.r) {
            this.r = true;
            e.b.b.a.a.d.i.d().a("Appender", "HybridEncryption.encrypt occured error");
        }
        return false;
    }

    private void a(File file, long j2, long j3) {
        if (file == null || !file.isDirectory()) {
            return;
        }
        File[] fileArr = null;
        try {
            fileArr = file.listFiles();
        } catch (Throwable th) {
            e.b.b.a.a.d.i.d().b("Appender", "cleanExpiresFile", th);
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
                    String str = file2.getName().split("_")[0];
                    if (TextUtils.isDigitsOnly(str)) {
                        long parseLong = Long.parseLong(str);
                        if (parseLong < j4 || parseLong > j5) {
                            file2.delete();
                            String str2 = "cleanExpiresFile: " + file2.getName() + " is too old !";
                        }
                    }
                } catch (Throwable th2) {
                    e.b.b.a.a.d.i.d().b("Appender", file2.getName(), th2);
                }
            }
        }
        if (e.b.b.a.a.e.g.c(file) < j3) {
            return;
        }
        try {
        } catch (Throwable th3) {
            th = th3;
        }
        try {
            a(file.listFiles());
        } catch (Throwable th4) {
            th = th4;
            e.b.b.a.a.d.i.d().a("Appender", "cleanExpiresFile", th);
        }
    }

    void a(File[] fileArr) {
        if (fileArr == null || fileArr.length < 1) {
            return;
        }
        Arrays.sort(fileArr, t);
        double length = fileArr.length;
        double d2 = this.n;
        Double.isNaN(length);
        int floor = (int) Math.floor(length * d2);
        for (int i2 = 0; i2 < floor; i2++) {
            File file = fileArr[i2];
            if (file != null && file.exists() && file.isFile()) {
                try {
                    file.delete();
                    e.b.b.a.a.d.i.d().a("Appender", "cleanExpiresFile: " + file.getName() + " is too large !");
                } catch (Throwable th) {
                    e.b.b.a.a.d.i.d().a("Appender", file.getName() + " cleanExpiresFile", th);
                }
            }
        }
    }

    public void a(int i2) {
        if (i2 > 0) {
            this.f16971l = TimeUnit.DAYS.toMillis(i2);
        }
    }

    public void a(double d2) {
        if (d2 > 0.0d) {
            this.n = d2;
        }
    }
}
