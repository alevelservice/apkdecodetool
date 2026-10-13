package com.mapbox.mapboxsdk.maps;

import android.os.Handler;
import android.os.Message;
import androidx.annotation.NonNull;
import com.mapbox.mapboxsdk.maps.n;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CameraChangeDispatcher.java */
/* loaded from: classes2.dex */
public class e implements n.f, n.e, n.d, n.c {

    /* renamed from: g, reason: collision with root package name */
    private int f16032g;

    /* renamed from: e, reason: collision with root package name */
    private final a f16030e = new a(this);

    /* renamed from: f, reason: collision with root package name */
    private boolean f16031f = true;

    /* renamed from: h, reason: collision with root package name */
    private final CopyOnWriteArrayList<n.f> f16033h = new CopyOnWriteArrayList<>();

    /* renamed from: i, reason: collision with root package name */
    private final CopyOnWriteArrayList<n.d> f16034i = new CopyOnWriteArrayList<>();

    /* renamed from: j, reason: collision with root package name */
    private final CopyOnWriteArrayList<n.e> f16035j = new CopyOnWriteArrayList<>();

    /* renamed from: k, reason: collision with root package name */
    private final CopyOnWriteArrayList<n.c> f16036k = new CopyOnWriteArrayList<>();

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: CameraChangeDispatcher.java */
    /* loaded from: classes2.dex */
    public static class a extends Handler {

        /* renamed from: a, reason: collision with root package name */
        private WeakReference<e> f16037a;

        a(e eVar) {
            this.f16037a = new WeakReference<>(eVar);
        }

        void a(int i2) {
            e eVar = this.f16037a.get();
            if (eVar != null) {
                if (i2 == 0) {
                    boolean z = !eVar.f16031f && (hasMessages(3) || hasMessages(2));
                    removeMessages(3);
                    removeMessages(2);
                    if (z) {
                        return;
                    }
                }
                Message message = new Message();
                message.what = i2;
                sendMessage(message);
            }
        }

        @Override // android.os.Handler
        public void handleMessage(@NonNull Message message) {
            e eVar = this.f16037a.get();
            if (eVar != null) {
                int i2 = message.what;
                if (i2 == 0) {
                    eVar.h();
                    return;
                }
                if (i2 == 1) {
                    eVar.f();
                } else if (i2 == 2) {
                    eVar.g();
                } else {
                    if (i2 != 3) {
                        return;
                    }
                    eVar.d();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        if (this.f16035j.isEmpty() || this.f16031f) {
            return;
        }
        Iterator<n.e> it = this.f16035j.iterator();
        while (it.hasNext()) {
            it.next().a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        if (this.f16034i.isEmpty() || this.f16031f) {
            return;
        }
        Iterator<n.d> it = this.f16034i.iterator();
        while (it.hasNext()) {
            it.next().b();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        if (this.f16031f) {
            this.f16031f = false;
            if (this.f16033h.isEmpty()) {
                return;
            }
            Iterator<n.f> it = this.f16033h.iterator();
            while (it.hasNext()) {
                it.next().c(this.f16032g);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        if (this.f16031f) {
            return;
        }
        this.f16031f = true;
        if (this.f16036k.isEmpty()) {
            return;
        }
        Iterator<n.c> it = this.f16036k.iterator();
        while (it.hasNext()) {
            it.next().e();
        }
    }

    @Override // com.mapbox.mapboxsdk.maps.n.e
    public void a() {
        this.f16030e.a(1);
    }

    @Override // com.mapbox.mapboxsdk.maps.n.d
    public void b() {
        this.f16030e.a(2);
    }

    @Override // com.mapbox.mapboxsdk.maps.n.f
    public void c(int i2) {
        this.f16032g = i2;
        this.f16030e.a(0);
    }

    @Override // com.mapbox.mapboxsdk.maps.n.c
    public void e() {
        this.f16030e.a(3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@NonNull n.c cVar) {
        this.f16036k.add(cVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(@NonNull n.c cVar) {
        if (this.f16036k.contains(cVar)) {
            this.f16036k.remove(cVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(n.f fVar) {
        this.f16033h.add(fVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c() {
        this.f16030e.removeCallbacksAndMessages(null);
        this.f16033h.clear();
        this.f16034i.clear();
        this.f16035j.clear();
        this.f16036k.clear();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(n.e eVar) {
        this.f16035j.add(eVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(n.f fVar) {
        if (this.f16033h.contains(fVar)) {
            this.f16033h.remove(fVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(n.e eVar) {
        if (this.f16035j.contains(eVar)) {
            this.f16035j.remove(eVar);
        }
    }
}
