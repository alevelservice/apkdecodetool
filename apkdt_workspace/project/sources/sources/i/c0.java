package i;

import java.io.Closeable;
import java.io.IOException;
import java.nio.charset.Charset;
import javax.annotation.Nullable;

/* compiled from: ResponseBody.java */
/* loaded from: classes2.dex */
public abstract class c0 implements Closeable {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ResponseBody.java */
    /* loaded from: classes2.dex */
    public class a extends c0 {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ u f18411e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ long f18412f;

        /* renamed from: g, reason: collision with root package name */
        final /* synthetic */ j.e f18413g;

        a(u uVar, long j2, j.e eVar) {
            this.f18411e = uVar;
            this.f18412f = j2;
            this.f18413g = eVar;
        }

        @Override // i.c0
        public long j() {
            return this.f18412f;
        }

        @Override // i.c0
        @Nullable
        public u k() {
            return this.f18411e;
        }

        @Override // i.c0
        public j.e l() {
            return this.f18413g;
        }
    }

    public static c0 a(@Nullable u uVar, byte[] bArr) {
        j.c cVar = new j.c();
        cVar.write(bArr);
        return a(uVar, bArr.length, cVar);
    }

    private Charset o() {
        u k2 = k();
        return k2 != null ? k2.a(i.g0.c.f18456i) : i.g0.c.f18456i;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        i.g0.c.a(l());
    }

    public final byte[] i() {
        long j2 = j();
        if (j2 <= 2147483647L) {
            j.e l2 = l();
            try {
                byte[] c2 = l2.c();
                i.g0.c.a(l2);
                if (j2 == -1 || j2 == c2.length) {
                    return c2;
                }
                throw new IOException("Content-Length (" + j2 + ") and stream length (" + c2.length + ") disagree");
            } catch (Throwable th) {
                i.g0.c.a(l2);
                throw th;
            }
        }
        throw new IOException("Cannot buffer entire body for content length: " + j2);
    }

    public abstract long j();

    @Nullable
    public abstract u k();

    public abstract j.e l();

    public final String m() {
        j.e l2 = l();
        try {
            return l2.a(i.g0.c.a(l2, o()));
        } finally {
            i.g0.c.a(l2);
        }
    }

    public static c0 a(@Nullable u uVar, long j2, j.e eVar) {
        if (eVar != null) {
            return new a(uVar, j2, eVar);
        }
        throw new NullPointerException("source == null");
    }
}
