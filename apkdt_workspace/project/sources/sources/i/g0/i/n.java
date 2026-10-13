package i.g0.i;

import java.io.IOException;

/* compiled from: StreamResetException.java */
/* loaded from: classes2.dex */
public final class n extends IOException {
    public final b errorCode;

    public n(b bVar) {
        super("stream was reset: " + bVar);
        this.errorCode = bVar;
    }
}
