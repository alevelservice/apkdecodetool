package a.g.a;

import java.util.Arrays;

/* compiled from: SolverVariable.java */
/* loaded from: classes.dex */
public class i {

    /* renamed from: k, reason: collision with root package name */
    private static int f203k = 1;

    /* renamed from: a, reason: collision with root package name */
    private String f204a;

    /* renamed from: e, reason: collision with root package name */
    public float f208e;

    /* renamed from: g, reason: collision with root package name */
    a f210g;

    /* renamed from: b, reason: collision with root package name */
    public int f205b = -1;

    /* renamed from: c, reason: collision with root package name */
    int f206c = -1;

    /* renamed from: d, reason: collision with root package name */
    public int f207d = 0;

    /* renamed from: f, reason: collision with root package name */
    float[] f209f = new float[7];

    /* renamed from: h, reason: collision with root package name */
    b[] f211h = new b[8];

    /* renamed from: i, reason: collision with root package name */
    int f212i = 0;

    /* renamed from: j, reason: collision with root package name */
    public int f213j = 0;

    /* compiled from: SolverVariable.java */
    /* loaded from: classes.dex */
    public enum a {
        UNRESTRICTED,
        CONSTANT,
        SLACK,
        ERROR,
        UNKNOWN
    }

    public i(a aVar, String str) {
        this.f210g = aVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b() {
        f203k++;
    }

    public final void a(b bVar) {
        int i2 = 0;
        while (true) {
            int i3 = this.f212i;
            if (i2 < i3) {
                if (this.f211h[i2] == bVar) {
                    return;
                } else {
                    i2++;
                }
            } else {
                b[] bVarArr = this.f211h;
                if (i3 >= bVarArr.length) {
                    this.f211h = (b[]) Arrays.copyOf(bVarArr, bVarArr.length * 2);
                }
                b[] bVarArr2 = this.f211h;
                int i4 = this.f212i;
                bVarArr2[i4] = bVar;
                this.f212i = i4 + 1;
                return;
            }
        }
    }

    public final void c(b bVar) {
        int i2 = this.f212i;
        for (int i3 = 0; i3 < i2; i3++) {
            b[] bVarArr = this.f211h;
            bVarArr[i3].f172d.a(bVarArr[i3], bVar, false);
        }
        this.f212i = 0;
    }

    public String toString() {
        return "" + this.f204a;
    }

    public final void b(b bVar) {
        int i2 = this.f212i;
        for (int i3 = 0; i3 < i2; i3++) {
            if (this.f211h[i3] == bVar) {
                for (int i4 = 0; i4 < (i2 - i3) - 1; i4++) {
                    b[] bVarArr = this.f211h;
                    int i5 = i3 + i4;
                    bVarArr[i5] = bVarArr[i5 + 1];
                }
                this.f212i--;
                return;
            }
        }
    }

    public void a() {
        this.f204a = null;
        this.f210g = a.UNKNOWN;
        this.f207d = 0;
        this.f205b = -1;
        this.f206c = -1;
        this.f208e = 0.0f;
        this.f212i = 0;
        this.f213j = 0;
    }

    public void a(a aVar, String str) {
        this.f210g = aVar;
    }
}
