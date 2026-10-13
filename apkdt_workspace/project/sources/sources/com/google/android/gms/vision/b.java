package com.google.android.gms.vision;

import android.util.SparseArray;
import com.google.android.gms.vision.c;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
public abstract class b<T> {

    /* renamed from: a, reason: collision with root package name */
    private final Object f13476a = new Object();

    /* renamed from: b, reason: collision with root package name */
    @GuardedBy("processorLock")
    private InterfaceC0097b<T> f13477b;

    /* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
    /* loaded from: classes.dex */
    public static class a<T> {

        /* renamed from: a, reason: collision with root package name */
        private final SparseArray<T> f13478a;

        public a(SparseArray<T> sparseArray, c.b bVar, boolean z) {
            this.f13478a = sparseArray;
        }

        public SparseArray<T> a() {
            return this.f13478a;
        }
    }

    /* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
    /* renamed from: com.google.android.gms.vision.b$b, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0097b<T> {
        void a();

        void a(a<T> aVar);
    }

    public abstract SparseArray<T> a(c cVar);

    public void a(InterfaceC0097b<T> interfaceC0097b) {
        synchronized (this.f13476a) {
            if (this.f13477b != null) {
                this.f13477b.a();
            }
            this.f13477b = interfaceC0097b;
        }
    }

    public abstract boolean a();

    public void b(c cVar) {
        c.b bVar = new c.b(cVar.c());
        bVar.f();
        a<T> aVar = new a<>(a(cVar), bVar, a());
        synchronized (this.f13476a) {
            if (this.f13477b != null) {
                this.f13477b.a(aVar);
            } else {
                throw new IllegalStateException("Detector processor must first be set with setProcessor in order to receive detection results.");
            }
        }
    }
}
