package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import java.util.Map;

/* loaded from: classes.dex */
public class ChangeBounds extends Transition {
    private static final String[] Q = {"android:changeBounds:bounds", "android:changeBounds:clip", "android:changeBounds:parent", "android:changeBounds:windowX", "android:changeBounds:windowY"};
    private static final Property<Drawable, PointF> R = new b(PointF.class, "boundsOrigin");
    private static final Property<k, PointF> S = new c(PointF.class, "topLeft");
    private static final Property<k, PointF> T = new d(PointF.class, "bottomRight");
    private static final Property<View, PointF> U = new e(PointF.class, "bottomRight");
    private static final Property<View, PointF> V = new f(PointF.class, "topLeft");
    private static final Property<View, PointF> W = new g(PointF.class, "position");
    private static androidx.transition.g X = new androidx.transition.g();
    private int[] N = new int[2];
    private boolean O = false;
    private boolean P = false;

    /* loaded from: classes.dex */
    class a extends AnimatorListenerAdapter {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ ViewGroup f2893e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ BitmapDrawable f2894f;

        /* renamed from: g, reason: collision with root package name */
        final /* synthetic */ View f2895g;

        /* renamed from: h, reason: collision with root package name */
        final /* synthetic */ float f2896h;

        a(ChangeBounds changeBounds, ViewGroup viewGroup, BitmapDrawable bitmapDrawable, View view, float f2) {
            this.f2893e = viewGroup;
            this.f2894f = bitmapDrawable;
            this.f2895g = view;
            this.f2896h = f2;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            x.b(this.f2893e).b(this.f2894f);
            x.a(this.f2895g, this.f2896h);
        }
    }

    /* loaded from: classes.dex */
    static class c extends Property<k, PointF> {
        c(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public PointF get(k kVar) {
            return null;
        }

        @Override // android.util.Property
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void set(k kVar, PointF pointF) {
            kVar.b(pointF);
        }
    }

    /* loaded from: classes.dex */
    static class d extends Property<k, PointF> {
        d(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public PointF get(k kVar) {
            return null;
        }

        @Override // android.util.Property
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void set(k kVar, PointF pointF) {
            kVar.a(pointF);
        }
    }

    /* loaded from: classes.dex */
    static class e extends Property<View, PointF> {
        e(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public PointF get(View view) {
            return null;
        }

        @Override // android.util.Property
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void set(View view, PointF pointF) {
            x.a(view, view.getLeft(), view.getTop(), Math.round(pointF.x), Math.round(pointF.y));
        }
    }

    /* loaded from: classes.dex */
    static class f extends Property<View, PointF> {
        f(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public PointF get(View view) {
            return null;
        }

        @Override // android.util.Property
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void set(View view, PointF pointF) {
            x.a(view, Math.round(pointF.x), Math.round(pointF.y), view.getRight(), view.getBottom());
        }
    }

    /* loaded from: classes.dex */
    static class g extends Property<View, PointF> {
        g(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public PointF get(View view) {
            return null;
        }

        @Override // android.util.Property
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void set(View view, PointF pointF) {
            int round = Math.round(pointF.x);
            int round2 = Math.round(pointF.y);
            x.a(view, round, round2, view.getWidth() + round, view.getHeight() + round2);
        }
    }

    /* loaded from: classes.dex */
    class h extends AnimatorListenerAdapter {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ k f2898e;
        private k mViewBounds;

        h(ChangeBounds changeBounds, k kVar) {
            this.f2898e = kVar;
            this.mViewBounds = this.f2898e;
        }
    }

    /* loaded from: classes.dex */
    class i extends AnimatorListenerAdapter {

        /* renamed from: e, reason: collision with root package name */
        private boolean f2899e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ View f2900f;

        /* renamed from: g, reason: collision with root package name */
        final /* synthetic */ Rect f2901g;

        /* renamed from: h, reason: collision with root package name */
        final /* synthetic */ int f2902h;

        /* renamed from: i, reason: collision with root package name */
        final /* synthetic */ int f2903i;

        /* renamed from: j, reason: collision with root package name */
        final /* synthetic */ int f2904j;

        /* renamed from: k, reason: collision with root package name */
        final /* synthetic */ int f2905k;

        i(ChangeBounds changeBounds, View view, Rect rect, int i2, int i3, int i4, int i5) {
            this.f2900f = view;
            this.f2901g = rect;
            this.f2902h = i2;
            this.f2903i = i3;
            this.f2904j = i4;
            this.f2905k = i5;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f2899e = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (this.f2899e) {
                return;
            }
            ViewCompat.a(this.f2900f, this.f2901g);
            x.a(this.f2900f, this.f2902h, this.f2903i, this.f2904j, this.f2905k);
        }
    }

    /* loaded from: classes.dex */
    class j extends androidx.transition.i {

        /* renamed from: e, reason: collision with root package name */
        boolean f2906e = false;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ ViewGroup f2907f;

