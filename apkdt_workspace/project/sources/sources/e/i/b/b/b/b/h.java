package e.i.b.b.b.b;

import java.io.IOException;
import java.io.InputStream;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: com.google.firebase:firebase-messaging@@21.0.1 */
/* loaded from: classes.dex */
public final class h {

    /* renamed from: a, reason: collision with root package name */
    static final Logger f17819a = Logger.getLogger(h.class.getName());

    private h() {
    }

    public static void a(@NullableDecl InputStream inputStream) {
        if (inputStream == null) {
            return;
        }
        try {
            inputStream.close();
        } catch (IOException e2) {
            try {
                f17819a.logp(Level.WARNING, "com.google.common.io.Closeables", "close", "IOException thrown while closing Closeable.", (Throwable) e2);
            } catch (IOException e3) {
                throw new AssertionError(e3);
            }
        }
    }
}
