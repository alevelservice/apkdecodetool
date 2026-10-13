package e.f.i.g;

/* compiled from: ImmutableQualityInfo.java */
/* loaded from: classes.dex */
public class g implements h {

    /* renamed from: d, reason: collision with root package name */
    public static final h f17609d = a(Integer.MAX_VALUE, true, true);

    /* renamed from: a, reason: collision with root package name */
    int f17610a;

    /* renamed from: b, reason: collision with root package name */
    boolean f17611b;

    /* renamed from: c, reason: collision with root package name */
    boolean f17612c;

    private g(int i2, boolean z, boolean z2) {
        this.f17610a = i2;
        this.f17611b = z;
        this.f17612c = z2;
    }

    @Override // e.f.i.g.h
    public boolean a() {
        return this.f17612c;
    }

    @Override // e.f.i.g.h
    public boolean b() {
        return this.f17611b;
    }

    @Override // e.f.i.g.h
    public int c() {
        return this.f17610a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        return this.f17610a == gVar.f17610a && this.f17611b == gVar.f17611b && this.f17612c == gVar.f17612c;
    }

    public int hashCode() {
        return (this.f17610a ^ (this.f17611b ? 4194304 : 0)) ^ (this.f17612c ? 8388608 : 0);
    }

    public static h a(int i2, boolean z, boolean z2) {
        return new g(i2, z, z2);
    }
}
