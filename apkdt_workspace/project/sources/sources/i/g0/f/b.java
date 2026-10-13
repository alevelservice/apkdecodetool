package i.g0.f;

import i.k;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.UnknownServiceException;
import java.security.cert.CertificateException;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLProtocolException;
import javax.net.ssl.SSLSocket;

/* compiled from: ConnectionSpecSelector.java */
/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    private final List<k> f18482a;

    /* renamed from: b, reason: collision with root package name */
    private int f18483b = 0;

    /* renamed from: c, reason: collision with root package name */
    private boolean f18484c;

    /* renamed from: d, reason: collision with root package name */
    private boolean f18485d;

    public b(List<k> list) {
        this.f18482a = list;
    }

    private boolean b(SSLSocket sSLSocket) {
        for (int i2 = this.f18483b; i2 < this.f18482a.size(); i2++) {
            if (this.f18482a.get(i2).a(sSLSocket)) {
                return true;
            }
        }
        return false;
    }

    public k a(SSLSocket sSLSocket) {
        k kVar;
        int i2 = this.f18483b;
        int size = this.f18482a.size();
        while (true) {
            if (i2 >= size) {
                kVar = null;
                break;
            }
            kVar = this.f18482a.get(i2);
            if (kVar.a(sSLSocket)) {
                this.f18483b = i2 + 1;
                break;
            }
            i2++;
        }
        if (kVar != null) {
            this.f18484c = b(sSLSocket);
            i.g0.a.f18446a.a(kVar, sSLSocket, this.f18485d);
            return kVar;
        }
        throw new UnknownServiceException("Unable to find acceptable protocols. isFallback=" + this.f18485d + ", modes=" + this.f18482a + ", supported protocols=" + Arrays.toString(sSLSocket.getEnabledProtocols()));
    }

    public boolean a(IOException iOException) {
        this.f18485d = true;
        if (!this.f18484c || (iOException instanceof ProtocolException) || (iOException instanceof InterruptedIOException)) {
            return false;
        }
        boolean z = iOException instanceof SSLHandshakeException;
        if ((z && (iOException.getCause() instanceof CertificateException)) || (iOException instanceof SSLPeerUnverifiedException)) {
            return false;
        }
        return z || (iOException instanceof SSLProtocolException) || (iOException instanceof SSLException);
    }
}
