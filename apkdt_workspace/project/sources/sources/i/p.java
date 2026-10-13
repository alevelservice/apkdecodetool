package i;

import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.util.List;
import javax.annotation.Nullable;

/* compiled from: EventListener.java */
/* loaded from: classes2.dex */
public abstract class p {

    /* renamed from: a, reason: collision with root package name */
    public static final p f18772a = new a();

    /* compiled from: EventListener.java */
    /* loaded from: classes2.dex */
    class a extends p {
        a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: EventListener.java */
    /* loaded from: classes2.dex */
    public class b implements c {
        b() {
        }

        @Override // i.p.c
        public p a(e eVar) {
            return p.this;
        }
    }

    /* compiled from: EventListener.java */
    /* loaded from: classes2.dex */
    public interface c {
        p a(e eVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static c a(p pVar) {
        return new b();
    }

    public void a(e eVar) {
    }

    public void a(e eVar, long j2) {
    }

    public void a(e eVar, b0 b0Var) {
    }

    public void a(e eVar, i iVar) {
    }

    public void a(e eVar, @Nullable q qVar) {
    }

    public void a(e eVar, z zVar) {
    }

    public void a(e eVar, IOException iOException) {
    }

    public void a(e eVar, String str) {
    }

    public void a(e eVar, String str, List<InetAddress> list) {
    }

    public void a(e eVar, InetSocketAddress inetSocketAddress, Proxy proxy) {
    }

    public void a(e eVar, InetSocketAddress inetSocketAddress, Proxy proxy, @Nullable x xVar) {
    }

    public void a(e eVar, InetSocketAddress inetSocketAddress, Proxy proxy, @Nullable x xVar, IOException iOException) {
    }

    public void b(e eVar) {
    }

    public void b(e eVar, long j2) {
    }

    public void b(e eVar, i iVar) {
    }

    public void c(e eVar) {
    }

    public void d(e eVar) {
    }

    public void e(e eVar) {
    }

    public void f(e eVar) {
    }

    public void g(e eVar) {
    }
}