        j(ChangeBounds changeBounds, ViewGroup viewGroup) {
            this.f2907f = viewGroup;
        }

        @Override // androidx.transition.i, androidx.transition.Transition.f
        public void b(@NonNull Transition transition) {
            r.a(this.f2907f, false);
        }

        @Override // androidx.transition.Transition.f
        public void c(@NonNull Transition transition) {
            if (!this.f2906e) {
                r.a(this.f2907f, false);
            }
            transition.b(this);
        }

        @Override // androidx.transition.i, androidx.transition.Transition.f
        public void d(@NonNull Transition transition) {
            r.a(this.f2907f, true);
        }
    }

    private void d(m mVar) {
        View view = mVar.f2983b;
        if (!ViewCompat.D(view) && view.getWidth() == 0 && view.getHeight() == 0) {
            return;
        }
        mVar.f2982a.put("android:changeBounds:bounds", new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom()));
        mVar.f2982a.put("android:changeBounds:parent", mVar.f2983b.getParent());
        if (this.P) {
            mVar.f2983b.getLocationInWindow(this.N);
            mVar.f2982a.put("android:changeBounds:windowX", Integer.valueOf(this.N[0]));
            mVar.f2982a.put("android:changeBounds:windowY", Integer.valueOf(this.N[1]));
        }
        if (this.O) {
            mVar.f2982a.put("android:changeBounds:clip", ViewCompat.h(view));
        }
    }

    @Override // androidx.transition.Transition
    public void a(@NonNull m mVar) {
        d(mVar);
    }

    @Override // androidx.transition.Transition
    public void c(@NonNull m mVar) {
        d(mVar);
    }

    @Override // androidx.transition.Transition
    @Nullable
    public String[] z() {
        return Q;
    }

    private boolean a(View view, View view2) {
        if (!this.P) {
            return true;
        }
        m a2 = a(view, true);
        if (a2 == null) {
            if (view == view2) {
                return true;
            }
        } else if (view2 == a2.f2983b) {
            return true;
        }
        return false;
    }

    /* loaded from: classes.dex */
    static class b extends Property<Drawable, PointF> {

        /* renamed from: a, reason: collision with root package name */
        private Rect f2897a;

        b(Class cls, String str) {
            super(cls, str);
            this.f2897a = new Rect();
        }

        @Override // android.util.Property
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void set(Drawable drawable, PointF pointF) {
            drawable.copyBounds(this.f2897a);
            this.f2897a.offsetTo(Math.round(pointF.x), Math.round(pointF.y));
            drawable.setBounds(this.f2897a);
        }

