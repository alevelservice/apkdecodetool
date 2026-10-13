package com.mapbox.android.telemetry;

import i.t;
import i.z;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: GzipRequestInterceptor.java */
/* loaded from: classes2.dex */
public final class v implements i.t {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GzipRequestInterceptor.java */
    /* loaded from: classes2.dex */
    public class a extends i.a0 {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ i.a0 f15653a;

        a(v vVar, i.a0 a0Var) {
            this.f15653a = a0Var;
        }

        @Override // i.a0
        public long a() {
            return -1L;
        }

        @Override // i.a0
        public void a(j.d dVar) {
            j.d a2 = j.n.a(new j.k(dVar));
            this.f15653a.a(a2);
            a2.close();
        }

        @Override // i.a0
        public i.u b() {
            return this.f15653a.b();
        }
    }

    @Override // i.t
    public i.b0 a(t.a aVar) {
        i.z v = aVar.v();
        if (v.a() != null && v.a("Content-Encoding") == null) {
            z.a f2 = v.f();
            f2.b("Content-Encoding", "gzip");
            f2.a(v.e(), a(v.a()));
            return aVar.a(f2.a());
        }
        return aVar.a(v);
    }

    private i.a0 a(i.a0 a0Var) {
        return new a(this, a0Var);
    }
}
