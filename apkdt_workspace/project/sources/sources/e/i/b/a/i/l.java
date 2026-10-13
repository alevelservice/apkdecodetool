package e.i.b.a.i;

import e.i.b.a.i.b;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SendRequest.java */
/* loaded from: classes.dex */
public abstract class l {

    /* compiled from: SendRequest.java */
    /* loaded from: classes.dex */
    public static abstract class a {
        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract a a(e.i.b.a.b bVar);

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract a a(e.i.b.a.c<?> cVar);

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract a a(e.i.b.a.e<?, byte[]> eVar);

        public abstract a a(m mVar);

        public abstract a a(String str);

        public abstract l a();
    }

    public static a g() {
        return new b.C0199b();
    }

    public abstract e.i.b.a.b a();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract e.i.b.a.c<?> b();

    public byte[] c() {
        return d().apply(b().b());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract e.i.b.a.e<?, byte[]> d();

    public abstract m e();

    public abstract String f();
}
