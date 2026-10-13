package j;

import java.util.concurrent.TimeUnit;

/* compiled from: ForwardingTimeout.java */
/* loaded from: classes2.dex */
public class j extends v {

    /* renamed from: e, reason: collision with root package name */
    private v f19646e;

    public j(v vVar) {
        if (vVar != null) {
            this.f19646e = vVar;
            return;
        }
        throw new IllegalArgumentException("delegate == null");
    }

    public final j a(v vVar) {
        if (vVar != null) {
            this.f19646e = vVar;
            return this;
        }
        throw new IllegalArgumentException("delegate == null");
    }

    @Override // j.v
    public v b() {
        return this.f19646e.b();
    }

    @Override // j.v
    public long c() {
        return this.f19646e.c();
    }

    @Override // j.v
    public boolean d() {
        return this.f19646e.d();
    }

    @Override // j.v
    public void e() {
        this.f19646e.e();
    }

    public final v g() {
        return this.f19646e;
    }

    @Override // j.v
    public v a(long j2, TimeUnit timeUnit) {
        return this.f19646e.a(j2, timeUnit);
    }

    @Override // j.v
    public v a(long j2) {
        return this.f19646e.a(j2);
    }

    @Override // j.v
    public v a() {
        return this.f19646e.a();
    }
}
