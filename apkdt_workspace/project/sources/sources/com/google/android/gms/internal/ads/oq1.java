package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import javax.annotation.ParametersAreNonnullByDefault;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@ParametersAreNonnullByDefault
/* loaded from: classes.dex */
public final class oq1 {

    /* renamed from: b, reason: collision with root package name */
    @VisibleForTesting
    private int f8583b;

    /* renamed from: a, reason: collision with root package name */
    private final Object f8582a = new Object();

    /* renamed from: c, reason: collision with root package name */
    private List<pq1> f8584c = new LinkedList();

    @Nullable
    public final pq1 a(boolean z) {
        synchronized (this.f8582a) {
            pq1 pq1Var = null;
            if (this.f8584c.size() == 0) {
                qd.a("Queue empty");
                return null;
            }
            int i2 = 0;
            if (this.f8584c.size() >= 2) {
                int i3 = e.b.b.a.a.a.c.ALL_INT;
                int i4 = 0;
                for (pq1 pq1Var2 : this.f8584c) {
                    int a2 = pq1Var2.a();
                    if (a2 > i3) {
                        i2 = i4;
                        pq1Var = pq1Var2;
                        i3 = a2;
                    }
                    i4++;
                }
                this.f8584c.remove(i2);
                return pq1Var;
            }
            pq1 pq1Var3 = this.f8584c.get(0);
            if (z) {
                this.f8584c.remove(0);
            } else {
                pq1Var3.f();
            }
            return pq1Var3;
        }
    }

    public final boolean b(pq1 pq1Var) {
        synchronized (this.f8582a) {
            Iterator<pq1> it = this.f8584c.iterator();
            while (it.hasNext()) {
                pq1 next = it.next();
                if (!com.google.android.gms.ads.internal.n.g().i().b()) {
                    if (pq1Var != next && next.c().equals(pq1Var.c())) {
                        it.remove();
                        return true;
                    }
                } else if (!com.google.android.gms.ads.internal.n.g().i().m() && pq1Var != next && next.e().equals(pq1Var.e())) {
                    it.remove();
                    return true;
                }
            }
            return false;
        }
    }

    public final void c(pq1 pq1Var) {
        synchronized (this.f8582a) {
            if (this.f8584c.size() >= 10) {
                int size = this.f8584c.size();
                StringBuilder sb = new StringBuilder(41);
                sb.append("Queue is full, current size = ");
                sb.append(size);
                qd.a(sb.toString());
                this.f8584c.remove(0);
            }
            int i2 = this.f8583b;
            this.f8583b = i2 + 1;
            pq1Var.a(i2);
            pq1Var.i();
            this.f8584c.add(pq1Var);
        }
    }

    public final boolean a(pq1 pq1Var) {
        synchronized (this.f8582a) {
            return this.f8584c.contains(pq1Var);
        }
    }
}
