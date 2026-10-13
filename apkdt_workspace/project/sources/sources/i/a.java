package i;

import i.s;
import java.net.Proxy;
import java.net.ProxySelector;
import java.util.List;
import javax.annotation.Nullable;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;

/* compiled from: Address.java */
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    final s f18372a;

    /* renamed from: b, reason: collision with root package name */
    final o f18373b;

    /* renamed from: c, reason: collision with root package name */
    final SocketFactory f18374c;

    /* renamed from: d, reason: collision with root package name */
    final b f18375d;

    /* renamed from: e, reason: collision with root package name */
    final List<x> f18376e;

    /* renamed from: f, reason: collision with root package name */
    final List<k> f18377f;

    /* renamed from: g, reason: collision with root package name */
    final ProxySelector f18378g;

    /* renamed from: h, reason: collision with root package name */
    @Nullable
    final Proxy f18379h;

    /* renamed from: i, reason: collision with root package name */
    @Nullable
    final SSLSocketFactory f18380i;

    /* renamed from: j, reason: collision with root package name */
    @Nullable
    final HostnameVerifier f18381j;

    /* renamed from: k, reason: collision with root package name */
    @Nullable
    final g f18382k;

    public a(String str, int i2, o oVar, SocketFactory socketFactory, @Nullable SSLSocketFactory sSLSocketFactory, @Nullable HostnameVerifier hostnameVerifier, @Nullable g gVar, b bVar, @Nullable Proxy proxy, List<x> list, List<k> list2, ProxySelector proxySelector) {
        s.a aVar = new s.a();
        aVar.e(sSLSocketFactory != null ? "https" : "http");
        aVar.c(str);
        aVar.a(i2);
        this.f18372a = aVar.a();
        if (oVar != null) {
            this.f18373b = oVar;
            if (socketFactory != null) {
                this.f18374c = socketFactory;
                if (bVar != null) {
                    this.f18375d = bVar;
                    if (list != null) {
                        this.f18376e = i.g0.c.a(list);
                        if (list2 != null) {
                            this.f18377f = i.g0.c.a(list2);
                            if (proxySelector != null) {
                                this.f18378g = proxySelector;
                                this.f18379h = proxy;
                                this.f18380i = sSLSocketFactory;
                                this.f18381j = hostnameVerifier;
                                this.f18382k = gVar;
                                return;
                            }
                            throw new NullPointerException("proxySelector == null");
                        }
                        throw new NullPointerException("connectionSpecs == null");
                    }
                    throw new NullPointerException("protocols == null");
                }
                throw new NullPointerException("proxyAuthenticator == null");
            }
            throw new NullPointerException("socketFactory == null");
        }
        throw new NullPointerException("dns == null");
    }

    @Nullable
    public g a() {
        return this.f18382k;
    }

    public List<k> b() {
        return this.f18377f;
    }

    public o c() {
        return this.f18373b;
    }

    @Nullable
    public HostnameVerifier d() {
        return this.f18381j;
    }

    public List<x> e() {
        return this.f18376e;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof a) {
            a aVar = (a) obj;
            if (this.f18372a.equals(aVar.f18372a) && a(aVar)) {
                return true;
            }
        }
        return false;
    }

    @Nullable
    public Proxy f() {
        return this.f18379h;
    }

    public b g() {
        return this.f18375d;
    }

    public ProxySelector h() {
        return this.f18378g;
    }

    public int hashCode() {
        int hashCode = (((((((((((527 + this.f18372a.hashCode()) * 31) + this.f18373b.hashCode()) * 31) + this.f18375d.hashCode()) * 31) + this.f18376e.hashCode()) * 31) + this.f18377f.hashCode()) * 31) + this.f18378g.hashCode()) * 31;
        Proxy proxy = this.f18379h;
        int hashCode2 = (hashCode + (proxy != null ? proxy.hashCode() : 0)) * 31;
        SSLSocketFactory sSLSocketFactory = this.f18380i;
        int hashCode3 = (hashCode2 + (sSLSocketFactory != null ? sSLSocketFactory.hashCode() : 0)) * 31;
        HostnameVerifier hostnameVerifier = this.f18381j;
        int hashCode4 = (hashCode3 + (hostnameVerifier != null ? hostnameVerifier.hashCode() : 0)) * 31;
        g gVar = this.f18382k;
        return hashCode4 + (gVar != null ? gVar.hashCode() : 0);
    }

    public SocketFactory i() {
        return this.f18374c;
    }

    @Nullable
    public SSLSocketFactory j() {
        return this.f18380i;
    }

    public s k() {
        return this.f18372a;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Address{");
        sb.append(this.f18372a.g());
        sb.append(":");
        sb.append(this.f18372a.j());
        if (this.f18379h != null) {
            sb.append(", proxy=");
            sb.append(this.f18379h);
        } else {
            sb.append(", proxySelector=");
            sb.append(this.f18378g);
        }
        sb.append("}");
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(a aVar) {
        return this.f18373b.equals(aVar.f18373b) && this.f18375d.equals(aVar.f18375d) && this.f18376e.equals(aVar.f18376e) && this.f18377f.equals(aVar.f18377f) && this.f18378g.equals(aVar.f18378g) && i.g0.c.a(this.f18379h, aVar.f18379h) && i.g0.c.a(this.f18380i, aVar.f18380i) && i.g0.c.a(this.f18381j, aVar.f18381j) && i.g0.c.a(this.f18382k, aVar.f18382k) && k().j() == aVar.k().j();
    }
}
