package e.f.g.a.c;

import com.facebook.common.internal.VisibleForTesting;
import e.f.g.a.a.d;

/* compiled from: DropFramesFrameScheduler.java */
/* loaded from: classes.dex */
public class a implements b {

    /* renamed from: a, reason: collision with root package name */
    private final d f17436a;

    /* renamed from: b, reason: collision with root package name */
    private long f17437b = -1;

    public a(d dVar) {
        this.f17436a = dVar;
    }

    @Override // e.f.g.a.c.b
    public int a(long j2, long j3) {
        if (b() || j2 / a() < this.f17436a.b()) {
            return b(j2 % a());
        }
        return -1;
    }

    public boolean b() {
        return this.f17436a.b() == 0;
    }

    @VisibleForTesting
    int b(long j2) {
        int i2 = 0;
        long j3 = 0;
        do {
            j3 += this.f17436a.a(i2);
            i2++;
        } while (j2 >= j3);
        return i2 - 1;
    }

    public long a() {
        long j2 = this.f17437b;
        if (j2 != -1) {
            return j2;
        }
        this.f17437b = 0L;
        int a2 = this.f17436a.a();
        for (int i2 = 0; i2 < a2; i2++) {
            this.f17437b += this.f17436a.a(i2);
        }
        return this.f17437b;
    }

    @Override // e.f.g.a.c.b
    public long a(long j2) {
        long a2 = a();
        long j3 = 0;
        if (a2 == 0) {
            return -1L;
        }
        if (!b() && j2 / a() >= this.f17436a.b()) {
            return -1L;
        }
        long j4 = j2 % a2;
        int a3 = this.f17436a.a();
        for (int i2 = 0; i2 < a3 && j3 <= j4; i2++) {
            j3 += this.f17436a.a(i2);
        }
        return j2 + (j3 - j4);
    }
}
