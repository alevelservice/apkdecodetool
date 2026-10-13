package i;

import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import javax.annotation.Nullable;
import javax.net.ssl.SSLPeerUnverifiedException;

/* compiled from: CertificatePinner.java */
/* loaded from: classes2.dex */
public final class g {

    /* renamed from: c, reason: collision with root package name */
    public static final g f18438c = new a().a();

    /* renamed from: a, reason: collision with root package name */
    private final Set<b> f18439a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    private final i.g0.k.c f18440b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CertificatePinner.java */
    /* loaded from: classes2.dex */
    public static final class b {

        /* renamed from: a, reason: collision with root package name */
        final String f18442a;

        /* renamed from: b, reason: collision with root package name */
        final String f18443b;

        /* renamed from: c, reason: collision with root package name */
        final String f18444c;

        /* renamed from: d, reason: collision with root package name */
        final j.f f18445d;

        b(String str, String str2) {
            String g2;
            this.f18442a = str;
            if (str.startsWith("*.")) {
                g2 = s.d("http://" + str.substring(2)).g();
            } else {
                g2 = s.d("http://" + str).g();
            }
            this.f18443b = g2;
            if (str2.startsWith("sha1/")) {
                this.f18444c = "sha1/";
                this.f18445d = j.f.decodeBase64(str2.substring(5));
            } else if (str2.startsWith("sha256/")) {
                this.f18444c = "sha256/";
                this.f18445d = j.f.decodeBase64(str2.substring(7));
            } else {
                throw new IllegalArgumentException("pins must start with 'sha256/' or 'sha1/': " + str2);
            }
            if (this.f18445d != null) {
                return;
            }
            throw new IllegalArgumentException("pins must be base64: " + str2);
        }

        boolean a(String str) {
            if (this.f18442a.startsWith("*.")) {
                int indexOf = str.indexOf(46);
                if ((str.length() - indexOf) - 1 == this.f18443b.length()) {
                    String str2 = this.f18443b;
                    if (str.regionMatches(false, indexOf + 1, str2, 0, str2.length())) {
                        return true;
                    }
                }
                return false;
            }
            return str.equals(this.f18443b);
        }

        public boolean equals(Object obj) {
            if (obj instanceof b) {
                b bVar = (b) obj;
                if (this.f18442a.equals(bVar.f18442a) && this.f18444c.equals(bVar.f18444c) && this.f18445d.equals(bVar.f18445d)) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            return ((((527 + this.f18442a.hashCode()) * 31) + this.f18444c.hashCode()) * 31) + this.f18445d.hashCode();
        }

        public String toString() {
            return this.f18444c + this.f18445d.base64();
        }
    }

    g(Set<b> set, @Nullable i.g0.k.c cVar) {
        this.f18439a = set;
        this.f18440b = cVar;
    }

    static j.f b(X509Certificate x509Certificate) {
        return j.f.of(x509Certificate.getPublicKey().getEncoded()).sha256();
    }

    public void a(String str, List<Certificate> list) {
        List<b> a2 = a(str);
        if (a2.isEmpty()) {
            return;
        }
        i.g0.k.c cVar = this.f18440b;
        if (cVar != null) {
            list = cVar.a(list, str);
        }
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            X509Certificate x509Certificate = (X509Certificate) list.get(i2);
            int size2 = a2.size();
            j.f fVar = null;
            j.f fVar2 = null;
            for (int i3 = 0; i3 < size2; i3++) {
                b bVar = a2.get(i3);
                if (bVar.f18444c.equals("sha256/")) {
                    if (fVar == null) {
                        fVar = b(x509Certificate);
                    }
                    if (bVar.f18445d.equals(fVar)) {
                        return;
                    }
                } else if (bVar.f18444c.equals("sha1/")) {
                    if (fVar2 == null) {
                        fVar2 = a(x509Certificate);
                    }
                    if (bVar.f18445d.equals(fVar2)) {
                        return;
                    }
                } else {
                    throw new AssertionError("unsupported hashAlgorithm: " + bVar.f18444c);
                }
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Certificate pinning failure!");
        sb.append("\n  Peer certificate chain:");
        int size3 = list.size();
        for (int i4 = 0; i4 < size3; i4++) {
            X509Certificate x509Certificate2 = (X509Certificate) list.get(i4);
            sb.append("\n    ");
            sb.append(a((Certificate) x509Certificate2));
            sb.append(": ");
            sb.append(x509Certificate2.getSubjectDN().getName());
        }
        sb.append("\n  Pinned certificates for ");
        sb.append(str);
        sb.append(":");
        int size4 = a2.size();
        for (int i5 = 0; i5 < size4; i5++) {
            b bVar2 = a2.get(i5);
            sb.append("\n    ");
            sb.append(bVar2);
        }
        throw new SSLPeerUnverifiedException(sb.toString());
    }

    public boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof g) {
            g gVar = (g) obj;
            if (i.g0.c.a(this.f18440b, gVar.f18440b) && this.f18439a.equals(gVar.f18439a)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        i.g0.k.c cVar = this.f18440b;
        return ((cVar != null ? cVar.hashCode() : 0) * 31) + this.f18439a.hashCode();
    }

    /* compiled from: CertificatePinner.java */
    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        private final List<b> f18441a = new ArrayList();

        public a a(String str, String... strArr) {
            if (str != null) {
                for (String str2 : strArr) {
                    this.f18441a.add(new b(str, str2));
                }
                return this;
            }
            throw new NullPointerException("pattern == null");
        }

        public g a() {
            return new g(new LinkedHashSet(this.f18441a), null);
        }
    }

    List<b> a(String str) {
        List<b> emptyList = Collections.emptyList();
        for (b bVar : this.f18439a) {
            if (bVar.a(str)) {
                if (emptyList.isEmpty()) {
                    emptyList = new ArrayList<>();
                }
                emptyList.add(bVar);
            }
        }
        return emptyList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public g a(@Nullable i.g0.k.c cVar) {
        return i.g0.c.a(this.f18440b, cVar) ? this : new g(this.f18439a, cVar);
    }

    public static String a(Certificate certificate) {
        if (certificate instanceof X509Certificate) {
            return "sha256/" + b((X509Certificate) certificate).base64();
        }
        throw new IllegalArgumentException("Certificate pinning requires X509 certificates");
    }

    static j.f a(X509Certificate x509Certificate) {
        return j.f.of(x509Certificate.getPublicKey().getEncoded()).sha1();
    }
}
