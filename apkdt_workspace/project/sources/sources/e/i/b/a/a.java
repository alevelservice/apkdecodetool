package e.i.b.a;

import androidx.annotation.Nullable;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AutoValue_Event.java */
/* loaded from: classes.dex */
public final class a<T> extends c<T> {

    /* renamed from: a, reason: collision with root package name */
    private final Integer f17653a;

    /* renamed from: b, reason: collision with root package name */
    private final T f17654b;

    /* renamed from: c, reason: collision with root package name */
    private final d f17655c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(@Nullable Integer num, T t, d dVar) {
        this.f17653a = num;
        if (t != null) {
            this.f17654b = t;
            if (dVar != null) {
                this.f17655c = dVar;
                return;
            }
            throw new NullPointerException("Null priority");
        }
        throw new NullPointerException("Null payload");
    }

    @Override // e.i.b.a.c
    @Nullable
    public Integer a() {
        return this.f17653a;
    }

    @Override // e.i.b.a.c
    public T b() {
        return this.f17654b;
    }

    @Override // e.i.b.a.c
    public d c() {
        return this.f17655c;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        Integer num = this.f17653a;
        if (num != null ? num.equals(cVar.a()) : cVar.a() == null) {
            if (this.f17654b.equals(cVar.b()) && this.f17655c.equals(cVar.c())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        Integer num = this.f17653a;
        return (((((num == null ? 0 : num.hashCode()) ^ 1000003) * 1000003) ^ this.f17654b.hashCode()) * 1000003) ^ this.f17655c.hashCode();
    }

    public String toString() {
        return "Event{code=" + this.f17653a + ", payload=" + this.f17654b + ", priority=" + this.f17655c + "}";
    }
}
