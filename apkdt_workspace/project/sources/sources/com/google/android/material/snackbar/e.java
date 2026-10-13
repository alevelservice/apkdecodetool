package com.google.android.material.snackbar;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;

/* compiled from: SnackbarManager.java */
/* loaded from: classes.dex */
class e {

    /* renamed from: e, reason: collision with root package name */
    private static e f13916e;

    /* renamed from: a, reason: collision with root package name */
    private final Object f13917a = new Object();

    /* renamed from: b, reason: collision with root package name */
    private final Handler f13918b = new Handler(Looper.getMainLooper(), new a());

    /* renamed from: c, reason: collision with root package name */
    private c f13919c;

    /* renamed from: d, reason: collision with root package name */
    private c f13920d;

    /* compiled from: SnackbarManager.java */
    /* loaded from: classes.dex */
    class a implements Handler.Callback {
        a() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            if (message.what != 0) {
                return false;
            }
            e.this.a((c) message.obj);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SnackbarManager.java */
    /* loaded from: classes.dex */
    public interface b {
        void a(int i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SnackbarManager.java */
    /* loaded from: classes.dex */
    public static class c {

        /* renamed from: a, reason: collision with root package name */
        final WeakReference<b> f13922a;

        /* renamed from: b, reason: collision with root package name */
        int f13923b;

        /* renamed from: c, reason: collision with root package name */
        boolean f13924c;

        boolean a(b bVar) {
            return bVar != null && this.f13922a.get() == bVar;
        }
    }

    private e() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static e a() {
        if (f13916e == null) {
            f13916e = new e();
        }
        return f13916e;
    }

    private boolean c(b bVar) {
        c cVar = this.f13919c;
        return cVar != null && cVar.a(bVar);
    }

    public void b(b bVar) {
        synchronized (this.f13917a) {
            if (c(bVar) && this.f13919c.f13924c) {
                this.f13919c.f13924c = false;
                b(this.f13919c);
            }
        }
    }

    public void a(b bVar) {
        synchronized (this.f13917a) {
            if (c(bVar) && !this.f13919c.f13924c) {
                this.f13919c.f13924c = true;
                this.f13918b.removeCallbacksAndMessages(this.f13919c);
            }
        }
    }

    private void b(c cVar) {
        int i2 = cVar.f13923b;
        if (i2 == -2) {
            return;
        }
        if (i2 <= 0) {
            i2 = i2 == -1 ? 1500 : 2750;
        }
        this.f13918b.removeCallbacksAndMessages(cVar);
        Handler handler = this.f13918b;
        handler.sendMessageDelayed(Message.obtain(handler, 0, cVar), i2);
    }

    private boolean a(c cVar, int i2) {
        b bVar = cVar.f13922a.get();
        if (bVar == null) {
            return false;
        }
        this.f13918b.removeCallbacksAndMessages(cVar);
        bVar.a(i2);
        return true;
    }

    void a(c cVar) {
        synchronized (this.f13917a) {
            if (this.f13919c == cVar || this.f13920d == cVar) {
                a(cVar, 2);
            }
        }
    }
}
