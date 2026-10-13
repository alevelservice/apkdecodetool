package e.f.i.g;

import android.graphics.ColorSpace;
import android.util.Pair;
import com.facebook.common.internal.j;
import com.facebook.imageutils.HeifExifUtil;
import e.f.c.f.i;
import java.io.Closeable;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import javax.annotation.Nullable;
import javax.annotation.concurrent.Immutable;

/* compiled from: EncodedImage.java */
@Immutable
/* loaded from: classes.dex */
public class e implements Closeable {

    /* renamed from: e, reason: collision with root package name */
    @Nullable
    private final e.f.c.g.a<e.f.c.f.g> f17601e;

    /* renamed from: f, reason: collision with root package name */
    @Nullable
    private final j<FileInputStream> f17602f;

    /* renamed from: g, reason: collision with root package name */
    private e.f.h.c f17603g;

    /* renamed from: h, reason: collision with root package name */
    private int f17604h;

    /* renamed from: i, reason: collision with root package name */
    private int f17605i;

    /* renamed from: j, reason: collision with root package name */
    private int f17606j;

    /* renamed from: k, reason: collision with root package name */
    private int f17607k;

    /* renamed from: l, reason: collision with root package name */
    private int f17608l;
    private int m;

    @Nullable
    private com.facebook.imagepipeline.common.a n;

    @Nullable
    private ColorSpace o;

    public e(e.f.c.g.a<e.f.c.f.g> aVar) {
        this.f17603g = e.f.h.c.f17461b;
        this.f17604h = -1;
        this.f17605i = 0;
        this.f17606j = -1;
        this.f17607k = -1;
        this.f17608l = 1;
        this.m = -1;
        com.facebook.common.internal.h.a(e.f.c.g.a.c(aVar));
        this.f17601e = aVar.m8clone();
        this.f17602f = null;
    }

    private void A() {
        if (this.f17606j < 0 || this.f17607k < 0) {
            z();
        }
    }

