package com.mapbox.android.gestures;

import android.content.Context;
import android.view.GestureDetector;
import android.view.MotionEvent;
import androidx.annotation.NonNull;
import androidx.annotation.UiThread;

/* compiled from: StandardGestureDetector.java */
@UiThread
/* loaded from: classes2.dex */
public class n extends com.mapbox.android.gestures.a<c> {

    /* renamed from: i, reason: collision with root package name */
    private final androidx.core.view.d f15544i;

    /* renamed from: j, reason: collision with root package name */
    final c f15545j;

    /* compiled from: StandardGestureDetector.java */
    /* loaded from: classes2.dex */
    class a implements c {
        a() {
        }

        @Override // android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTap(MotionEvent motionEvent) {
            return n.this.a(10) && ((c) n.this.f15524h).onDoubleTap(motionEvent);
        }

        @Override // android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTapEvent(MotionEvent motionEvent) {
            return n.this.a(11) && ((c) n.this.f15524h).onDoubleTapEvent(motionEvent);
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public boolean onDown(MotionEvent motionEvent) {
            return n.this.a(9) && ((c) n.this.f15524h).onDown(motionEvent);
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f2, float f3) {
            return n.this.a(7) && ((c) n.this.f15524h).onFling(motionEvent, motionEvent2, f2, f3);
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public void onLongPress(MotionEvent motionEvent) {
            if (n.this.a(6)) {
                ((c) n.this.f15524h).onLongPress(motionEvent);
            }
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f2, float f3) {
            return n.this.a(0) && ((c) n.this.f15524h).onScroll(motionEvent, motionEvent2, f2, f3);
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public void onShowPress(MotionEvent motionEvent) {
            if (n.this.a(8)) {
                ((c) n.this.f15524h).onShowPress(motionEvent);
            }
        }

        @Override // android.view.GestureDetector.OnDoubleTapListener
        public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
            return n.this.a(12) && ((c) n.this.f15524h).onSingleTapConfirmed(motionEvent);
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public boolean onSingleTapUp(MotionEvent motionEvent) {
            return n.this.a(5) && ((c) n.this.f15524h).onSingleTapUp(motionEvent);
        }
    }

    /* compiled from: StandardGestureDetector.java */
    /* loaded from: classes2.dex */
    public static class b implements c {
        @Override // android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTap(@NonNull MotionEvent motionEvent) {
            return false;
        }

        @Override // android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTapEvent(@NonNull MotionEvent motionEvent) {
            return false;
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public boolean onScroll(@NonNull MotionEvent motionEvent, @NonNull MotionEvent motionEvent2, float f2, float f3) {
            return false;
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public void onShowPress(@NonNull MotionEvent motionEvent) {
        }
    }

    /* compiled from: StandardGestureDetector.java */
    /* loaded from: classes2.dex */
    public interface c extends GestureDetector.OnGestureListener, GestureDetector.OnDoubleTapListener {
    }

    public n(Context context, AndroidGesturesManager androidGesturesManager) {
        super(context, androidGesturesManager);
        this.f15545j = new a();
        this.f15544i = new androidx.core.view.d(context, this.f15545j);
    }

    @Override // com.mapbox.android.gestures.a
    protected boolean a(@NonNull MotionEvent motionEvent) {
        return this.f15544i.a(motionEvent);
    }
}
