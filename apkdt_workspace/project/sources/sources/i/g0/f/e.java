package i.g0.f;

import java.io.IOException;

/* compiled from: RouteException.java */
/* loaded from: classes2.dex */
public final class e extends RuntimeException {
    private IOException firstException;
    private IOException lastException;

    public e(IOException iOException) {
        super(iOException);
        this.firstException = iOException;
        this.lastException = iOException;
    }

    public void addConnectException(IOException iOException) {
        i.g0.c.a((Throwable) this.firstException, (Throwable) iOException);
        this.lastException = iOException;
    }

    public IOException getFirstConnectException() {
        return this.firstException;
    }

    public IOException getLastConnectException() {
        return this.lastException;
    }
}
