package com.google.android.material.behavior;

import a.k.a.c;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.annotation.NonNull;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;

/* loaded from: classes.dex */
public class SwipeDismissBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {

    /* renamed from: a, reason: collision with root package name */
    a.k.a.c f13639a;

    /* renamed from: b, reason: collision with root package name */
    b f13640b;

    /* renamed from: c, reason: collision with root package name */
    private boolean f13641c;

    /* renamed from: e, reason: collision with root package name */
    private boolean f13643e;

    /* renamed from: d, reason: collision with root package name */
    private float f13642d = 0.0f;

    /* renamed from: f, reason: collision with root package name */
    int f13644f = 2;

    /* renamed from: g, reason: collision with root package name */
    float f13645g = 0.5f;

    /* renamed from: h, reason: collision with root package name */
    float f13646h = 0.0f;

    /* renamed from: i, reason: collision with root package name */
    float f13647i = 0.5f;

    /* renamed from: j, reason: collision with root package name */
    private final c.AbstractC0012c f13648j = new a();

    /* loaded from: classes.dex */
    class a extends c.AbstractC0012c {

        /* renamed from: a, reason: collision with root package name */
        private int f13649a;

        /* renamed from: b, reason: collision with root package name */
        private int f13650b = -1;

        a() {
        }

        @Override // a.k.a.c.AbstractC0012c
        public void a(View view, int i2) {
            this.f13650b = i2;
            this.f13649a = view.getLeft();
            ViewParent parent = view.getParent();
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
        }

        @Override // a.k.a.c.AbstractC0012c
        public boolean b(View view, int i2) {
            return this.f13650b == -1 && SwipeDismissBehavior.this.a(view);
        }

        @Override // a.k.a.c.AbstractC0012c
        public void c(int i2) {
            b bVar = SwipeDismissBehavior.this.f13640b;
            if (bVar != null) {
                bVar.a(i2);
            }
        }

        @Override // a.k.a.c.AbstractC0012c
        public int b(View view, int i2, int i3) {
            return view.getTop();
        }

        @Override // a.k.a.c.AbstractC0012c
        public void a(View view, float f2, float f3) {
            int i2;
            boolean z;
            b bVar;
            this.f13650b = -1;
            int width = view.getWidth();
            if (a(view, f2)) {
                int left = view.getLeft();
                int i3 = this.f13649a;
                i2 = left < i3 ? i3 - width : i3 + width;
                z = true;
            } else {
                i2 = this.f13649a;
                z = false;
            }
            if (SwipeDismissBehavior.this.f13639a.d(i2, view.getTop())) {
                ViewCompat.a(view, new c(view, z));
            } else {
                if (!z || (bVar = SwipeDismissBehavior.this.f13640b) == null) {
                    return;
                }
                bVar.a(view);
            }
        }

        private boolean a(View view, float f2) {
            if (f2 == 0.0f) {
                return Math.abs(view.getLeft() - this.f13649a) >= Math.round(((float) view.getWidth()) * SwipeDismissBehavior.this.f13645g);
            }
            boolean z = ViewCompat.n(view) == 1;
            int i2 = SwipeDismissBehavior.this.f13644f;
            if (i2 == 2) {
                return true;
            }
            if (i2 == 0) {
                if (z) {
                    if (f2 >= 0.0f) {
                        return false;
                    }
                } else if (f2 <= 0.0f) {
                    return false;
                }
                return true;
            }
            if (i2 != 1) {
                return false;
            }
            if (z) {
                if (f2 <= 0.0f) {
                    return false;
                }
            } else if (f2 >= 0.0f) {
                return false;
            }
            return true;
        }

        @Override // a.k.a.c.AbstractC0012c
        public int a(View view) {
            return view.getWidth();
        }

        @Override // a.k.a.c.AbstractC0012c
        public int a(View view, int i2, int i3) {
            int width;
            int width2;
            int width3;
            boolean z = ViewCompat.n(view) == 1;
            int i4 = SwipeDismissBehavior.this.f13644f;
            if (i4 == 0) {
                if (z) {
                    width = this.f13649a - view.getWidth();
                    width2 = this.f13649a;
                } else {
                    width = this.f13649a;
                    width3 = view.getWidth();
                    width2 = width3 + width;
                }
            } else if (i4 != 1) {
                width = this.f13649a - view.getWidth();
                width2 = view.getWidth() + this.f13649a;
            } else if (z) {
                width = this.f13649a;
                width3 = view.getWidth();
                width2 = width3 + width;
            } else {
                width = this.f13649a - view.getWidth();
                width2 = this.f13649a;
            }
            return SwipeDismissBehavior.a(width, i2, width2);
        }

        @Override // a.k.a.c.AbstractC0012c
        public void a(View view, int i2, int i3, int i4, int i5) {
            float width = this.f13649a + (view.getWidth() * SwipeDismissBehavior.this.f13646h);
            float width2 = this.f13649a + (view.getWidth() * SwipeDismissBehavior.this.f13647i);
            float f2 = i2;
            if (f2 <= width) {
                view.setAlpha(1.0f);
            } else if (f2 >= width2) {
                view.setAlpha(0.0f);
            } else {
                view.setAlpha(SwipeDismissBehavior.a(0.0f, 1.0f - SwipeDismissBehavior.b(width, width2, f2), 1.0f));
            }
        }
    }

    /* loaded from: classes.dex */
    public interface b {
        void a(int i2);

        void a(View view);
    }

    /* loaded from: classes.dex */
    private class c implements Runnable {

        /* renamed from: e, reason: collision with root package name */
        private final View f13652e;

        /* renamed from: f, reason: collision with root package name */
        private final boolean f13653f;

        c(View view, boolean z) {
            this.f13652e = view;
            this.f13653f = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            b bVar;
            a.k.a.c cVar = SwipeDismissBehavior.this.f13639a;
            if (cVar != null && cVar.a(true)) {
                ViewCompat.a(this.f13652e, this);
            } else {
                if (!this.f13653f || (bVar = SwipeDismissBehavior.this.f13640b) == null) {
                    return;
                }
                bVar.a(this.f13652e);
            }
        }
    }

    static float b(float f2, float f3, float f4) {
        return (f4 - f2) / (f3 - f2);
    }

    public void a(int i2) {
        this.f13644f = i2;
    }

    public boolean a(@NonNull View view) {
        return true;
    }

    public void b(float f2) {
        this.f13646h = a(0.0f, f2, 1.0f);
    }

    public void a(float f2) {
        this.f13647i = a(0.0f, f2, 1.0f);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean b(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        a.k.a.c cVar = this.f13639a;
        if (cVar == null) {
            return false;
        }
        cVar.a(motionEvent);
        return true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean a(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        boolean z = this.f13641c;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f13641c = coordinatorLayout.isPointInChildBounds(v, (int) motionEvent.getX(), (int) motionEvent.getY());
            z = this.f13641c;
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.f13641c = false;
        }
        if (!z) {
            return false;
        }
        a((ViewGroup) coordinatorLayout);
        return this.f13639a.b(motionEvent);
    }

    private void a(ViewGroup viewGroup) {
        a.k.a.c a2;
        if (this.f13639a == null) {
            if (this.f13643e) {
                a2 = a.k.a.c.a(viewGroup, this.f13642d, this.f13648j);
            } else {
                a2 = a.k.a.c.a(viewGroup, this.f13648j);
            }
            this.f13639a = a2;
        }
    }

    static float a(float f2, float f3, float f4) {
        return Math.min(Math.max(f2, f3), f4);
    }

    static int a(int i2, int i3, int i4) {
        return Math.min(Math.max(i2, i3), i4);
    }
}
