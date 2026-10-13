package androidx.recyclerview.widget;

import androidx.recyclerview.widget.a;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: OpReorderer.java */
/* loaded from: classes.dex */
public class i {

    /* renamed from: a, reason: collision with root package name */
    final a f2795a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: OpReorderer.java */
    /* loaded from: classes.dex */
    public interface a {
        a.b a(int i2, int i3, int i4, Object obj);

        void a(a.b bVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(a aVar) {
        this.f2795a = aVar;
    }

    private void c(List<a.b> list, int i2, a.b bVar, int i3, a.b bVar2) {
        int i4 = bVar.f2700d < bVar2.f2698b ? -1 : 0;
        if (bVar.f2698b < bVar2.f2698b) {
            i4++;
        }
        int i5 = bVar2.f2698b;
        int i6 = bVar.f2698b;
        if (i5 <= i6) {
            bVar.f2698b = i6 + bVar2.f2700d;
        }
        int i7 = bVar2.f2698b;
        int i8 = bVar.f2700d;
        if (i7 <= i8) {
            bVar.f2700d = i8 + bVar2.f2700d;
        }
        bVar2.f2698b += i4;
        list.set(i2, bVar2);
        list.set(i3, bVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(List<a.b> list) {
        while (true) {
            int b2 = b(list);
            if (b2 == -1) {
                return;
            } else {
                a(list, b2, b2 + 1);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:17:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x002b  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0027  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void b(java.util.List<androidx.recyclerview.widget.a.b> r9, int r10, androidx.recyclerview.widget.a.b r11, int r12, androidx.recyclerview.widget.a.b r13) {
        /*
            r8 = this;
            int r0 = r11.f2700d
            int r1 = r13.f2698b
            r2 = 4
            r3 = 0
            r4 = 1
            if (r0 >= r1) goto Ld
            int r1 = r1 - r4
            r13.f2698b = r1
            goto L20
        Ld:
            int r5 = r13.f2700d
            int r1 = r1 + r5
            if (r0 >= r1) goto L20
            int r5 = r5 - r4
            r13.f2700d = r5
            androidx.recyclerview.widget.i$a r0 = r8.f2795a
            int r1 = r11.f2698b
            java.lang.Object r5 = r13.f2699c
            androidx.recyclerview.widget.a$b r0 = r0.a(r2, r1, r4, r5)
            goto L21
        L20:
            r0 = r3
        L21:
            int r1 = r11.f2698b
            int r5 = r13.f2698b
            if (r1 > r5) goto L2b
            int r5 = r5 + r4
            r13.f2698b = r5
            goto L41
        L2b:
            int r6 = r13.f2700d
            int r7 = r5 + r6
            if (r1 >= r7) goto L41
            int r5 = r5 + r6
            int r5 = r5 - r1
            androidx.recyclerview.widget.i$a r3 = r8.f2795a
            int r1 = r1 + r4
            java.lang.Object r4 = r13.f2699c
            androidx.recyclerview.widget.a$b r3 = r3.a(r2, r1, r5, r4)
            int r1 = r13.f2700d
            int r1 = r1 - r5
            r13.f2700d = r1
        L41:
            r9.set(r12, r11)
            int r11 = r13.f2700d
            if (r11 <= 0) goto L4c
            r9.set(r10, r13)
            goto L54
        L4c:
            r9.remove(r10)
            androidx.recyclerview.widget.i$a r11 = r8.f2795a
            r11.a(r13)
        L54:
            if (r0 == 0) goto L59
            r9.add(r10, r0)
        L59:
            if (r3 == 0) goto L5e
            r9.add(r10, r3)
        L5e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.i.b(java.util.List, int, androidx.recyclerview.widget.a$b, int, androidx.recyclerview.widget.a$b):void");
    }

    private void a(List<a.b> list, int i2, int i3) {
        a.b bVar = list.get(i2);
        a.b bVar2 = list.get(i3);
        int i4 = bVar2.f2697a;
        if (i4 == 1) {
            c(list, i2, bVar, i3, bVar2);
        } else if (i4 == 2) {
            a(list, i2, bVar, i3, bVar2);
        } else {
            if (i4 != 4) {
                return;
            }
            b(list, i2, bVar, i3, bVar2);
        }
    }

    void a(List<a.b> list, int i2, a.b bVar, int i3, a.b bVar2) {
        boolean z;
        int i4 = bVar.f2698b;
        int i5 = bVar.f2700d;
        boolean z2 = false;
        if (i4 < i5) {
            if (bVar2.f2698b == i4 && bVar2.f2700d == i5 - i4) {
                z = false;
                z2 = true;
            } else {
                z = false;
            }
        } else if (bVar2.f2698b == i5 + 1 && bVar2.f2700d == i4 - i5) {
            z = true;
            z2 = true;
        } else {
            z = true;
        }
        int i6 = bVar.f2700d;
        int i7 = bVar2.f2698b;
        if (i6 < i7) {
            bVar2.f2698b = i7 - 1;
        } else {
            int i8 = bVar2.f2700d;
            if (i6 < i7 + i8) {
                bVar2.f2700d = i8 - 1;
                bVar.f2697a = 2;
                bVar.f2700d = 1;
                if (bVar2.f2700d == 0) {
                    list.remove(i3);
                    this.f2795a.a(bVar2);
                    return;
                }
                return;
            }
        }
        int i9 = bVar.f2698b;
        int i10 = bVar2.f2698b;
        a.b bVar3 = null;
        if (i9 <= i10) {
            bVar2.f2698b = i10 + 1;
        } else {
            int i11 = bVar2.f2700d;
            if (i9 < i10 + i11) {
                bVar3 = this.f2795a.a(2, i9 + 1, (i10 + i11) - i9, null);
                bVar2.f2700d = bVar.f2698b - bVar2.f2698b;
            }
        }
        if (z2) {
            list.set(i2, bVar2);
            list.remove(i3);
            this.f2795a.a(bVar);
            return;
        }
        if (z) {
            if (bVar3 != null) {
                int i12 = bVar.f2698b;
                if (i12 > bVar3.f2698b) {
                    bVar.f2698b = i12 - bVar3.f2700d;
                }
                int i13 = bVar.f2700d;
                if (i13 > bVar3.f2698b) {
                    bVar.f2700d = i13 - bVar3.f2700d;
                }
            }
            int i14 = bVar.f2698b;
            if (i14 > bVar2.f2698b) {
                bVar.f2698b = i14 - bVar2.f2700d;
            }
            int i15 = bVar.f2700d;
            if (i15 > bVar2.f2698b) {
                bVar.f2700d = i15 - bVar2.f2700d;
            }
        } else {
            if (bVar3 != null) {
                int i16 = bVar.f2698b;
                if (i16 >= bVar3.f2698b) {
                    bVar.f2698b = i16 - bVar3.f2700d;
                }
                int i17 = bVar.f2700d;
                if (i17 >= bVar3.f2698b) {
                    bVar.f2700d = i17 - bVar3.f2700d;
                }
            }
            int i18 = bVar.f2698b;
            if (i18 >= bVar2.f2698b) {
                bVar.f2698b = i18 - bVar2.f2700d;
            }
            int i19 = bVar.f2700d;
            if (i19 >= bVar2.f2698b) {
                bVar.f2700d = i19 - bVar2.f2700d;
            }
        }
        list.set(i2, bVar2);
        if (bVar.f2698b != bVar.f2700d) {
            list.set(i3, bVar);
        } else {
            list.remove(i3);
        }
        if (bVar3 != null) {
            list.add(i2, bVar3);
        }
    }

    private int b(List<a.b> list) {
        boolean z = false;
        for (int size = list.size() - 1; size >= 0; size--) {
            if (list.get(size).f2697a != 8) {
                z = true;
            } else if (z) {
                return size;
            }
        }
        return -1;
    }
}
