package e.f.h;

import com.facebook.common.internal.h;
import com.facebook.common.internal.l;
import e.f.h.c;
import java.io.IOException;
import java.io.InputStream;
import java.util.Iterator;
import java.util.List;
import javax.annotation.Nullable;

/* compiled from: ImageFormatChecker.java */
/* loaded from: classes.dex */
public class d {

    /* renamed from: d, reason: collision with root package name */
    private static d f17463d;

    /* renamed from: a, reason: collision with root package name */
    private int f17464a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    private List<c.a> f17465b;

    /* renamed from: c, reason: collision with root package name */
    private final c.a f17466c = new a();

    private d() {
        b();
    }

    private void b() {
        this.f17464a = this.f17466c.a();
        List<c.a> list = this.f17465b;
        if (list != null) {
            Iterator<c.a> it = list.iterator();
            while (it.hasNext()) {
                this.f17464a = Math.max(this.f17464a, it.next().a());
            }
        }
    }

    public static c c(InputStream inputStream) {
        try {
            return b(inputStream);
        } catch (IOException e2) {
            l.a(e2);
            throw null;
        }
    }

    public c a(InputStream inputStream) {
        h.a(inputStream);
        int i2 = this.f17464a;
        byte[] bArr = new byte[i2];
        int a2 = a(i2, inputStream, bArr);
        c a3 = this.f17466c.a(bArr, a2);
        if (a3 != null && a3 != c.f17461b) {
            return a3;
        }
        List<c.a> list = this.f17465b;
        if (list != null) {
            Iterator<c.a> it = list.iterator();
            while (it.hasNext()) {
                c a4 = it.next().a(bArr, a2);
                if (a4 != null && a4 != c.f17461b) {
                    return a4;
                }
            }
        }
        return c.f17461b;
    }

    public static c b(InputStream inputStream) {
        return a().a(inputStream);
    }

    private static int a(int i2, InputStream inputStream, byte[] bArr) {
        h.a(inputStream);
        h.a(bArr);
        h.a(bArr.length >= i2);
        if (inputStream.markSupported()) {
            try {
                inputStream.mark(i2);
                return com.facebook.common.internal.a.a(inputStream, bArr, 0, i2);
            } finally {
                inputStream.reset();
            }
        }
        return com.facebook.common.internal.a.a(inputStream, bArr, 0, i2);
    }

    public static synchronized d a() {
        d dVar;
        synchronized (d.class) {
            if (f17463d == null) {
                f17463d = new d();
            }
            dVar = f17463d;
        }
        return dVar;
    }
}
