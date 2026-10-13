package i;

import java.io.IOException;
import java.security.cert.Certificate;
import java.util.Collections;
import java.util.List;
import javax.annotation.Nullable;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;

/* compiled from: Handshake.java */
/* loaded from: classes2.dex */
public final class q {

    /* renamed from: a, reason: collision with root package name */
    private final e0 f18774a;

    /* renamed from: b, reason: collision with root package name */
    private final h f18775b;

    /* renamed from: c, reason: collision with root package name */
    private final List<Certificate> f18776c;

    /* renamed from: d, reason: collision with root package name */
    private final List<Certificate> f18777d;

    private q(e0 e0Var, h hVar, List<Certificate> list, List<Certificate> list2) {
        this.f18774a = e0Var;
        this.f18775b = hVar;
        this.f18776c = list;
        this.f18777d = list2;
    }

    public static q a(SSLSession sSLSession) {
        Certificate[] certificateArr;
        List emptyList;
        List emptyList2;
        String cipherSuite = sSLSession.getCipherSuite();
        if (cipherSuite != null) {
            if (!"SSL_NULL_WITH_NULL_NULL".equals(cipherSuite)) {
                h a2 = h.a(cipherSuite);
                String protocol = sSLSession.getProtocol();
                if (protocol != null) {
                    if (!"NONE".equals(protocol)) {
                        e0 forJavaName = e0.forJavaName(protocol);
                        try {
                            certificateArr = sSLSession.getPeerCertificates();
                        } catch (SSLPeerUnverifiedException unused) {
                            certificateArr = null;
                        }
                        if (certificateArr != null) {
                            emptyList = i.g0.c.a(certificateArr);
                        } else {
                            emptyList = Collections.emptyList();
                        }
                        Certificate[] localCertificates = sSLSession.getLocalCertificates();
                        if (localCertificates != null) {
                            emptyList2 = i.g0.c.a(localCertificates);
                        } else {
                            emptyList2 = Collections.emptyList();
                        }
                        return new q(forJavaName, a2, emptyList, emptyList2);
                    }
                    throw new IOException("tlsVersion == NONE");
                }
                throw new IllegalStateException("tlsVersion == null");
            }
            throw new IOException("cipherSuite == SSL_NULL_WITH_NULL_NULL");
        }
        throw new IllegalStateException("cipherSuite == null");
    }

    public List<Certificate> b() {
        return this.f18776c;
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof q)) {
            return false;
        }
        q qVar = (q) obj;
        return this.f18774a.equals(qVar.f18774a) && this.f18775b.equals(qVar.f18775b) && this.f18776c.equals(qVar.f18776c) && this.f18777d.equals(qVar.f18777d);
    }

    public int hashCode() {
        return ((((((527 + this.f18774a.hashCode()) * 31) + this.f18775b.hashCode()) * 31) + this.f18776c.hashCode()) * 31) + this.f18777d.hashCode();
    }

    public h a() {
        return this.f18775b;
    }
}
