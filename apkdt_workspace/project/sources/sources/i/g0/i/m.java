package i.g0.i;

import java.util.Arrays;

/* compiled from: Settings.java */
/* loaded from: classes2.dex */
public final class m {

    /* renamed from: a, reason: collision with root package name */
    private int f18713a;

    /* renamed from: b, reason: collision with root package name */
    private final int[] f18714b = new int[10];

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        this.f18713a = 0;
        Arrays.fill(this.f18714b, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int b() {
        if ((this.f18713a & 2) != 0) {
            return this.f18714b[1];
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int c(int i2) {
        return (this.f18713a & 32) != 0 ? this.f18714b[5] : i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean d(int i2) {
        return ((1 << i2) & this.f18713a) != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int b(int i2) {
        return (this.f18713a & 16) != 0 ? this.f18714b[4] : i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int c() {
        if ((this.f18713a & 128) != 0) {
            return this.f18714b[7];
        }
        return 65535;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int d() {
        return Integer.bitCount(this.f18713a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public m a(int i2, int i3) {
        if (i2 >= 0) {
            int[] iArr = this.f18714b;
            if (i2 < iArr.length) {
                this.f18713a = (1 << i2) | this.f18713a;
                iArr[i2] = i3;
            }
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int a(int i2) {
        return this.f18714b[i2];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(m mVar) {
        for (int i2 = 0; i2 < 10; i2++) {
            if (mVar.d(i2)) {
                a(i2, mVar.a(i2));
            }
        }
    }
}
