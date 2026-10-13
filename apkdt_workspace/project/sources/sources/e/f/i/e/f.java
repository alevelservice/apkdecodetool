package e.f.i.e;

import com.facebook.common.internal.h;
import com.facebook.common.internal.l;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: ProgressiveJpegParser.java */
/* loaded from: classes.dex */
public class f {

    /* renamed from: a, reason: collision with root package name */
    private int f17586a;

    /* renamed from: b, reason: collision with root package name */
    private int f17587b;

    /* renamed from: c, reason: collision with root package name */
    private int f17588c;

    /* renamed from: d, reason: collision with root package name */
    private int f17589d;

    /* renamed from: e, reason: collision with root package name */
    private int f17590e;

    /* renamed from: f, reason: collision with root package name */
    private int f17591f;

    /* renamed from: g, reason: collision with root package name */
    private boolean f17592g;

    /* renamed from: h, reason: collision with root package name */
    private final e.f.c.f.a f17593h;

    public f(e.f.c.f.a aVar) {
        h.a(aVar);
        this.f17593h = aVar;
        this.f17588c = 0;
        this.f17587b = 0;
        this.f17589d = 0;
        this.f17591f = 0;
        this.f17590e = 0;
        this.f17586a = 0;
    }

    private static boolean a(int i2) {
        if (i2 == 1) {
            return false;
        }
        return ((i2 >= 208 && i2 <= 215) || i2 == 217 || i2 == 216) ? false : true;
    }

    private void b(int i2) {
        if (this.f17589d > 0) {
            this.f17591f = i2;
        }
        int i3 = this.f17589d;
        this.f17589d = i3 + 1;
        this.f17590e = i3;
    }

    public boolean a(e.f.i.g.e eVar) {
        if (this.f17586a == 6 || eVar.t() <= this.f17588c) {
            return false;
        }
        e.f.c.f.f fVar = new e.f.c.f.f(eVar.q(), this.f17593h.get(16384), this.f17593h);
        try {
            try {
                e.f.c.j.d.a(fVar, this.f17588c);
                return a(fVar);
            } catch (IOException e2) {
                l.a(e2);
                throw null;
            }
        } finally {
            com.facebook.common.internal.b.a(fVar);
        }
    }

    public boolean c() {
        return this.f17592g;
    }

    public int b() {
        return this.f17590e;
    }

    private boolean a(InputStream inputStream) {
        int read;
        int i2 = this.f17590e;
        while (this.f17586a != 6 && (read = inputStream.read()) != -1) {
            try {
                this.f17588c++;
                if (this.f17592g) {
                    this.f17586a = 6;
                    this.f17592g = false;
                    return false;
                }
                int i3 = this.f17586a;
                if (i3 != 0) {
                    if (i3 != 1) {
                        if (i3 != 2) {
                            if (i3 != 3) {
                                if (i3 == 4) {
                                    this.f17586a = 5;
                                } else if (i3 != 5) {
                                    h.b(false);
                                } else {
                                    int i4 = ((this.f17587b << 8) + read) - 2;
                                    e.f.c.j.d.a(inputStream, i4);
                                    this.f17588c += i4;
                                    this.f17586a = 2;
                                }
                            } else if (read == 255) {
                                this.f17586a = 3;
                            } else if (read == 0) {
                                this.f17586a = 2;
                            } else if (read == 217) {
                                this.f17592g = true;
                                b(this.f17588c - 2);
                                this.f17586a = 2;
                            } else {
                                if (read == 218) {
                                    b(this.f17588c - 2);
                                }
                                if (a(read)) {
                                    this.f17586a = 4;
                                } else {
                                    this.f17586a = 2;
                                }
                            }
                        } else if (read == 255) {
                            this.f17586a = 3;
                        }
                    } else if (read == 216) {
                        this.f17586a = 2;
                    } else {
                        this.f17586a = 6;
                    }
                } else if (read == 255) {
                    this.f17586a = 1;
                } else {
                    this.f17586a = 6;
                }
                this.f17587b = read;
            } catch (IOException e2) {
                l.a(e2);
                throw null;
            }
        }
        return (this.f17586a == 6 || this.f17590e == i2) ? false : true;
    }

    public int a() {
        return this.f17591f;
    }
}
