package i;

import java.net.InetSocketAddress;
import java.net.Proxy;
import javax.annotation.Nullable;

/* compiled from: Route.java */
/* loaded from: classes2.dex */
public final class d0 {

    /* renamed from: a, reason: collision with root package name */
    final a f18434a;

    /* renamed from: b, reason: collision with root package name */
    final Proxy f18435b;

    /* renamed from: c, reason: collision with root package name */
    final InetSocketAddress f18436c;

    public d0(a aVar, Proxy proxy, InetSocketAddress inetSocketAddress) {
        if (aVar == null) {
            throw new NullPointerException("address == null");
        }
        if (proxy == null) {
            throw new NullPointerException("proxy == null");
        }
        if (inetSocketAddress != null) {
            this.f18434a = aVar;
            this.f18435b = proxy;
            this.f18436c = inetSocketAddress;
            return;
        }
        throw new NullPointerException("inetSocketAddress == null");
    }

    public a a() {
        return this.f18434a;
    }

    public Proxy b() {
        return this.f18435b;
    }

    public boolean c() {
        return this.f18434a.f18380i != null && this.f18435b.type() == Proxy.Type.HTTP;
    }

    public InetSocketAddress d() {
        return this.f18436c;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof d0) {
            d0 d0Var = (d0) obj;
            if (d0Var.f18434a.equals(this.f18434a) && d0Var.f18435b.equals(this.f18435b) && d0Var.f18436c.equals(this.f18436c)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((((527 + this.f18434a.hashCode()) * 31) + this.f18435b.hashCode()) * 31) + this.f18436c.hashCode();
    }

    public String toString() {
        return "Route{" + this.f18436c + "}";
    }
}
