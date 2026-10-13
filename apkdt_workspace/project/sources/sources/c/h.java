package c;

import c.f;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: UnobservedErrorNotifier.java */
/* loaded from: classes.dex */
public class h {

    /* renamed from: a, reason: collision with root package name */
    private f<?> f3138a;

    public h(f<?> fVar) {
        this.f3138a = fVar;
    }

    public void a() {
        this.f3138a = null;
    }

    protected void finalize() {
        f.d g2;
        try {
            f<?> fVar = this.f3138a;
            if (fVar != null && (g2 = f.g()) != null) {
                g2.a(fVar, new i(fVar.a()));
            }
        } finally {
            super.finalize();
        }
    }
}
