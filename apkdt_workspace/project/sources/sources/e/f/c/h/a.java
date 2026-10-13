package e.f.c.h;

import android.annotation.SuppressLint;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.os.SystemClock;
import com.facebook.common.internal.l;
import java.io.File;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
import javax.annotation.concurrent.ThreadSafe;

/* compiled from: StatFsHelper.java */
@ThreadSafe
/* loaded from: classes.dex */
public class a {

    /* renamed from: h, reason: collision with root package name */
    private static a f17176h;

    /* renamed from: i, reason: collision with root package name */
    private static final long f17177i = TimeUnit.MINUTES.toMillis(2);

    /* renamed from: b, reason: collision with root package name */
    private volatile File f17179b;

    /* renamed from: d, reason: collision with root package name */
    private volatile File f17181d;

    /* renamed from: e, reason: collision with root package name */
    @GuardedBy("lock")
    private long f17182e;

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    private volatile StatFs f17178a = null;

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    private volatile StatFs f17180c = null;

    /* renamed from: g, reason: collision with root package name */
    private volatile boolean f17184g = false;

    /* renamed from: f, reason: collision with root package name */
    private final Lock f17183f = new ReentrantLock();

    /* compiled from: StatFsHelper.java */
    /* renamed from: e.f.c.h.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public enum EnumC0185a {
        INTERNAL,
        EXTERNAL
    }

    protected a() {
    }

    private void a() {
        if (this.f17184g) {
            return;
        }
        this.f17183f.lock();
        try {
            if (!this.f17184g) {
                this.f17179b = Environment.getDataDirectory();
                this.f17181d = Environment.getExternalStorageDirectory();
                d();
                this.f17184g = true;
            }
        } finally {
            this.f17183f.unlock();
        }
    }

    public static synchronized a b() {
        a aVar;
        synchronized (a.class) {
            if (f17176h == null) {
                f17176h = new a();
            }
            aVar = f17176h;
        }
        return aVar;
    }

    private void c() {
        if (this.f17183f.tryLock()) {
            try {
                if (SystemClock.uptimeMillis() - this.f17182e > f17177i) {
                    d();
                }
            } finally {
                this.f17183f.unlock();
            }
        }
    }

    @GuardedBy("lock")
    private void d() {
        this.f17178a = a(this.f17178a, this.f17179b);
        this.f17180c = a(this.f17180c, this.f17181d);
        this.f17182e = SystemClock.uptimeMillis();
    }

    public boolean a(EnumC0185a enumC0185a, long j2) {
        a();
        long a2 = a(enumC0185a);
        return a2 <= 0 || a2 < j2;
    }

    @SuppressLint({"DeprecatedMethod"})
    public long a(EnumC0185a enumC0185a) {
        long blockSize;
        long availableBlocks;
        a();
        c();
        StatFs statFs = enumC0185a == EnumC0185a.INTERNAL ? this.f17178a : this.f17180c;
        if (statFs == null) {
            return 0L;
        }
        if (Build.VERSION.SDK_INT >= 18) {
            blockSize = statFs.getBlockSizeLong();
            availableBlocks = statFs.getAvailableBlocksLong();
        } else {
            blockSize = statFs.getBlockSize();
            availableBlocks = statFs.getAvailableBlocks();
        }
        return blockSize * availableBlocks;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r0v2, types: [android.os.StatFs] */
    /* JADX WARN: Type inference failed for: r0v3, types: [android.os.StatFs] */
    /* JADX WARN: Type inference failed for: r0v4 */
    @Nullable
    private StatFs a(@Nullable StatFs statFs, @Nullable File file) {
        ?? r0 = 0;
        r0 = 0;
        if (file == null || !file.exists()) {
            return null;
        }
        try {
            if (statFs == null) {
                statFs = a(file.getAbsolutePath());
            } else {
                statFs.restat(file.getAbsolutePath());
            }
            r0 = statFs;
            return r0;
        } catch (IllegalArgumentException unused) {
            return r0;
        } catch (Throwable th) {
            l.a(th);
            throw r0;
        }
    }

    protected static StatFs a(String str) {
        return new StatFs(str);
    }
}
