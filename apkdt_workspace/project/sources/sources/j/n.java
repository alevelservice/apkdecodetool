package j;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.Nullable;

/* compiled from: Okio.java */
/* loaded from: classes2.dex */
public final class n {

    /* renamed from: a, reason: collision with root package name */
    static final Logger f19661a = Logger.getLogger(n.class.getName());

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Okio.java */
    /* loaded from: classes2.dex */
    public final class a implements t {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ v f19662e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ OutputStream f19663f;

        a(v vVar, OutputStream outputStream) {
            this.f19662e = vVar;
            this.f19663f = outputStream;
        }

        @Override // j.t
        public void a(j.c cVar, long j2) {
            w.a(cVar.f19640f, 0L, j2);
            while (j2 > 0) {
                this.f19662e.e();
                q qVar = cVar.f19639e;
                int min = (int) Math.min(j2, qVar.f19675c - qVar.f19674b);
                this.f19663f.write(qVar.f19673a, qVar.f19674b, min);
                qVar.f19674b += min;
                long j3 = min;
                j2 -= j3;
                cVar.f19640f -= j3;
                if (qVar.f19674b == qVar.f19675c) {
                    cVar.f19639e = qVar.b();
                    r.a(qVar);
                }
            }
        }

        @Override // j.t, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.f19663f.close();
        }

        @Override // j.t, java.io.Flushable
        public void flush() {
            this.f19663f.flush();
        }

        @Override // j.t
        public v timeout() {
            return this.f19662e;
        }

        public String toString() {
            return "sink(" + this.f19663f + ")";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Okio.java */
    /* loaded from: classes2.dex */
    public final class b implements u {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ v f19664e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ InputStream f19665f;

        b(v vVar, InputStream inputStream) {
            this.f19664e = vVar;
            this.f19665f = inputStream;
        }

        @Override // j.u
        public long b(j.c cVar, long j2) {
            if (j2 < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j2);
            }
            if (j2 == 0) {
                return 0L;
            }
            try {
                this.f19664e.e();
                q c2 = cVar.c(1);
                int read = this.f19665f.read(c2.f19673a, c2.f19675c, (int) Math.min(j2, 8192 - c2.f19675c));
                if (read == -1) {
                    return -1L;
                }
                c2.f19675c += read;
                long j3 = read;
                cVar.f19640f += j3;
                return j3;
            } catch (AssertionError e2) {
                if (n.a(e2)) {
                    throw new IOException(e2);
                }
                throw e2;
            }
        }

        @Override // j.u, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.f19665f.close();
        }

        @Override // j.u
        public v timeout() {
            return this.f19664e;
        }

        public String toString() {
            return "source(" + this.f19665f + ")";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Okio.java */
    /* loaded from: classes2.dex */
    public final class c extends j.a {

        /* renamed from: k, reason: collision with root package name */
        final /* synthetic */ Socket f19666k;

        c(Socket socket) {
            this.f19666k = socket;
        }

        @Override // j.a
        protected IOException b(@Nullable IOException iOException) {
            SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
            if (iOException != null) {
                socketTimeoutException.initCause(iOException);
            }
            return socketTimeoutException;
        }

        @Override // j.a
        protected void i() {
            try {
                this.f19666k.close();
            } catch (AssertionError e2) {
                if (n.a(e2)) {
                    n.f19661a.log(Level.WARNING, "Failed to close timed out socket " + this.f19666k, (Throwable) e2);
                    return;
                }
                throw e2;
            } catch (Exception e3) {
                n.f19661a.log(Level.WARNING, "Failed to close timed out socket " + this.f19666k, (Throwable) e3);
            }
        }
    }

    private n() {
    }

    public static e a(u uVar) {
        return new p(uVar);
    }

    public static u b(Socket socket) {
        if (socket != null) {
            if (socket.getInputStream() != null) {
                j.a c2 = c(socket);
                return c2.a(a(socket.getInputStream(), c2));
            }
            throw new IOException("socket's input stream == null");
        }
        throw new IllegalArgumentException("socket == null");
    }

    private static j.a c(Socket socket) {
        return new c(socket);
    }

    public static d a(t tVar) {
        return new o(tVar);
    }

    private static t a(OutputStream outputStream, v vVar) {
        if (outputStream == null) {
            throw new IllegalArgumentException("out == null");
        }
        if (vVar != null) {
            return new a(vVar, outputStream);
        }
        throw new IllegalArgumentException("timeout == null");
    }

    public static t a(Socket socket) {
        if (socket != null) {
            if (socket.getOutputStream() != null) {
                j.a c2 = c(socket);
                return c2.a(a(socket.getOutputStream(), c2));
            }
            throw new IOException("socket's output stream == null");
        }
        throw new IllegalArgumentException("socket == null");
    }

    public static u a(InputStream inputStream) {
        return a(inputStream, new v());
    }

    private static u a(InputStream inputStream, v vVar) {
        if (inputStream == null) {
            throw new IllegalArgumentException("in == null");
        }
        if (vVar != null) {
            return new b(vVar, inputStream);
        }
        throw new IllegalArgumentException("timeout == null");
    }

    public static u a(File file) {
        if (file != null) {
            return a(new FileInputStream(file));
        }
        throw new IllegalArgumentException("file == null");
    }

    static boolean a(AssertionError assertionError) {
        return (assertionError.getCause() == null || assertionError.getMessage() == null || !assertionError.getMessage().contains("getsockname failed")) ? false : true;
    }
}
