package androidx.transition;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.annotation.NonNull;
import androidx.core.view.ViewCompat;
import java.util.ArrayList;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ViewOverlayApi14.java */
/* loaded from: classes.dex */
public class u implements w {

    /* renamed from: a, reason: collision with root package name */
    protected a f2997a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public u(Context context, ViewGroup viewGroup, View view) {
        this.f2997a = new a(context, viewGroup, view, this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static u c(View view) {
        ViewGroup d2 = d(view);
        if (d2 == null) {
            return null;
        }
        int childCount = d2.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = d2.getChildAt(i2);
            if (childAt instanceof a) {
                return ((a) childAt).f3001h;
            }
        }
        return new o(d2.getContext(), d2, view);
    }

    static ViewGroup d(View view) {
        while (view != null) {
            if (view.getId() == 16908290 && (view instanceof ViewGroup)) {
                return (ViewGroup) view;
            }
            if (view.getParent() instanceof ViewGroup) {
                view = (ViewGroup) view.getParent();
            }
        }
        return null;
    }

    @Override // androidx.transition.w
    public void a(@NonNull Drawable drawable) {
        this.f2997a.a(drawable);
    }

    @Override // androidx.transition.w
    public void b(@NonNull Drawable drawable) {
        this.f2997a.b(drawable);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ViewOverlayApi14.java */
    /* loaded from: classes.dex */
    public static class a extends ViewGroup {

        /* renamed from: e, reason: collision with root package name */
        ViewGroup f2998e;

        /* renamed from: f, reason: collision with root package name */
        View f2999f;

        /* renamed from: g, reason: collision with root package name */
        ArrayList<Drawable> f3000g;

        /* renamed from: h, reason: collision with root package name */
        u f3001h;

        static {
            try {
                ViewGroup.class.getDeclaredMethod("invalidateChildInParentFast", Integer.TYPE, Integer.TYPE, Rect.class);
            } catch (NoSuchMethodException unused) {
            }
        }

        a(Context context, ViewGroup viewGroup, View view, u uVar) {
            super(context);
            this.f3000g = null;
            this.f2998e = viewGroup;
            this.f2999f = view;
            setRight(viewGroup.getWidth());
            setBottom(viewGroup.getHeight());
            viewGroup.addView(this);
            this.f3001h = uVar;
        }

        public void a(Drawable drawable) {
            if (this.f3000g == null) {
                this.f3000g = new ArrayList<>();
            }
            if (this.f3000g.contains(drawable)) {
                return;
            }
            this.f3000g.add(drawable);
            invalidate(drawable.getBounds());
            drawable.setCallback(this);
        }

        public void b(Drawable drawable) {
            ArrayList<Drawable> arrayList = this.f3000g;
            if (arrayList != null) {
                arrayList.remove(drawable);
                invalidate(drawable.getBounds());
                drawable.setCallback(null);
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void dispatchDraw(Canvas canvas) {
            this.f2998e.getLocationOnScreen(new int[2]);
            this.f2999f.getLocationOnScreen(new int[2]);
            canvas.translate(r0[0] - r1[0], r0[1] - r1[1]);
            canvas.clipRect(new Rect(0, 0, this.f2999f.getWidth(), this.f2999f.getHeight()));
            super.dispatchDraw(canvas);
            ArrayList<Drawable> arrayList = this.f3000g;
            int size = arrayList == null ? 0 : arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.f3000g.get(i2).draw(canvas);
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchTouchEvent(MotionEvent motionEvent) {
            return false;
        }

        @Override // android.view.ViewGroup, android.view.ViewParent
        public ViewParent invalidateChildInParent(int[] iArr, Rect rect) {
            if (this.f2998e == null) {
                return null;
            }
            rect.offset(iArr[0], iArr[1]);
            if (this.f2998e instanceof ViewGroup) {
                iArr[0] = 0;
                iArr[1] = 0;
                int[] iArr2 = new int[2];
                a(iArr2);
                rect.offset(iArr2[0], iArr2[1]);
                return super.invalidateChildInParent(iArr, rect);
            }
            invalidate(rect);
            return null;
        }

        @Override // android.view.View, android.graphics.drawable.Drawable.Callback
        public void invalidateDrawable(@NonNull Drawable drawable) {
            invalidate(drawable.getBounds());
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        }

        @Override // android.view.View
        protected boolean verifyDrawable(@NonNull Drawable drawable) {
            ArrayList<Drawable> arrayList;
            return super.verifyDrawable(drawable) || ((arrayList = this.f3000g) != null && arrayList.contains(drawable));
        }

        public void b(View view) {
            super.removeView(view);
            if (a()) {
                this.f2998e.removeView(this);
            }
        }

        public void a(View view) {
            if (view.getParent() instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view.getParent();
                if (viewGroup != this.f2998e && viewGroup.getParent() != null && ViewCompat.C(viewGroup)) {
                    int[] iArr = new int[2];
                    int[] iArr2 = new int[2];
                    viewGroup.getLocationOnScreen(iArr);
                    this.f2998e.getLocationOnScreen(iArr2);
                    ViewCompat.d(view, iArr[0] - iArr2[0]);
                    ViewCompat.e(view, iArr[1] - iArr2[1]);
                }
                viewGroup.removeView(view);
                if (view.getParent() != null) {
                    viewGroup.removeView(view);
                }
            }
            super.addView(view, getChildCount() - 1);
        }

        boolean a() {
            ArrayList<Drawable> arrayList;
            return getChildCount() == 0 && ((arrayList = this.f3000g) == null || arrayList.size() == 0);
        }

        private void a(int[] iArr) {
            int[] iArr2 = new int[2];
            int[] iArr3 = new int[2];
            this.f2998e.getLocationOnScreen(iArr2);
            this.f2999f.getLocationOnScreen(iArr3);
            iArr[0] = iArr3[0] - iArr2[0];
            iArr[1] = iArr3[1] - iArr2[1];
        }
    }
}