    private com.facebook.imageutils.b B() {
        InputStream inputStream;
        try {
            inputStream = q();
        } catch (Throwable th) {
            th = th;
            inputStream = null;
        }
        try {
            com.facebook.imageutils.b b2 = com.facebook.imageutils.a.b(inputStream);
            this.o = b2.a();
            Pair<Integer, Integer> b3 = b2.b();
            if (b3 != null) {
                this.f17606j = ((Integer) b3.first).intValue();
                this.f17607k = ((Integer) b3.second).intValue();
            }
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException unused) {
                }
            }
            return b2;
        } catch (Throwable th2) {
            th = th2;
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException unused2) {
                }
            }
            throw th;
        }
    }

    private Pair<Integer, Integer> C() {
        Pair<Integer, Integer> e2 = com.facebook.imageutils.f.e(q());
        if (e2 != null) {
            this.f17606j = ((Integer) e2.first).intValue();
            this.f17607k = ((Integer) e2.second).intValue();
        }
        return e2;
    }

    @Nullable
    public static e b(e eVar) {
        if (eVar != null) {
            return eVar.i();
        }
        return null;
    }

    public void a(e.f.h.c cVar) {
        this.f17603g = cVar;
    }

    public String c(int i2) {
        e.f.c.g.a<e.f.c.f.g> j2 = j();
        if (j2 == null) {
            return "";
        }
        int min = Math.min(t(), i2);
        byte[] bArr = new byte[min];
        try {
            e.f.c.f.g A = j2.A();
            if (A == null) {
                return "";
            }
            A.a(0, bArr, 0, min);
            j2.close();
            StringBuilder sb = new StringBuilder(bArr.length * 2);
            for (byte b2 : bArr) {
                sb.append(String.format("%02X", Byte.valueOf(b2)));
            }
            return sb.toString();
        } finally {
            j2.close();
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        e.f.c.g.a.b(this.f17601e);
    }

    public boolean d(int i2) {
        if (this.f17603g != e.f.h.b.f17450a || this.f17602f != null) {
            return true;
        }
        com.facebook.common.internal.h.a(this.f17601e);
        e.f.c.f.g A = this.f17601e.A();
        return A.b(i2 + (-2)) == -1 && A.b(i2 - 1) == -39;
    }

    public void e(int i2) {
        this.f17605i = i2;
    }

    public void f(int i2) {
        this.f17607k = i2;
    }

    public void g(int i2) {
        this.f17604h = i2;
    }

    public void h(int i2) {
        this.f17608l = i2;
    }

    @Nullable
    public e i() {
        e eVar;
        j<FileInputStream> jVar = this.f17602f;
        if (jVar != null) {
            eVar = new e(jVar, this.m);
        } else {
            e.f.c.g.a a2 = e.f.c.g.a.a((e.f.c.g.a) this.f17601e);
            if (a2 == null) {
                eVar = null;
            } else {
                try {
                    eVar = new e((e.f.c.g.a<e.f.c.f.g>) a2);
                } finally {
                    e.f.c.g.a.b(a2);
                }
            }
        }
        if (eVar != null) {
            eVar.a(this);
        }
        return eVar;
    }

    public e.f.c.g.a<e.f.c.f.g> j() {
        return e.f.c.g.a.a((e.f.c.g.a) this.f17601e);
    }

    @Nullable
    public com.facebook.imagepipeline.common.a k() {
        return this.n;
    }

    @Nullable
    public ColorSpace l() {
        A();
        return this.o;
    }

    public int m() {
        A();
        return this.f17605i;
    }

    public int o() {
        A();
        return this.f17607k;
    }

    public e.f.h.c p() {
        A();
        return this.f17603g;
    }

    @Nullable
    public InputStream q() {
        j<FileInputStream> jVar = this.f17602f;
        if (jVar != null) {
            return jVar.get();
        }
        e.f.c.g.a a2 = e.f.c.g.a.a((e.f.c.g.a) this.f17601e);
        if (a2 == null) {
            return null;
        }
        try {
            return new i((e.f.c.f.g) a2.A());
        } finally {
            e.f.c.g.a.b(a2);
        }
    }

    public int r() {
        A();
        return this.f17604h;
    }

    public int s() {
        return this.f17608l;
    }

    public int t() {
        e.f.c.g.a<e.f.c.f.g> aVar = this.f17601e;
        if (aVar != null && aVar.A() != null) {
            return this.f17601e.A().size();
        }
        return this.m;
    }

    public int u() {
        A();
        return this.f17606j;
    }

    public synchronized boolean v() {
        boolean z;
        if (!e.f.c.g.a.c(this.f17601e)) {
            z = this.f17602f != null;
        }
        return z;
    }

    public void z() {
        Pair<Integer, Integer> b2;
        e.f.h.c c2 = e.f.h.d.c(q());
        this.f17603g = c2;
        if (e.f.h.b.b(c2)) {
            b2 = C();
        } else {
            b2 = B().b();
        }
        if (c2 == e.f.h.b.f17450a && this.f17604h == -1) {
            if (b2 != null) {
                this.f17605i = com.facebook.imageutils.c.a(q());
                this.f17604h = com.facebook.imageutils.c.a(this.f17605i);
                return;
            }
            return;
        }
        if (c2 == e.f.h.b.f17460k && this.f17604h == -1) {
            this.f17605i = HeifExifUtil.a(q());
            this.f17604h = com.facebook.imageutils.c.a(this.f17605i);
        } else {
            this.f17604h = 0;
        }
    }

    public static boolean e(@Nullable e eVar) {
        return eVar != null && eVar.v();
    }

    public void a(@Nullable com.facebook.imagepipeline.common.a aVar) {
        this.n = aVar;
    }

    public void a(e eVar) {
        this.f17603g = eVar.p();
        this.f17606j = eVar.u();
        this.f17607k = eVar.o();
        this.f17604h = eVar.r();
        this.f17605i = eVar.m();
        this.f17608l = eVar.s();
        this.m = eVar.t();
        this.n = eVar.k();
        this.o = eVar.l();
    }

    public static boolean d(e eVar) {
        return eVar.f17604h >= 0 && eVar.f17606j >= 0 && eVar.f17607k >= 0;
    }

    public void i(int i2) {
        this.f17606j = i2;
    }

    public e(j<FileInputStream> jVar) {
        this.f17603g = e.f.h.c.f17461b;
        this.f17604h = -1;
        this.f17605i = 0;
        this.f17606j = -1;
        this.f17607k = -1;
        this.f17608l = 1;
        this.m = -1;
        com.facebook.common.internal.h.a(jVar);
        this.f17601e = null;
        this.f17602f = jVar;
    }

    public static void c(@Nullable e eVar) {
        if (eVar != null) {
            eVar.close();
        }
    }

    public e(j<FileInputStream> jVar, int i2) {
        this(jVar);
        this.m = i2;
    }
}
