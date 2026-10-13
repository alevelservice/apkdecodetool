package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.google.android.datatransport.runtime.backends.g;
import com.google.android.datatransport.runtime.backends.h;
import com.google.android.datatransport.runtime.time.WallTime;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.Executor;
import javax.inject.Inject;

/* compiled from: Uploader.java */
/* loaded from: classes.dex */
public class m {

    /* renamed from: a, reason: collision with root package name */
    private final Context f4427a;

    /* renamed from: b, reason: collision with root package name */
    private final com.google.android.datatransport.runtime.backends.e f4428b;

    /* renamed from: c, reason: collision with root package name */
    private final e.i.b.a.i.w.j.c f4429c;

    /* renamed from: d, reason: collision with root package name */
    private final s f4430d;

    /* renamed from: e, reason: collision with root package name */
    private final Executor f4431e;

    /* renamed from: f, reason: collision with root package name */
    private final e.i.b.a.i.x.b f4432f;

    /* renamed from: g, reason: collision with root package name */
    private final com.google.android.datatransport.runtime.time.a f4433g;

    @Inject
    public m(Context context, com.google.android.datatransport.runtime.backends.e eVar, e.i.b.a.i.w.j.c cVar, s sVar, Executor executor, e.i.b.a.i.x.b bVar, @WallTime com.google.android.datatransport.runtime.time.a aVar) {
        this.f4427a = context;
        this.f4428b = eVar;
        this.f4429c = cVar;
        this.f4430d = sVar;
        this.f4431e = executor;
        this.f4432f = bVar;
        this.f4433g = aVar;
    }

    boolean a() {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.f4427a.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    public void a(e.i.b.a.i.m mVar, int i2, Runnable runnable) {
        this.f4431e.execute(h.a(this, mVar, i2, runnable));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(m mVar, e.i.b.a.i.m mVar2, int i2, Runnable runnable) {
        try {
            try {
                e.i.b.a.i.x.b bVar = mVar.f4432f;
                e.i.b.a.i.w.j.c cVar = mVar.f4429c;
                cVar.getClass();
                bVar.a(k.a(cVar));
                if (!mVar.a()) {
                    mVar.f4432f.a(l.a(mVar, mVar2, i2));
                } else {
                    mVar.a(mVar2, i2);
                }
            } catch (e.i.b.a.i.x.a unused) {
                mVar.f4430d.a(mVar2, i2 + 1);
            }
        } finally {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Object a(m mVar, e.i.b.a.i.m mVar2, int i2) {
        mVar.f4430d.a(mVar2, i2 + 1);
        return null;
    }

    void a(e.i.b.a.i.m mVar, int i2) {
        com.google.android.datatransport.runtime.backends.h a2;
        com.google.android.datatransport.runtime.backends.n a3 = this.f4428b.a(mVar.a());
        Iterable iterable = (Iterable) this.f4432f.a(i.a(this, mVar));
        if (iterable.iterator().hasNext()) {
            if (a3 == null) {
                e.i.b.a.i.u.a.a("Uploader", "Unknown backend for %s, deleting event batch for it...", mVar);
                a2 = com.google.android.datatransport.runtime.backends.h.c();
            } else {
                ArrayList arrayList = new ArrayList();
                Iterator it = iterable.iterator();
                while (it.hasNext()) {
                    arrayList.add(((e.i.b.a.i.w.j.i) it.next()).a());
                }
                g.a c2 = com.google.android.datatransport.runtime.backends.g.c();
                c2.a(arrayList);
                c2.a(mVar.b());
                a2 = a3.a(c2.a());
            }
            this.f4432f.a(j.a(this, a2, iterable, mVar, i2));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Object a(m mVar, com.google.android.datatransport.runtime.backends.h hVar, Iterable iterable, e.i.b.a.i.m mVar2, int i2) {
        if (hVar.b() == h.a.TRANSIENT_ERROR) {
            mVar.f4429c.b((Iterable<e.i.b.a.i.w.j.i>) iterable);
            mVar.f4430d.a(mVar2, i2 + 1);
            return null;
        }
        mVar.f4429c.a((Iterable<e.i.b.a.i.w.j.i>) iterable);
        if (hVar.b() == h.a.OK) {
            mVar.f4429c.a(mVar2, mVar.f4433g.a() + hVar.a());
        }
        if (!mVar.f4429c.c(mVar2)) {
            return null;
        }
        mVar.f4430d.a(mVar2, 1);
        return null;
    }
}
