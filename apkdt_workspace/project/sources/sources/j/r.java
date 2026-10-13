package j;

import javax.annotation.Nullable;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SegmentPool.java */
/* loaded from: classes2.dex */
public final class r {

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    static q f19680a;

    /* renamed from: b, reason: collision with root package name */
    static long f19681b;

    private r() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static q a() {
        synchronized (r.class) {
            if (f19680a != null) {
                q qVar = f19680a;
                f19680a = qVar.f19678f;
                qVar.f19678f = null;
                f19681b -= 8192;
                return qVar;
            }
            return new q();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(q qVar) {
        if (qVar.f19678f == null && qVar.f19679g == null) {
            if (qVar.f19676d) {
                return;
            }
            synchronized (r.class) {
                if (f19681b + 8192 > 65536) {
                    return;
                }
                f19681b += 8192;
                qVar.f19678f = f19680a;
                qVar.f19675c = 0;
                qVar.f19674b = 0;
                f19680a = qVar;
                return;
            }
        }
        throw new IllegalArgumentException();
    }
}
