package androidx.core.view;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;

/* compiled from: GestureDetectorCompat.java */
/* loaded from: classes.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    private final a f1923a;

    /* compiled from: GestureDetectorCompat.java */
    /* loaded from: classes.dex */
    interface a {
        boolean a(MotionEvent motionEvent);
    }

    /* compiled from: GestureDetectorCompat.java */
    /* loaded from: classes.dex */
    static class b implements a {
        private static final int v = ViewConfiguration.getLongPressTimeout();
        private static final int w = ViewConfiguration.getTapTimeout();
        private static final int x = ViewConfiguration.getDoubleTapTimeout();

        /* renamed from: a, reason: collision with root package name */
        private int f1924a;

        /* renamed from: b, reason: collision with root package name */
        private int f1925b;

        /* renamed from: c, reason: collision with root package name */
        private int f1926c;

        /* renamed from: d, reason: collision with root package name */
        private int f1927d;

        /* renamed from: e, reason: collision with root package name */
        private final Handler f1928e;

        /* renamed from: f, reason: collision with root package name */
        final GestureDetector.OnGestureListener f1929f;

        /* renamed from: g, reason: collision with root package name */
        GestureDetector.OnDoubleTapListener f1930g;

        /* renamed from: h, reason: collision with root package name */
        boolean f1931h;

        /* renamed from: i, reason: collision with root package name */
        boolean f1932i;

        /* renamed from: j, reason: collision with root package name */
        private boolean f1933j;

        /* renamed from: k, reason: collision with root package name */
        private boolean f1934k;

        /* renamed from: l, reason: collision with root package name */
        private boolean f1935l;
        MotionEvent m;
        private MotionEvent n;
        private boolean o;
        private float p;
        private float q;
        private float r;
        private float s;
        private boolean t;
        private VelocityTracker u;

        b(Context context, GestureDetector.OnGestureListener onGestureListener, Handler handler) {
            if (handler != null) {
                this.f1928e = new a(handler);
            } else {
                this.f1928e = new a();
            }
            this.f1929f = onGestureListener;
            if (onGestureListener instanceof GestureDetector.OnDoubleTapListener) {
                a((GestureDetector.OnDoubleTapListener) onGestureListener);
            }
            a(context);
        }

        private void a(Context context) {
            if (context != null) {
                if (this.f1929f != null) {
                    this.t = true;
                    ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
                    int scaledTouchSlop = viewConfiguration.getScaledTouchSlop();
                    int scaledDoubleTapSlop = viewConfiguration.getScaledDoubleTapSlop();
                    this.f1926c = viewConfiguration.getScaledMinimumFlingVelocity();
                    this.f1927d = viewConfiguration.getScaledMaximumFlingVelocity();
                    this.f1924a = scaledTouchSlop * scaledTouchSlop;
                    this.f1925b = scaledDoubleTapSlop * scaledDoubleTapSlop;
                    return;
                }
                throw new IllegalArgumentException("OnGestureListener must not be null");
            }
            throw new IllegalArgumentException("Context must not be null");
        }

        private void b() {
            this.f1928e.removeMessages(1);
            this.f1928e.removeMessages(2);
            this.f1928e.removeMessages(3);
            this.u.recycle();
            this.u = null;
            this.o = false;
            this.f1931h = false;
            this.f1934k = false;
            this.f1935l = false;
            this.f1932i = false;
            if (this.f1933j) {
                this.f1933j = false;
            }
        }

        private void c() {
            this.f1928e.removeMessages(1);
            this.f1928e.removeMessages(2);
            this.f1928e.removeMessages(3);
            this.o = false;
            this.f1934k = false;
            this.f1935l = false;
            this.f1932i = false;
            if (this.f1933j) {
                this.f1933j = false;
            }
        }

        /* compiled from: GestureDetectorCompat.java */
        /* loaded from: classes.dex */
        private class a extends Handler {
            a() {
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                int i2 = message.what;
                if (i2 == 1) {
                    b bVar = b.this;
                    bVar.f1929f.onShowPress(bVar.m);
                    return;
                }
                if (i2 == 2) {
                    b.this.a();
                    return;
                }
                if (i2 == 3) {
                    b bVar2 = b.this;
                    GestureDetector.OnDoubleTapListener onDoubleTapListener = bVar2.f1930g;
                    if (onDoubleTapListener != null) {
                        if (!bVar2.f1931h) {
                            onDoubleTapListener.onSingleTapConfirmed(bVar2.m);
                            return;
                        } else {
                            bVar2.f1932i = true;
                            return;
                        }
                    }
                    return;
                }
                throw new RuntimeException("Unknown message " + message);
            }

            a(Handler handler) {
                super(handler.getLooper());
            }
        }

        public void a(GestureDetector.OnDoubleTapListener onDoubleTapListener) {
            this.f1930g = onDoubleTapListener;
        }

        /* JADX WARN: Removed duplicated region for block: B:114:0x0208  */
        /* JADX WARN: Removed duplicated region for block: B:117:0x021f  */
        @Override // androidx.core.view.d.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean a(android.view.MotionEvent r13) {
            /*
                Method dump skipped, instructions count: 591
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.core.view.d.b.a(android.view.MotionEvent):boolean");
        }

        private boolean a(MotionEvent motionEvent, MotionEvent motionEvent2, MotionEvent motionEvent3) {
            if (!this.f1935l || motionEvent3.getEventTime() - motionEvent2.getEventTime() > x) {
                return false;
            }
            int x2 = ((int) motionEvent.getX()) - ((int) motionEvent3.getX());
            int y = ((int) motionEvent.getY()) - ((int) motionEvent3.getY());
            return (x2 * x2) + (y * y) < this.f1925b;
        }

        void a() {
            this.f1928e.removeMessages(3);
            this.f1932i = false;
            this.f1933j = true;
            this.f1929f.onLongPress(this.m);
        }
    }

    /* compiled from: GestureDetectorCompat.java */
    /* loaded from: classes.dex */
    static class c implements a {

        /* renamed from: a, reason: collision with root package name */
        private final GestureDetector f1937a;

        c(Context context, GestureDetector.OnGestureListener onGestureListener, Handler handler) {
            this.f1937a = new GestureDetector(context, onGestureListener, handler);
        }

        @Override // androidx.core.view.d.a
        public boolean a(MotionEvent motionEvent) {
            return this.f1937a.onTouchEvent(motionEvent);
        }
    }

    public d(Context context, GestureDetector.OnGestureListener onGestureListener) {
        this(context, onGestureListener, null);
    }

    public boolean a(MotionEvent motionEvent) {
        return this.f1923a.a(motionEvent);
    }

    public d(Context context, GestureDetector.OnGestureListener onGestureListener, Handler handler) {
        if (Build.VERSION.SDK_INT > 17) {
            this.f1923a = new c(context, onGestureListener, handler);
        } else {
            this.f1923a = new b(context, onGestureListener, handler);
        }
    }
}
