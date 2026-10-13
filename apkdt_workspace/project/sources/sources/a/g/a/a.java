package a.g.a;

import a.g.a.i;
import java.util.Arrays;

/* compiled from: ArrayLinkedVariables.java */
/* loaded from: classes.dex */
public class a {

    /* renamed from: b, reason: collision with root package name */
    private final b f159b;

    /* renamed from: c, reason: collision with root package name */
    private final c f160c;

    /* renamed from: f, reason: collision with root package name */
    private int[] f163f;

    /* renamed from: g, reason: collision with root package name */
    private int[] f164g;

    /* renamed from: h, reason: collision with root package name */
    private float[] f165h;

    /* renamed from: i, reason: collision with root package name */
    private int f166i;

    /* renamed from: j, reason: collision with root package name */
    private int f167j;

    /* renamed from: k, reason: collision with root package name */
    private boolean f168k;

    /* renamed from: a, reason: collision with root package name */
    int f158a = 0;

    /* renamed from: d, reason: collision with root package name */
    private int f161d = 8;

    /* renamed from: e, reason: collision with root package name */
    private i f162e = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(b bVar, c cVar) {
        int i2 = this.f161d;
        this.f163f = new int[i2];
        this.f164g = new int[i2];
        this.f165h = new float[i2];
        this.f166i = -1;
        this.f167j = -1;
        this.f168k = false;
        this.f159b = bVar;
        this.f160c = cVar;
    }

