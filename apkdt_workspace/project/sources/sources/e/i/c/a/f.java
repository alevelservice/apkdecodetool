package e.i.c.a;

import com.google.common.annotations.GwtCompatible;

/* compiled from: Joiner.java */
@GwtCompatible
/* loaded from: classes.dex */
public class f {

    /* renamed from: a, reason: collision with root package name */
    private final String f17987a;

    /* compiled from: Joiner.java */
    /* loaded from: classes.dex */
    class a extends f {
        a(f fVar, f fVar2, String str) {
            super(fVar2, null);
        }

        @Override // e.i.c.a.f
        public f a(String str) {
            throw new UnsupportedOperationException("already specified useForNull");
        }
    }

    /* synthetic */ f(f fVar, a aVar) {
        this(fVar);
    }

    public static f b(String str) {
        return new f(str);
    }

    public f a(String str) {
        j.a(str);
        return new a(this, this, str);
    }

    private f(String str) {
        j.a(str);
        this.f17987a = str;
    }

    private f(f fVar) {
        this.f17987a = fVar.f17987a;
    }
}