        @Override // android.util.Property
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public PointF get(Drawable drawable) {
            drawable.copyBounds(this.f2897a);
            Rect rect = this.f2897a;
            return new PointF(rect.left, rect.top);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class k {

        /* renamed from: a, reason: collision with root package name */
        private int f2908a;

        /* renamed from: b, reason: collision with root package name */
        private int f2909b;

        /* renamed from: c, reason: collision with root package name */
        private int f2910c;

        /* renamed from: d, reason: collision with root package name */
        private int f2911d;

        /* renamed from: e, reason: collision with root package name */
        private View f2912e;

        /* renamed from: f, reason: collision with root package name */
        private int f2913f;

        /* renamed from: g, reason: collision with root package name */
        private int f2914g;

        k(View view) {
            this.f2912e = view;
        }

        void a(PointF pointF) {
            this.f2910c = Math.round(pointF.x);
            this.f2911d = Math.round(pointF.y);
            this.f2914g++;
            if (this.f2913f == this.f2914g) {
                a();
            }
        }

        void b(PointF pointF) {
            this.f2908a = Math.round(pointF.x);
            this.f2909b = Math.round(pointF.y);
            this.f2913f++;
            if (this.f2913f == this.f2914g) {
                a();
            }
        }

        private void a() {
            x.a(this.f2912e, this.f2908a, this.f2909b, this.f2910c, this.f2911d);
            this.f2913f = 0;
            this.f2914g = 0;
        }
    }

    @Override // androidx.transition.Transition
    @Nullable
    public Animator a(@NonNull ViewGroup viewGroup, @Nullable m mVar, @Nullable m mVar2) {
        int i2;
        View view;
        int i3;
        Rect rect;
        ObjectAnimator objectAnimator;
        Animator a2;
        if (mVar == null || mVar2 == null) {
            return null;
        }
        Map<String, Object> map = mVar.f2982a;
        Map<String, Object> map2 = mVar2.f2982a;
        ViewGroup viewGroup2 = (ViewGroup) map.get("android:changeBounds:parent");
        ViewGroup viewGroup3 = (ViewGroup) map2.get("android:changeBounds:parent");
        if (viewGroup2 == null || viewGroup3 == null) {
            return null;
        }
        View view2 = mVar2.f2983b;
        if (a(viewGroup2, viewGroup3)) {
            Rect rect2 = (Rect) mVar.f2982a.get("android:changeBounds:bounds");
            Rect rect3 = (Rect) mVar2.f2982a.get("android:changeBounds:bounds");
            int i4 = rect2.left;
            int i5 = rect3.left;
            int i6 = rect2.top;
            int i7 = rect3.top;
            int i8 = rect2.right;
            int i9 = rect3.right;
            int i10 = rect2.bottom;
            int i11 = rect3.bottom;
            int i12 = i8 - i4;
            int i13 = i10 - i6;
            int i14 = i9 - i5;
            int i15 = i11 - i7;
            Rect rect4 = (Rect) mVar.f2982a.get("android:changeBounds:clip");
            Rect rect5 = (Rect) mVar2.f2982a.get("android:changeBounds:clip");
            if ((i12 == 0 || i13 == 0) && (i14 == 0 || i15 == 0)) {
                i2 = 0;
            } else {
                i2 = (i4 == i5 && i6 == i7) ? 0 : 1;
                if (i8 != i9 || i10 != i11) {
                    i2++;
                }
            }
            if ((rect4 != null && !rect4.equals(rect5)) || (rect4 == null && rect5 != null)) {
                i2++;
            }
            if (i2 <= 0) {
                return null;
            }
            if (!this.O) {
                view = view2;
                x.a(view, i4, i6, i8, i10);
                if (i2 == 2) {
                    if (i12 == i14 && i13 == i15) {
                        a2 = androidx.transition.c.a(view, W, f().a(i4, i6, i5, i7));
                    } else {
                        k kVar = new k(view);
                        ObjectAnimator a3 = androidx.transition.c.a(kVar, S, f().a(i4, i6, i5, i7));
                        ObjectAnimator a4 = androidx.transition.c.a(kVar, T, f().a(i8, i10, i9, i11));
                        AnimatorSet animatorSet = new AnimatorSet();
                        animatorSet.playTogether(a3, a4);
                        animatorSet.addListener(new h(this, kVar));
                        a2 = animatorSet;
                    }
                } else if (i4 == i5 && i6 == i7) {
                    a2 = androidx.transition.c.a(view, U, f().a(i8, i10, i9, i11));
                } else {
                    a2 = androidx.transition.c.a(view, V, f().a(i4, i6, i5, i7));
                }
            } else {
                view = view2;
                x.a(view, i4, i6, Math.max(i12, i14) + i4, Math.max(i13, i15) + i6);
                ObjectAnimator a5 = (i4 == i5 && i6 == i7) ? null : androidx.transition.c.a(view, W, f().a(i4, i6, i5, i7));
                if (rect4 == null) {
                    i3 = 0;
                    rect = new Rect(0, 0, i12, i13);
                } else {
                    i3 = 0;
                    rect = rect4;
                }
                Rect rect6 = rect5 == null ? new Rect(i3, i3, i14, i15) : rect5;
                if (rect.equals(rect6)) {
                    objectAnimator = null;
                } else {
                    ViewCompat.a(view, rect);
                    androidx.transition.g gVar = X;
                    Object[] objArr = new Object[2];
                    objArr[i3] = rect;
                    objArr[1] = rect6;
                    objectAnimator = ObjectAnimator.ofObject(view, "clipBounds", gVar, objArr);
                    objectAnimator.addListener(new i(this, view, rect5, i5, i7, i9, i11));
                }
                a2 = l.a(a5, objectAnimator);
            }
            if (view.getParent() instanceof ViewGroup) {
                ViewGroup viewGroup4 = (ViewGroup) view.getParent();
                r.a(viewGroup4, true);
                a(new j(this, viewGroup4));
            }
            return a2;
        }
        int intValue = ((Integer) mVar.f2982a.get("android:changeBounds:windowX")).intValue();
        int intValue2 = ((Integer) mVar.f2982a.get("android:changeBounds:windowY")).intValue();
        int intValue3 = ((Integer) mVar2.f2982a.get("android:changeBounds:windowX")).intValue();
        int intValue4 = ((Integer) mVar2.f2982a.get("android:changeBounds:windowY")).intValue();
        if (intValue == intValue3 && intValue2 == intValue4) {
            return null;
        }
        viewGroup.getLocationInWindow(this.N);
        Bitmap createBitmap = Bitmap.createBitmap(view2.getWidth(), view2.getHeight(), Bitmap.Config.ARGB_8888);
        view2.draw(new Canvas(createBitmap));
        BitmapDrawable bitmapDrawable = new BitmapDrawable(createBitmap);
        float c2 = x.c(view2);
        x.a(view2, 0.0f);
        x.b(viewGroup).a(bitmapDrawable);
        PathMotion f2 = f();
        int[] iArr = this.N;
        ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(bitmapDrawable, androidx.transition.e.a(R, f2.a(intValue - iArr[0], intValue2 - iArr[1], intValue3 - iArr[0], intValue4 - iArr[1])));
        ofPropertyValuesHolder.addListener(new a(this, viewGroup, bitmapDrawable, view2, c2));
        return ofPropertyValuesHolder;
    }
}
