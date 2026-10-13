package i.g0.f;

import i.d0;
import i.p;
import i.s;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.SocketAddress;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.NoSuchElementException;

/* compiled from: RouteSelector.java */
/* loaded from: classes2.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    private final i.a f18498a;

    /* renamed from: b, reason: collision with root package name */
    private final d f18499b;

    /* renamed from: c, reason: collision with root package name */
    private final i.e f18500c;

    /* renamed from: d, reason: collision with root package name */
    private final p f18501d;

    /* renamed from: f, reason: collision with root package name */
    private int f18503f;

    /* renamed from: e, reason: collision with root package name */
    private List<Proxy> f18502e = Collections.emptyList();

    /* renamed from: g, reason: collision with root package name */
    private List<InetSocketAddress> f18504g = Collections.emptyList();

    /* renamed from: h, reason: collision with root package name */
    private final List<d0> f18505h = new ArrayList();

    /* compiled from: RouteSelector.java */
    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        private final List<d0> f18506a;

        /* renamed from: b, reason: collision with root package name */
        private int f18507b = 0;

        a(List<d0> list) {
            this.f18506a = list;
        }

        public List<d0> a() {
            return new ArrayList(this.f18506a);
        }

        public boolean b() {
            return this.f18507b < this.f18506a.size();
        }

        public d0 c() {
            if (b()) {
                List<d0> list = this.f18506a;
                int i2 = this.f18507b;
                this.f18507b = i2 + 1;
                return list.get(i2);
            }
            throw new NoSuchElementException();
        }
    }

    public f(i.a aVar, d dVar, i.e eVar, p pVar) {
        this.f18498a = aVar;
        this.f18499b = dVar;
        this.f18500c = eVar;
        this.f18501d = pVar;
        a(aVar.k(), aVar.f());
    }

    private boolean c() {
        return this.f18503f < this.f18502e.size();
    }

    private Proxy d() {
        if (c()) {
            List<Proxy> list = this.f18502e;
            int i2 = this.f18503f;
            this.f18503f = i2 + 1;
            Proxy proxy = list.get(i2);
            a(proxy);
            return proxy;
        }
        throw new SocketException("No route to " + this.f18498a.k().g() + "; exhausted proxy configurations: " + this.f18502e);
    }

    public boolean a() {
        return c() || !this.f18505h.isEmpty();
    }

    public a b() {
        if (a()) {
            ArrayList arrayList = new ArrayList();
            while (c()) {
                Proxy d2 = d();
                int size = this.f18504g.size();
                for (int i2 = 0; i2 < size; i2++) {
                    d0 d0Var = new d0(this.f18498a, d2, this.f18504g.get(i2));
                    if (this.f18499b.c(d0Var)) {
                        this.f18505h.add(d0Var);
                    } else {
                        arrayList.add(d0Var);
                    }
                }
                if (!arrayList.isEmpty()) {
                    break;
                }
            }
            if (arrayList.isEmpty()) {
                arrayList.addAll(this.f18505h);
                this.f18505h.clear();
            }
            return new a(arrayList);
        }
        throw new NoSuchElementException();
    }

    public void a(d0 d0Var, IOException iOException) {
        if (d0Var.b().type() != Proxy.Type.DIRECT && this.f18498a.h() != null) {
            this.f18498a.h().connectFailed(this.f18498a.k().o(), d0Var.b().address(), iOException);
        }
        this.f18499b.b(d0Var);
    }

    private void a(s sVar, Proxy proxy) {
        if (proxy != null) {
            this.f18502e = Collections.singletonList(proxy);
        } else {
            List<Proxy> select = this.f18498a.h().select(sVar.o());
            this.f18502e = (select == null || select.isEmpty()) ? i.g0.c.a(Proxy.NO_PROXY) : i.g0.c.a(select);
        }
        this.f18503f = 0;
    }

    private void a(Proxy proxy) {
        String g2;
        int j2;
        this.f18504g = new ArrayList();
        if (proxy.type() != Proxy.Type.DIRECT && proxy.type() != Proxy.Type.SOCKS) {
            SocketAddress address = proxy.address();
            if (address instanceof InetSocketAddress) {
                InetSocketAddress inetSocketAddress = (InetSocketAddress) address;
                g2 = a(inetSocketAddress);
                j2 = inetSocketAddress.getPort();
            } else {
                throw new IllegalArgumentException("Proxy.address() is not an InetSocketAddress: " + address.getClass());
            }
        } else {
            g2 = this.f18498a.k().g();
            j2 = this.f18498a.k().j();
        }
        if (j2 >= 1 && j2 <= 65535) {
            if (proxy.type() == Proxy.Type.SOCKS) {
                this.f18504g.add(InetSocketAddress.createUnresolved(g2, j2));
                return;
            }
            this.f18501d.a(this.f18500c, g2);
            List<InetAddress> a2 = this.f18498a.c().a(g2);
            if (!a2.isEmpty()) {
                this.f18501d.a(this.f18500c, g2, a2);
                int size = a2.size();
                for (int i2 = 0; i2 < size; i2++) {
                    this.f18504g.add(new InetSocketAddress(a2.get(i2), j2));
                }
                return;
            }
            throw new UnknownHostException(this.f18498a.c() + " returned no addresses for " + g2);
        }
        throw new SocketException("No route to " + g2 + ":" + j2 + "; port is out of range");
    }

    static String a(InetSocketAddress inetSocketAddress) {
        InetAddress address = inetSocketAddress.getAddress();
        if (address == null) {
            return inetSocketAddress.getHostName();
        }
        return address.getHostAddress();
    }
}
