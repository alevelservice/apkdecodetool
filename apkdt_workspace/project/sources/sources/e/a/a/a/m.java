package e.a.a.a;

/* compiled from: TBusBuilder.java */
/* loaded from: classes.dex */
public final class m {

    /* renamed from: a, reason: collision with root package name */
    private static k f16835a;

    private m() {
    }

    public static k a() {
        if (f16835a == null) {
            synchronized (m.class) {
                if (f16835a == null) {
                    f16835a = new k();
                }
            }
        }
        return f16835a;
    }
}
