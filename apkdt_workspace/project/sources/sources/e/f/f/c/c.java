package e.f.f.c;

/* compiled from: RetryManager.java */
/* loaded from: classes.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    private boolean f17259a;

    /* renamed from: b, reason: collision with root package name */
    private int f17260b;

    /* renamed from: c, reason: collision with root package name */
    private int f17261c;

    public c() {
        a();
    }

    public void a() {
        this.f17259a = false;
        this.f17260b = 4;
        c();
    }

    public void b() {
        this.f17261c++;
    }

    public void c() {
        this.f17261c = 0;
    }

    public boolean d() {
        return this.f17259a && this.f17261c < this.f17260b;
    }

    public void a(boolean z) {
        this.f17259a = z;
    }
}
