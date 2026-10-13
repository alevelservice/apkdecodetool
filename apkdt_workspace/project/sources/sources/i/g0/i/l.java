package i.g0.i;

import java.util.List;

/* compiled from: PushObserver.java */
/* loaded from: classes2.dex */
public interface l {

    /* renamed from: a, reason: collision with root package name */
    public static final l f18712a = new a();

    /* compiled from: PushObserver.java */
    /* loaded from: classes2.dex */
    class a implements l {
        a() {
        }

        @Override // i.g0.i.l
        public void a(int i2, b bVar) {
        }

        @Override // i.g0.i.l
        public boolean a(int i2, j.e eVar, int i3, boolean z) {
            eVar.skip(i3);
            return true;
        }

        @Override // i.g0.i.l
        public boolean a(int i2, List<c> list) {
            return true;
        }

        @Override // i.g0.i.l
        public boolean a(int i2, List<c> list, boolean z) {
            return true;
        }
    }

    void a(int i2, b bVar);

    boolean a(int i2, j.e eVar, int i3, boolean z);

    boolean a(int i2, List<c> list);

    boolean a(int i2, List<c> list, boolean z);
}
