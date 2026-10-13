package a.g.a.j;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* compiled from: ConstraintWidgetGroup.java */
/* loaded from: classes.dex */
public class h {

    /* renamed from: a, reason: collision with root package name */
    public List<f> f255a;

    /* renamed from: b, reason: collision with root package name */
    int f256b;

    /* renamed from: c, reason: collision with root package name */
    int f257c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f258d;

    /* renamed from: e, reason: collision with root package name */
    public final int[] f259e;

    /* renamed from: f, reason: collision with root package name */
    List<f> f260f;

    /* renamed from: g, reason: collision with root package name */
    List<f> f261g;

    /* renamed from: h, reason: collision with root package name */
    HashSet<f> f262h;

    /* renamed from: i, reason: collision with root package name */
    HashSet<f> f263i;

    /* renamed from: j, reason: collision with root package name */
    List<f> f264j;

    /* renamed from: k, reason: collision with root package name */
    List<f> f265k;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(List<f> list) {
        this.f256b = -1;
        this.f257c = -1;
        this.f258d = false;
        this.f259e = new int[]{this.f256b, this.f257c};
        this.f260f = new ArrayList();
        this.f261g = new ArrayList();
        this.f262h = new HashSet<>();
        this.f263i = new HashSet<>();
        this.f264j = new ArrayList();
        this.f265k = new ArrayList();
        this.f255a = list;
    }

    public List<f> a(int i2) {
        if (i2 == 0) {
            return this.f260f;
        }
        if (i2 == 1) {
            return this.f261g;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Set<f> b(int i2) {
        if (i2 == 0) {
            return this.f262h;
        }
        if (i2 == 1) {
            return this.f263i;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(f fVar, int i2) {
        if (i2 == 0) {
            this.f262h.add(fVar);
        } else if (i2 == 1) {
            this.f263i.add(fVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        int size = this.f265k.size();
        for (int i2 = 0; i2 < size; i2++) {
            a(this.f265k.get(i2));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<f> a() {
        if (!this.f264j.isEmpty()) {
            return this.f264j;
        }
        int size = this.f255a.size();
        for (int i2 = 0; i2 < size; i2++) {
            f fVar = this.f255a.get(i2);
            if (!fVar.b0) {
                a((ArrayList<f>) this.f264j, fVar);
            }
        }
        this.f265k.clear();
        this.f265k.addAll(this.f255a);
        this.f265k.removeAll(this.f264j);
        return this.f264j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(List<f> list, boolean z) {
        this.f256b = -1;
        this.f257c = -1;
        this.f258d = false;
        this.f259e = new int[]{this.f256b, this.f257c};
        this.f260f = new ArrayList();
        this.f261g = new ArrayList();
        this.f262h = new HashSet<>();
        this.f263i = new HashSet<>();
        this.f264j = new ArrayList();
        this.f265k = new ArrayList();
        this.f255a = list;
        this.f258d = z;
    }

    private void a(ArrayList<f> arrayList, f fVar) {
        if (fVar.d0) {
            return;
        }
        arrayList.add(fVar);
        fVar.d0 = true;
        if (fVar.y()) {
            return;
        }
        if (fVar instanceof j) {
            j jVar = (j) fVar;
            int i2 = jVar.l0;
            for (int i3 = 0; i3 < i2; i3++) {
                a(arrayList, jVar.k0[i3]);
            }
        }
        int length = fVar.A.length;
        for (int i4 = 0; i4 < length; i4++) {
            e eVar = fVar.A[i4].f230d;
            if (eVar != null) {
                f fVar2 = eVar.f228b;
                if (eVar != null && fVar2 != fVar.k()) {
                    a(arrayList, fVar2);
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0050  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(a.g.a.j.f r7) {
        /*
            Method dump skipped, instructions count: 222
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: a.g.a.j.h.a(a.g.a.j.f):void");
    }
}
