package e.f.i.c;

/* compiled from: DefaultEncodedMemoryCacheParamsSupplier.java */
/* loaded from: classes.dex */
public class k implements com.facebook.common.internal.j<q> {
    private int a() {
        int min = (int) Math.min(Runtime.getRuntime().maxMemory(), 2147483647L);
        if (min < 16777216) {
            return 1048576;
        }
        return min < 33554432 ? 2097152 : 4194304;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.facebook.common.internal.j
    public q get() {
        int a2 = a();
        return new q(a2, Integer.MAX_VALUE, a2, Integer.MAX_VALUE, a2 / 8);
    }
}
