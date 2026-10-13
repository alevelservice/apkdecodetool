package e.i.b.a.i.w.j;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AutoValue_PersistedEvent.java */
/* loaded from: classes.dex */
public final class b extends i {

    /* renamed from: a, reason: collision with root package name */
    private final long f17754a;

    /* renamed from: b, reason: collision with root package name */
    private final e.i.b.a.i.m f17755b;

    /* renamed from: c, reason: collision with root package name */
    private final e.i.b.a.i.h f17756c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(long j2, e.i.b.a.i.m mVar, e.i.b.a.i.h hVar) {
        this.f17754a = j2;
        if (mVar != null) {
            this.f17755b = mVar;
            if (hVar != null) {
                this.f17756c = hVar;
                return;
            }
            throw new NullPointerException("Null event");
        }
        throw new NullPointerException("Null transportContext");
    }

    @Override // e.i.b.a.i.w.j.i
    public e.i.b.a.i.h a() {
        return this.f17756c;
    }

    @Override // e.i.b.a.i.w.j.i
    public long b() {
        return this.f17754a;
    }

    @Override // e.i.b.a.i.w.j.i
    public e.i.b.a.i.m c() {
        return this.f17755b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        return this.f17754a == iVar.b() && this.f17755b.equals(iVar.c()) && this.f17756c.equals(iVar.a());
    }

    public int hashCode() {
        long j2 = this.f17754a;
        return this.f17756c.hashCode() ^ ((((((int) (j2 ^ (j2 >>> 32))) ^ 1000003) * 1000003) ^ this.f17755b.hashCode()) * 1000003);
    }

    public String toString() {
        return "PersistedEvent{id=" + this.f17754a + ", transportContext=" + this.f17755b + ", event=" + this.f17756c + "}";
    }
}
