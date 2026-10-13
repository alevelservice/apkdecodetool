package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.transition.Transition;
import androidx.transition.a;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes.dex */
public abstract class Visibility extends Transition {
    private static final String[] O = {"android:visibility:visibility", "android:visibility:parent"};
    private int N = 3;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP})
    /* loaded from: classes.dex */
    public @interface Mode {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a extends AnimatorListenerAdapter {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ q f2936e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ View f2937f;

        a(Visibility visibility, q qVar, View view) {
            this.f2936e = qVar;
            this.f2937f = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f2936e.b(this.f2937f);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class c {

        /* renamed from: a, reason: collision with root package name */
        boolean f2944a;

        /* renamed from: b, reason: collision with root package name */
        boolean f2945b;

        /* renamed from: c, reason: collision with root package name */
        int f2946c;

        /* renamed from: d, reason: collision with root package name */
        int f2947d;

        /* renamed from: e, reason: collision with root package name */
        ViewGroup f2948e;

        /* renamed from: f, reason: collision with root package name */
        ViewGroup f2949f;

        c() {
        }
    }

    private c b(m mVar, m mVar2) {
        c cVar = new c();
        cVar.f2944a = false;
        cVar.f2945b = false;
        if (mVar != null && mVar.f2982a.containsKey("android:visibility:visibility")) {
            cVar.f2946c = ((Integer) mVar.f2982a.get("android:visibility:visibility")).intValue();
            cVar.f2948e = (ViewGroup) mVar.f2982a.get("android:visibility:parent");
        } else {
            cVar.f2946c = -1;
            cVar.f2948e = null;
        }
        if (mVar2 != null && mVar2.f2982a.containsKey("android:visibility:visibility")) {
            cVar.f2947d = ((Integer) mVar2.f2982a.get("android:visibility:visibility")).intValue();
            cVar.f2949f = (ViewGroup) mVar2.f2982a.get("android:visibility:parent");
        } else {
            cVar.f2947d = -1;
            cVar.f2949f = null;
        }
        if (mVar != null && mVar2 != null) {
            if (cVar.f2946c == cVar.f2947d && cVar.f2948e == cVar.f2949f) {
                return cVar;
            }
            int i2 = cVar.f2946c;
            int i3 = cVar.f2947d;
            if (i2 != i3) {
                if (i2 == 0) {
                    cVar.f2945b = false;
                    cVar.f2944a = true;
                } else if (i3 == 0) {
                    cVar.f2945b = true;
                    cVar.f2944a = true;
                }
            } else if (cVar.f2949f == null) {
                cVar.f2945b = false;
                cVar.f2944a = true;
            } else if (cVar.f2948e == null) {
                cVar.f2945b = true;
                cVar.f2944a = true;
            }
        } else if (mVar == null && cVar.f2947d == 0) {
            cVar.f2945b = true;
            cVar.f2944a = true;
        } else if (mVar2 == null && cVar.f2946c == 0) {
            cVar.f2945b = false;
            cVar.f2944a = true;
        }
        return cVar;
    }

    private void d(m mVar) {
        mVar.f2982a.put("android:visibility:visibility", Integer.valueOf(mVar.f2983b.getVisibility()));
        mVar.f2982a.put("android:visibility:parent", mVar.f2983b.getParent());
        int[] iArr = new int[2];
        mVar.f2983b.getLocationOnScreen(iArr);
        mVar.f2982a.put("android:visibility:screenLocation", iArr);
    }

    public abstract Animator a(ViewGroup viewGroup, View view, m mVar, m mVar2);

    public void a(int i2) {
        if ((i2 & (-4)) == 0) {
            this.N = i2;
            return;
        }
        throw new IllegalArgumentException("Only MODE_IN and MODE_OUT flags are allowed");
    }

    public abstract Animator b(ViewGroup viewGroup, View view, m mVar, m mVar2);

    @Override // androidx.transition.Transition
    public void c(@NonNull m mVar) {
        d(mVar);
    }

    @Override // androidx.transition.Transition
    @Nullable
    public String[] z() {
        return O;
    }

    @Override // androidx.transition.Transition
    public void a(@NonNull m mVar) {
        d(mVar);
    }

    @Override // androidx.transition.Transition
    @Nullable
    public Animator a(@NonNull ViewGroup viewGroup, @Nullable m mVar, @Nullable m mVar2) {
        c b2 = b(mVar, mVar2);
        if (!b2.f2944a) {
            return null;
        }
        if (b2.f2948e == null && b2.f2949f == null) {
            return null;
        }
        if (b2.f2945b) {
            return a(viewGroup, mVar, b2.f2946c, mVar2, b2.f2947d);
        }
        return b(viewGroup, mVar, b2.f2946c, mVar2, b2.f2947d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class b extends AnimatorListenerAdapter implements Transition.f, a.InterfaceC0051a {

        /* renamed from: e, reason: collision with root package name */
        private final View f2938e;

        /* renamed from: f, reason: collision with root package name */
        private final int f2939f;

        /* renamed from: g, reason: collision with root package name */
        private final ViewGroup f2940g;

        /* renamed from: h, reason: collision with root package name */
        private final boolean f2941h;

        /* renamed from: i, reason: collision with root package name */
        private boolean f2942i;

        /* renamed from: j, reason: collision with root package name */
        boolean f2943j = false;

        b(View view, int i2, boolean z) {
            this.f2938e = view;
            this.f2939f = i2;
            this.f2940g = (ViewGroup) view.getParent();
            this.f2941h = z;
            a(true);
        }

        private void a() {
            if (!this.f2943j) {
                x.a(this.f2938e, this.f2939f);
                ViewGroup viewGroup = this.f2940g;
                if (viewGroup != null) {
                    viewGroup.invalidate();
                }
            }
            a(false);
        }

        @Override // androidx.transition.Transition.f
        public void a(@NonNull Transition transition) {
        }

        @Override // androidx.transition.Transition.f
        public void b(@NonNull Transition transition) {
            a(false);
        }

        @Override // androidx.transition.Transition.f
        public void c(@NonNull Transition transition) {
            a();
            transition.b(this);
        }

        @Override // androidx.transition.Transition.f
        public void d(@NonNull Transition transition) {
            a(true);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f2943j = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            a();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener, androidx.transition.a.InterfaceC0051a
        public void onAnimationPause(Animator animator) {
            if (this.f2943j) {
                return;
            }
            x.a(this.f2938e, this.f2939f);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener, androidx.transition.a.InterfaceC0051a
        public void onAnimationResume(Animator animator) {
            if (this.f2943j) {
                return;
            }
            x.a(this.f2938e, 0);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }

        private void a(boolean z) {
            ViewGroup viewGroup;
            if (!this.f2941h || this.f2942i == z || (viewGroup = this.f2940g) == null) {
                return;
            }
            this.f2942i = z;
            r.a(viewGroup, z);
        }
    }

    public Animator a(ViewGroup viewGroup, m mVar, int i2, m mVar2, int i3) {
        if ((this.N & 1) != 1 || mVar2 == null) {
            return null;
        }
        if (mVar == null) {
            View view = (View) mVar2.f2983b.getParent();
            if (b(a(view, false), b(view, false)).f2944a) {
                return null;
            }
        }
        return a(viewGroup, mVar2.f2983b, mVar, mVar2);
    }

    @Override // androidx.transition.Transition
    public boolean a(m mVar, m mVar2) {
        if (mVar == null && mVar2 == null) {
            return false;
        }
        if (mVar != null && mVar2 != null && mVar2.f2982a.containsKey("android:visibility:visibility") != mVar.f2982a.containsKey("android:visibility:visibility")) {
            return false;
        }
        c b2 = b(mVar, mVar2);
        if (b2.f2944a) {
            return b2.f2946c == 0 || b2.f2947d == 0;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0087 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00ee A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.animation.Animator b(android.view.ViewGroup r7, androidx.transition.m r8, int r9, androidx.transition.m r10, int r11) {
        /*
            Method dump skipped, instructions count: 239
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.transition.Visibility.b(android.view.ViewGroup, androidx.transition.m, int, androidx.transition.m, int):android.animation.Animator");
    }
}
