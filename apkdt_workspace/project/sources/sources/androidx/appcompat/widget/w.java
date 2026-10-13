package androidx.appcompat.widget;

/* compiled from: RtlSpacingHelper.java */
/* loaded from: classes.dex */
class w {

    /* renamed from: a, reason: collision with root package name */
    private int f1445a = 0;

    /* renamed from: b, reason: collision with root package name */
    private int f1446b = 0;

    /* renamed from: c, reason: collision with root package name */
    private int f1447c = e.b.b.a.a.a.c.ALL_INT;

    /* renamed from: d, reason: collision with root package name */
    private int f1448d = e.b.b.a.a.a.c.ALL_INT;

    /* renamed from: e, reason: collision with root package name */
    private int f1449e = 0;

    /* renamed from: f, reason: collision with root package name */
    private int f1450f = 0;

    /* renamed from: g, reason: collision with root package name */
    private boolean f1451g = false;

    /* renamed from: h, reason: collision with root package name */
    private boolean f1452h = false;

    public int a() {
        return this.f1451g ? this.f1445a : this.f1446b;
    }

    public int b() {
        return this.f1445a;
    }

    public int c() {
        return this.f1446b;
    }

    public int d() {
        return this.f1451g ? this.f1446b : this.f1445a;
    }

    public void a(int i2, int i3) {
        this.f1452h = false;
        if (i2 != Integer.MIN_VALUE) {
            this.f1449e = i2;
            this.f1445a = i2;
        }
        if (i3 != Integer.MIN_VALUE) {
            this.f1450f = i3;
            this.f1446b = i3;
        }
    }

    public void b(int i2, int i3) {
        this.f1447c = i2;
        this.f1448d = i3;
        this.f1452h = true;
        if (this.f1451g) {
            if (i3 != Integer.MIN_VALUE) {
                this.f1445a = i3;
            }
            if (i2 != Integer.MIN_VALUE) {
                this.f1446b = i2;
                return;
            }
            return;
        }
        if (i2 != Integer.MIN_VALUE) {
            this.f1445a = i2;
        }
        if (i3 != Integer.MIN_VALUE) {
            this.f1446b = i3;
        }
    }

    public void a(boolean z) {
        if (z == this.f1451g) {
            return;
        }
        this.f1451g = z;
        if (!this.f1452h) {
            this.f1445a = this.f1449e;
            this.f1446b = this.f1450f;
            return;
        }
        if (z) {
            int i2 = this.f1448d;
            if (i2 == Integer.MIN_VALUE) {
                i2 = this.f1449e;
            }
            this.f1445a = i2;
            int i3 = this.f1447c;
            if (i3 == Integer.MIN_VALUE) {
                i3 = this.f1450f;
            }
            this.f1446b = i3;
            return;
        }
        int i4 = this.f1447c;
        if (i4 == Integer.MIN_VALUE) {
            i4 = this.f1449e;
        }
        this.f1445a = i4;
        int i5 = this.f1448d;
        if (i5 == Integer.MIN_VALUE) {
            i5 = this.f1450f;
        }
        this.f1446b = i5;
    }
}