    public final void a(i iVar, float f2) {
        if (f2 == 0.0f) {
            a(iVar, true);
            return;
        }
        int i2 = this.f166i;
        if (i2 == -1) {
            this.f166i = 0;
            float[] fArr = this.f165h;
            int i3 = this.f166i;
            fArr[i3] = f2;
            this.f163f[i3] = iVar.f205b;
            this.f164g[i3] = -1;
            iVar.f213j++;
            iVar.a(this.f159b);
            this.f158a++;
            if (this.f168k) {
                return;
            }
            this.f167j++;
            int i4 = this.f167j;
            int[] iArr = this.f163f;
            if (i4 >= iArr.length) {
                this.f168k = true;
                this.f167j = iArr.length - 1;
                return;
            }
            return;
        }
        int i5 = -1;
        for (int i6 = 0; i2 != -1 && i6 < this.f158a; i6++) {
            int[] iArr2 = this.f163f;
            int i7 = iArr2[i2];
            int i8 = iVar.f205b;
            if (i7 == i8) {
                this.f165h[i2] = f2;
                return;
            }
            if (iArr2[i2] < i8) {
                i5 = i2;
            }
            i2 = this.f164g[i2];
        }
        int i9 = this.f167j;
        int i10 = i9 + 1;
        if (this.f168k) {
            int[] iArr3 = this.f163f;
            if (iArr3[i9] != -1) {
                i9 = iArr3.length;
            }
        } else {
            i9 = i10;
        }
        int[] iArr4 = this.f163f;
        if (i9 >= iArr4.length && this.f158a < iArr4.length) {
            int i11 = 0;
            while (true) {
                int[] iArr5 = this.f163f;
                if (i11 >= iArr5.length) {
                    break;
                }
                if (iArr5[i11] == -1) {
                    i9 = i11;
                    break;
                }
                i11++;
            }
        }
        int[] iArr6 = this.f163f;
        if (i9 >= iArr6.length) {
            i9 = iArr6.length;
            this.f161d *= 2;
            this.f168k = false;
            this.f167j = i9 - 1;
            this.f165h = Arrays.copyOf(this.f165h, this.f161d);
            this.f163f = Arrays.copyOf(this.f163f, this.f161d);
            this.f164g = Arrays.copyOf(this.f164g, this.f161d);
        }
        this.f163f[i9] = iVar.f205b;
        this.f165h[i9] = f2;
        if (i5 != -1) {
            int[] iArr7 = this.f164g;
            iArr7[i9] = iArr7[i5];
            iArr7[i5] = i9;
        } else {
            this.f164g[i9] = this.f166i;
            this.f166i = i9;
        }
        iVar.f213j++;
        iVar.a(this.f159b);
        this.f158a++;
        if (!this.f168k) {
            this.f167j++;
        }
        if (this.f158a >= this.f163f.length) {
            this.f168k = true;
        }
        int i12 = this.f167j;
        int[] iArr8 = this.f163f;
        if (i12 >= iArr8.length) {
            this.f168k = true;
            this.f167j = iArr8.length - 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        int i2 = this.f166i;
        for (int i3 = 0; i2 != -1 && i3 < this.f158a; i3++) {
            float[] fArr = this.f165h;
            fArr[i2] = fArr[i2] * (-1.0f);
            i2 = this.f164g[i2];
        }
    }

    public String toString() {
        int i2 = this.f166i;
        String str = "";
        for (int i3 = 0; i2 != -1 && i3 < this.f158a; i3++) {
            str = ((str + " -> ") + this.f165h[i2] + " : ") + this.f160c.f176c[this.f163f[i2]];
            i2 = this.f164g[i2];
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final float b(int i2) {
        int i3 = this.f166i;
        for (int i4 = 0; i3 != -1 && i4 < this.f158a; i4++) {
            if (i4 == i2) {
                return this.f165h[i3];
            }
            i3 = this.f164g[i3];
        }
        return 0.0f;
    }

    public final float b(i iVar) {
        int i2 = this.f166i;
        for (int i3 = 0; i2 != -1 && i3 < this.f158a; i3++) {
            if (this.f163f[i2] == iVar.f205b) {
                return this.f165h[i2];
            }
            i2 = this.f164g[i2];
        }
        return 0.0f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(i iVar, float f2, boolean z) {
        if (f2 == 0.0f) {
            return;
        }
        int i2 = this.f166i;
        if (i2 == -1) {
            this.f166i = 0;
            float[] fArr = this.f165h;
            int i3 = this.f166i;
            fArr[i3] = f2;
            this.f163f[i3] = iVar.f205b;
            this.f164g[i3] = -1;
            iVar.f213j++;
            iVar.a(this.f159b);
            this.f158a++;
            if (this.f168k) {
                return;
            }
            this.f167j++;
            int i4 = this.f167j;
            int[] iArr = this.f163f;
            if (i4 >= iArr.length) {
                this.f168k = true;
                this.f167j = iArr.length - 1;
                return;
            }
            return;
        }
        int i5 = -1;
        for (int i6 = 0; i2 != -1 && i6 < this.f158a; i6++) {
            int[] iArr2 = this.f163f;
            int i7 = iArr2[i2];
            int i8 = iVar.f205b;
            if (i7 == i8) {
                float[] fArr2 = this.f165h;
                fArr2[i2] = fArr2[i2] + f2;
                if (fArr2[i2] == 0.0f) {
                    if (i2 == this.f166i) {
                        this.f166i = this.f164g[i2];
                    } else {
                        int[] iArr3 = this.f164g;
                        iArr3[i5] = iArr3[i2];
                    }
                    if (z) {
                        iVar.b(this.f159b);
                    }
                    if (this.f168k) {
                        this.f167j = i2;
                    }
                    iVar.f213j--;
                    this.f158a--;
                    return;
                }
                return;
            }
            if (iArr2[i2] < i8) {
                i5 = i2;
            }
            i2 = this.f164g[i2];
        }
        int i9 = this.f167j;
        int i10 = i9 + 1;
        if (this.f168k) {
            int[] iArr4 = this.f163f;
            if (iArr4[i9] != -1) {
                i9 = iArr4.length;
            }
        } else {
            i9 = i10;
        }
        int[] iArr5 = this.f163f;
        if (i9 >= iArr5.length && this.f158a < iArr5.length) {
            int i11 = 0;
            while (true) {
                int[] iArr6 = this.f163f;
                if (i11 >= iArr6.length) {
                    break;
                }
                if (iArr6[i11] == -1) {
                    i9 = i11;
                    break;
                }
                i11++;
            }
        }
        int[] iArr7 = this.f163f;
        if (i9 >= iArr7.length) {
            i9 = iArr7.length;
            this.f161d *= 2;
            this.f168k = false;
            this.f167j = i9 - 1;
            this.f165h = Arrays.copyOf(this.f165h, this.f161d);
            this.f163f = Arrays.copyOf(this.f163f, this.f161d);
            this.f164g = Arrays.copyOf(this.f164g, this.f161d);
        }
        this.f163f[i9] = iVar.f205b;
        this.f165h[i9] = f2;
        if (i5 != -1) {
            int[] iArr8 = this.f164g;
            iArr8[i9] = iArr8[i5];
            iArr8[i5] = i9;
        } else {
            this.f164g[i9] = this.f166i;
            this.f166i = i9;
        }
        iVar.f213j++;
        iVar.a(this.f159b);
        this.f158a++;
        if (!this.f168k) {
            this.f167j++;
        }
        int i12 = this.f167j;
        int[] iArr9 = this.f163f;
        if (i12 >= iArr9.length) {
            this.f168k = true;
            this.f167j = iArr9.length - 1;
        }
    }

    public final float a(i iVar, boolean z) {
        if (this.f162e == iVar) {
            this.f162e = null;
        }
        int i2 = this.f166i;
        if (i2 == -1) {
            return 0.0f;
        }
        int i3 = 0;
        int i4 = -1;
        while (i2 != -1 && i3 < this.f158a) {
            if (this.f163f[i2] == iVar.f205b) {
                if (i2 == this.f166i) {
                    this.f166i = this.f164g[i2];
                } else {
                    int[] iArr = this.f164g;
                    iArr[i4] = iArr[i2];
                }
                if (z) {
                    iVar.b(this.f159b);
                }
                iVar.f213j--;
                this.f158a--;
                this.f163f[i2] = -1;
                if (this.f168k) {
                    this.f167j = i2;
                }
                return this.f165h[i2];
            }
            i3++;
            i4 = i2;
            i2 = this.f164g[i2];
        }
        return 0.0f;
    }

    public final void a() {
        int i2 = this.f166i;
        for (int i3 = 0; i2 != -1 && i3 < this.f158a; i3++) {
            i iVar = this.f160c.f176c[this.f163f[i2]];
            if (iVar != null) {
                iVar.b(this.f159b);
            }
            i2 = this.f164g[i2];
        }
        this.f166i = -1;
        this.f167j = -1;
        this.f168k = false;
        this.f158a = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a(i iVar) {
        int i2 = this.f166i;
        if (i2 == -1) {
            return false;
        }
        for (int i3 = 0; i2 != -1 && i3 < this.f158a; i3++) {
            if (this.f163f[i2] == iVar.f205b) {
                return true;
            }
            i2 = this.f164g[i2];
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(float f2) {
        int i2 = this.f166i;
        for (int i3 = 0; i2 != -1 && i3 < this.f158a; i3++) {
            float[] fArr = this.f165h;
            fArr[i2] = fArr[i2] / f2;
            i2 = this.f164g[i2];
        }
    }

    private boolean a(i iVar, e eVar) {
        return iVar.f213j <= 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x008f A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public a.g.a.i a(a.g.a.e r15) {
        /*
            r14 = this;
            int r0 = r14.f166i
            r1 = 0
            r2 = 0
            r3 = 0
            r4 = r1
            r5 = 0
            r6 = 0
            r7 = 0
            r8 = 0
        La:
            r9 = -1
            if (r0 == r9) goto L97
            int r9 = r14.f158a
            if (r2 >= r9) goto L97
            float[] r9 = r14.f165h
            r10 = r9[r0]
            r11 = 981668463(0x3a83126f, float:0.001)
            a.g.a.c r12 = r14.f160c
            a.g.a.i[] r12 = r12.f176c
            int[] r13 = r14.f163f
            r13 = r13[r0]
            r12 = r12[r13]
            int r13 = (r10 > r3 ? 1 : (r10 == r3 ? 0 : -1))
            if (r13 >= 0) goto L35
            r11 = -1165815185(0xffffffffba83126f, float:-0.001)
            int r11 = (r10 > r11 ? 1 : (r10 == r11 ? 0 : -1))
            if (r11 <= 0) goto L41
            r9[r0] = r3
            a.g.a.b r9 = r14.f159b
            r12.b(r9)
            goto L40
        L35:
            int r11 = (r10 > r11 ? 1 : (r10 == r11 ? 0 : -1))
            if (r11 >= 0) goto L41
            r9[r0] = r3
            a.g.a.b r9 = r14.f159b
            r12.b(r9)
        L40:
            r10 = 0
        L41:
            r9 = 1
            int r11 = (r10 > r3 ? 1 : (r10 == r3 ? 0 : -1))
            if (r11 == 0) goto L8f
            a.g.a.i$a r11 = r12.f210g
            a.g.a.i$a r13 = a.g.a.i.a.UNRESTRICTED
            if (r11 != r13) goto L6b
            if (r4 != 0) goto L56
            boolean r4 = r14.a(r12, r15)
        L52:
            r6 = r4
            r5 = r10
            r4 = r12
            goto L8f
        L56:
            int r11 = (r5 > r10 ? 1 : (r5 == r10 ? 0 : -1))
            if (r11 <= 0) goto L5f
            boolean r4 = r14.a(r12, r15)
            goto L52
        L5f:
            if (r6 != 0) goto L8f
            boolean r11 = r14.a(r12, r15)
            if (r11 == 0) goto L8f
            r5 = r10
            r4 = r12
            r6 = 1
            goto L8f
        L6b:
            if (r4 != 0) goto L8f
            int r11 = (r10 > r3 ? 1 : (r10 == r3 ? 0 : -1))
            if (r11 >= 0) goto L8f
            if (r1 != 0) goto L7b
            boolean r1 = r14.a(r12, r15)
        L77:
            r8 = r1
            r7 = r10
            r1 = r12
            goto L8f
        L7b:
            int r11 = (r7 > r10 ? 1 : (r7 == r10 ? 0 : -1))
            if (r11 <= 0) goto L84
            boolean r1 = r14.a(r12, r15)
            goto L77
        L84:
            if (r8 != 0) goto L8f
            boolean r11 = r14.a(r12, r15)
            if (r11 == 0) goto L8f
            r7 = r10
            r1 = r12
            r8 = 1
        L8f:
            int[] r9 = r14.f164g
            r0 = r9[r0]
            int r2 = r2 + 1
            goto La
        L97:
            if (r4 == 0) goto L9a
            return r4
        L9a:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: a.g.a.a.a(a.g.a.e):a.g.a.i");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(b bVar, b bVar2, boolean z) {
        int i2 = this.f166i;
        while (true) {
            for (int i3 = 0; i2 != -1 && i3 < this.f158a; i3++) {
                int i4 = this.f163f[i2];
                i iVar = bVar2.f169a;
                if (i4 == iVar.f205b) {
                    float f2 = this.f165h[i2];
                    a(iVar, z);
                    a aVar = bVar2.f172d;
                    int i5 = aVar.f166i;
                    for (int i6 = 0; i5 != -1 && i6 < aVar.f158a; i6++) {
                        a(this.f160c.f176c[aVar.f163f[i5]], aVar.f165h[i5] * f2, z);
                        i5 = aVar.f164g[i5];
                    }
                    bVar.f170b += bVar2.f170b * f2;
                    if (z) {
                        bVar2.f169a.b(bVar);
                    }
                    i2 = this.f166i;
                } else {
                    i2 = this.f164g[i2];
                }
            }
            return;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(b bVar, b[] bVarArr) {
        int i2 = this.f166i;
        while (true) {
            for (int i3 = 0; i2 != -1 && i3 < this.f158a; i3++) {
                i iVar = this.f160c.f176c[this.f163f[i2]];
                if (iVar.f206c != -1) {
                    float f2 = this.f165h[i2];
                    a(iVar, true);
                    b bVar2 = bVarArr[iVar.f206c];
                    if (!bVar2.f173e) {
                        a aVar = bVar2.f172d;
                        int i4 = aVar.f166i;
                        for (int i5 = 0; i4 != -1 && i5 < aVar.f158a; i5++) {
                            a(this.f160c.f176c[aVar.f163f[i4]], aVar.f165h[i4] * f2, true);
                            i4 = aVar.f164g[i4];
                        }
                    }
                    bVar.f170b += bVar2.f170b * f2;
                    bVar2.f169a.b(bVar);
                    i2 = this.f166i;
                } else {
                    i2 = this.f164g[i2];
                }
            }
            return;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public i a(boolean[] zArr, i iVar) {
        i.a aVar;
        int i2 = this.f166i;
        i iVar2 = null;
        float f2 = 0.0f;
        for (int i3 = 0; i2 != -1 && i3 < this.f158a; i3++) {
            if (this.f165h[i2] < 0.0f) {
                i iVar3 = this.f160c.f176c[this.f163f[i2]];
                if ((zArr == null || !zArr[iVar3.f205b]) && iVar3 != iVar && ((aVar = iVar3.f210g) == i.a.SLACK || aVar == i.a.ERROR)) {
                    float f3 = this.f165h[i2];
                    if (f3 < f2) {
                        iVar2 = iVar3;
                        f2 = f3;
                    }
                }
            }
            i2 = this.f164g[i2];
        }
        return iVar2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final i a(int i2) {
        int i3 = this.f166i;
        for (int i4 = 0; i3 != -1 && i4 < this.f158a; i4++) {
            if (i4 == i2) {
                return this.f160c.f176c[this.f163f[i3]];
            }
            i3 = this.f164g[i3];
        }
        return null;
    }
}
