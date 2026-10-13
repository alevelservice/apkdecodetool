package i.g0.k;

import java.security.cert.Certificate;
import java.util.List;
import javax.net.ssl.X509TrustManager;

/* compiled from: CertificateChainCleaner.java */
/* loaded from: classes2.dex */
public abstract class c {
    public static c a(X509TrustManager x509TrustManager) {
        return okhttp3.internal.platform.e.c().a(x509TrustManager);
    }

    public abstract List<Certificate> a(List<Certificate> list, String str);
}
