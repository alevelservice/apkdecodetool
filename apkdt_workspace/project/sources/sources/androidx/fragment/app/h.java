package androidx.fragment.app;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.os.Looper;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.ScaleAnimation;
import android.view.animation.Transformation;
import androidx.activity.OnBackPressedDispatcher;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.t;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.g;
import androidx.lifecycle.e;
import androidx.lifecycle.r;
import androidx.lifecycle.s;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FragmentManagerImpl.java */
/* loaded from: classes.dex */
public final class h extends androidx.fragment.app.g implements LayoutInflater.Factory2 {
    static boolean L = false;
    static final Interpolator M = new DecelerateInterpolator(2.5f);
    static final Interpolator N = new DecelerateInterpolator(1.5f);
    boolean A;
    boolean B;
    boolean C;
    ArrayList<androidx.fragment.app.a> D;
    ArrayList<Boolean> E;
    ArrayList<Fragment> F;
    ArrayList<m> I;
    private androidx.fragment.app.i J;

    /* renamed from: g, reason: collision with root package name */
    ArrayList<k> f2197g;

    /* renamed from: h, reason: collision with root package name */
    boolean f2198h;

    /* renamed from: l, reason: collision with root package name */
    ArrayList<androidx.fragment.app.a> f2202l;
    ArrayList<Fragment> m;
    private OnBackPressedDispatcher n;
    ArrayList<androidx.fragment.app.a> p;
    ArrayList<Integer> q;
    ArrayList<g.c> r;
    androidx.fragment.app.f u;
    androidx.fragment.app.c v;
    Fragment w;

    @Nullable
    Fragment x;
    boolean y;
    boolean z;

    /* renamed from: i, reason: collision with root package name */
    int f2199i = 0;

    /* renamed from: j, reason: collision with root package name */
    final ArrayList<Fragment> f2200j = new ArrayList<>();

    /* renamed from: k, reason: collision with root package name */
    final HashMap<String, Fragment> f2201k = new HashMap<>();
    private final androidx.activity.b o = new a(false);
    private final CopyOnWriteArrayList<i> s = new CopyOnWriteArrayList<>();
    int t = 0;
    Bundle G = null;
    SparseArray<Parcelable> H = null;
    Runnable K = new b();

    /* compiled from: FragmentManagerImpl.java */
    /* loaded from: classes.dex */
    class a extends androidx.activity.b {
        a(boolean z) {
            super(z);
        }

        @Override // androidx.activity.b
        public void a() {
            h.this.w();
        }
    }

    /* compiled from: FragmentManagerImpl.java */
    /* loaded from: classes.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h.this.t();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FragmentManagerImpl.java */
    /* loaded from: classes.dex */
    public class c implements Animation.AnimationListener {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ ViewGroup f2205a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ Fragment f2206b;

        /* compiled from: FragmentManagerImpl.java */
        /* loaded from: classes.dex */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                if (c.this.f2206b.getAnimatingAway() != null) {
                    c.this.f2206b.setAnimatingAway(null);
                    c cVar = c.this;
                    h hVar = h.this;
                    Fragment fragment = cVar.f2206b;
                    hVar.a(fragment, fragment.getStateAfterAnimating(), 0, 0, false);
                }
            }
        }

        c(ViewGroup viewGroup, Fragment fragment) {
            this.f2205a = viewGroup;
            this.f2206b = fragment;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            this.f2205a.post(new a());
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FragmentManagerImpl.java */
    /* loaded from: classes.dex */
    public class d extends AnimatorListenerAdapter {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ ViewGroup f2209e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ View f2210f;

        /* renamed from: g, reason: collision with root package name */
        final /* synthetic */ Fragment f2211g;

        d(ViewGroup viewGroup, View view, Fragment fragment) {
            this.f2209e = viewGroup;
            this.f2210f = view;
            this.f2211g = fragment;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f2209e.endViewTransition(this.f2210f);
            Animator animator2 = this.f2211g.getAnimator();
            this.f2211g.setAnimator(null);
            if (animator2 == null || this.f2209e.indexOfChild(this.f2210f) >= 0) {
                return;
            }
            h hVar = h.this;
            Fragment fragment = this.f2211g;
            hVar.a(fragment, fragment.getStateAfterAnimating(), 0, 0, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FragmentManagerImpl.java */
    /* loaded from: classes.dex */
    public class e extends AnimatorListenerAdapter {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ ViewGroup f2213e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ View f2214f;

        /* renamed from: g, reason: collision with root package name */
        final /* synthetic */ Fragment f2215g;

        e(h hVar, ViewGroup viewGroup, View view, Fragment fragment) {
            this.f2213e = viewGroup;
            this.f2214f = view;
            this.f2215g = fragment;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f2213e.endViewTransition(this.f2214f);
            animator.removeListener(this);
            Fragment fragment = this.f2215g;
            View view = fragment.mView;
            if (view == null || !fragment.mHidden) {
                return;
            }
            view.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FragmentManagerImpl.java */
    /* loaded from: classes.dex */
    public class f extends androidx.fragment.app.e {
        f() {
        }

        @Override // androidx.fragment.app.e
        @NonNull
        public Fragment a(@NonNull ClassLoader classLoader, @NonNull String str) {
            androidx.fragment.app.f fVar = h.this.u;
            return fVar.a(fVar.c(), str, (Bundle) null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: FragmentManagerImpl.java */
    /* loaded from: classes.dex */
    public static final class i {

        /* renamed from: a, reason: collision with root package name */
        final g.b f2224a;

        /* renamed from: b, reason: collision with root package name */
        final boolean f2225b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FragmentManagerImpl.java */
    /* loaded from: classes.dex */
    public static class j {

        /* renamed from: a, reason: collision with root package name */
        public static final int[] f2226a = {R.attr.name, R.attr.id, R.attr.tag};
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FragmentManagerImpl.java */
    /* loaded from: classes.dex */
    public interface k {
        boolean a(ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2);
    }

    /* compiled from: FragmentManagerImpl.java */
    /* loaded from: classes.dex */
    private class l implements k {

        /* renamed from: a, reason: collision with root package name */
        final String f2227a;

        /* renamed from: b, reason: collision with root package name */
        final int f2228b;

        /* renamed from: c, reason: collision with root package name */
        final int f2229c;

        l(String str, int i2, int i3) {
            this.f2227a = str;
            this.f2228b = i2;
            this.f2229c = i3;
        }

        @Override // androidx.fragment.app.h.k
        public boolean a(ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2) {
            Fragment fragment = h.this.x;
            if (fragment == null || this.f2228b >= 0 || this.f2227a != null || !fragment.getChildFragmentManager().g()) {
                return h.this.a(arrayList, arrayList2, this.f2227a, this.f2228b, this.f2229c);
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FragmentManagerImpl.java */
    /* loaded from: classes.dex */
    public static class m implements Fragment.f {

        /* renamed from: a, reason: collision with root package name */
        final boolean f2231a;

        /* renamed from: b, reason: collision with root package name */
        final androidx.fragment.app.a f2232b;

        /* renamed from: c, reason: collision with root package name */
        private int f2233c;

        m(androidx.fragment.app.a aVar, boolean z) {
            this.f2231a = z;
            this.f2232b = aVar;
        }

        @Override // androidx.fragment.app.Fragment.f
        public void a() {
            this.f2233c++;
        }

        @Override // androidx.fragment.app.Fragment.f
        public void b() {
            this.f2233c--;
            if (this.f2233c != 0) {
                return;
            }
            this.f2232b.s.C();
        }

        public void c() {
            androidx.fragment.app.a aVar = this.f2232b;
            aVar.s.a(aVar, this.f2231a, false, false);
        }

        public void d() {
            boolean z = this.f2233c > 0;
            h hVar = this.f2232b.s;
            int size = hVar.f2200j.size();
            for (int i2 = 0; i2 < size; i2++) {
                Fragment fragment = hVar.f2200j.get(i2);
                fragment.setOnStartEnterTransitionListener(null);
                if (z && fragment.isPostponed()) {
                    fragment.startPostponedEnterTransition();
                }
            }
            androidx.fragment.app.a aVar = this.f2232b;
            aVar.s.a(aVar, this.f2231a, !z, true);
        }

        public boolean e() {
            return this.f2233c == 0;
        }
    }

    private void E() {
        this.f2201k.values().removeAll(Collections.singleton(null));
    }

    private void F() {
        if (y()) {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
        }
    }

    private void G() {
        this.f2198h = false;
        this.E.clear();
        this.D.clear();
    }

    private void H() {
        for (Fragment fragment : this.f2201k.values()) {
            if (fragment != null) {
                if (fragment.getAnimatingAway() != null) {
                    int stateAfterAnimating = fragment.getStateAfterAnimating();
                    View animatingAway = fragment.getAnimatingAway();
                    Animation animation = animatingAway.getAnimation();
                    if (animation != null) {
                        animation.cancel();
                        animatingAway.clearAnimation();
                    }
                    fragment.setAnimatingAway(null);
                    a(fragment, stateAfterAnimating, 0, 0, false);
                } else if (fragment.getAnimator() != null) {
                    fragment.getAnimator().end();
                }
            }
        }
    }

    private void I() {
        if (this.I != null) {
            while (!this.I.isEmpty()) {
                this.I.remove(0).d();
            }
        }
    }

    private void J() {
        ArrayList<k> arrayList = this.f2197g;
        if (arrayList != null && !arrayList.isEmpty()) {
            this.o.a(true);
        } else {
            this.o.a(c() > 0 && i(this.w));
        }
    }

    private void a(RuntimeException runtimeException) {
        runtimeException.getMessage();
        PrintWriter printWriter = new PrintWriter(new a.i.m.c("FragmentManager"));
        androidx.fragment.app.f fVar = this.u;
        try {
            if (fVar != null) {
                fVar.a("  ", (FileDescriptor) null, printWriter, new String[0]);
            } else {
                a("  ", (FileDescriptor) null, printWriter, new String[0]);
            }
            throw runtimeException;
        } catch (Exception unused) {
            throw runtimeException;
        }
    }

    public static int b(int i2, boolean z) {
        if (i2 == 4097) {
            return z ? 1 : 2;
        }
        if (i2 == 4099) {
            return z ? 5 : 6;
        }
        if (i2 != 8194) {
            return -1;
        }
        return z ? 3 : 4;
    }

    public static int e(int i2) {
        if (i2 == 4097) {
            return 8194;
        }
        if (i2 != 4099) {
            return i2 != 8194 ? 0 : 4097;
        }
        return 4099;
    }

    private void u(@Nullable Fragment fragment) {
        if (fragment == null || this.f2201k.get(fragment.mWho) != fragment) {
            return;
        }
        fragment.performPrimaryNavigationFragmentChanged();
    }

    private Fragment v(Fragment fragment) {
        ViewGroup viewGroup = fragment.mContainer;
        View view = fragment.mView;
        if (viewGroup != null && view != null) {
            for (int indexOf = this.f2200j.indexOf(fragment) - 1; indexOf >= 0; indexOf--) {
                Fragment fragment2 = this.f2200j.get(indexOf);
                if (fragment2.mContainer == viewGroup && fragment2.mView != null) {
                    return fragment2;
                }
            }
        }
        return null;
    }

    void A() {
        if (this.r != null) {
            for (int i2 = 0; i2 < this.r.size(); i2++) {
                this.r.get(i2).a();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Parcelable B() {
        ArrayList<String> arrayList;
        int size;
        I();
        H();
        t();
        this.z = true;
        BackStackState[] backStackStateArr = null;
        if (this.f2201k.isEmpty()) {
            return null;
        }
        ArrayList<FragmentState> arrayList2 = new ArrayList<>(this.f2201k.size());
        boolean z = false;
        for (Fragment fragment : this.f2201k.values()) {
            if (fragment != null) {
                if (fragment.mFragmentManager == this) {
                    FragmentState fragmentState = new FragmentState(fragment);
                    arrayList2.add(fragmentState);
                    if (fragment.mState > 0 && fragmentState.q == null) {
                        fragmentState.q = q(fragment);
                        String str = fragment.mTargetWho;
                        if (str != null) {
                            Fragment fragment2 = this.f2201k.get(str);
                            if (fragment2 != null) {
                                if (fragmentState.q == null) {
                                    fragmentState.q = new Bundle();
                                }
                                a(fragmentState.q, "android:target_state", fragment2);
                                int i2 = fragment.mTargetRequestCode;
                                if (i2 != 0) {
                                    fragmentState.q.putInt("android:target_req_state", i2);
                                }
                            } else {
                                a(new IllegalStateException("Failure saving state: " + fragment + " has target not in fragment manager: " + fragment.mTargetWho));
                                throw null;
                            }
                        }
                    } else {
                        fragmentState.q = fragment.mSavedFragmentState;
                    }
                    if (L) {
                        String str2 = "Saved state of " + fragment + ": " + fragmentState.q;
                    }
                    z = true;
                } else {
                    a(new IllegalStateException("Failure saving state: active " + fragment + " was removed from the FragmentManager"));
                    throw null;
                }
            }
        }
        if (!z) {
            boolean z2 = L;
            return null;
        }
        int size2 = this.f2200j.size();
        if (size2 > 0) {
            arrayList = new ArrayList<>(size2);
            Iterator<Fragment> it = this.f2200j.iterator();
            while (it.hasNext()) {
                Fragment next = it.next();
                arrayList.add(next.mWho);
                if (next.mFragmentManager == this) {
                    if (L) {
                        String str3 = "saveAllState: adding fragment (" + next.mWho + "): " + next;
                    }
                } else {
                    a(new IllegalStateException("Failure saving state: active " + next + " was removed from the FragmentManager"));
                    throw null;
                }
            }
        } else {
            arrayList = null;
        }
        ArrayList<androidx.fragment.app.a> arrayList3 = this.f2202l;
        if (arrayList3 != null && (size = arrayList3.size()) > 0) {
            backStackStateArr = new BackStackState[size];
            for (int i3 = 0; i3 < size; i3++) {
                backStackStateArr[i3] = new BackStackState(this.f2202l.get(i3));
                if (L) {
                    String str4 = "saveAllState: adding back stack #" + i3 + ": " + this.f2202l.get(i3);
                }
            }
        }
        FragmentManagerState fragmentManagerState = new FragmentManagerState();
        fragmentManagerState.f2152e = arrayList2;
        fragmentManagerState.f2153f = arrayList;
        fragmentManagerState.f2154g = backStackStateArr;
        Fragment fragment3 = this.x;
        if (fragment3 != null) {
            fragmentManagerState.f2155h = fragment3.mWho;
        }
        fragmentManagerState.f2156i = this.f2199i;
        return fragmentManagerState;
    }

    void C() {
        synchronized (this) {
            boolean z = false;
            boolean z2 = (this.I == null || this.I.isEmpty()) ? false : true;
            if (this.f2197g != null && this.f2197g.size() == 1) {
                z = true;
            }
            if (z2 || z) {
                this.u.d().removeCallbacks(this.K);
                this.u.d().post(this.K);
                J();
            }
        }
    }

    void D() {
        for (Fragment fragment : this.f2201k.values()) {
            if (fragment != null) {
                n(fragment);
            }
        }
    }

    @Override // androidx.fragment.app.g
    public boolean b() {
        boolean t = t();
        I();
        return t;
    }

    @Override // androidx.fragment.app.g
    public int c() {
        ArrayList<androidx.fragment.app.a> arrayList = this.f2202l;
        if (arrayList != null) {
            return arrayList.size();
        }
        return 0;
    }

    public void d(Fragment fragment) {
        if (L) {
            String str = "detach: " + fragment;
        }
        if (fragment.mDetached) {
            return;
        }
        fragment.mDetached = true;
        if (fragment.mAdded) {
            if (L) {
                String str2 = "remove from detach: " + fragment;
            }
            synchronized (this.f2200j) {
                this.f2200j.remove(fragment);
            }
            if (w(fragment)) {
                this.y = true;
            }
            fragment.mAdded = false;
        }
    }

    @Override // androidx.fragment.app.g
    public List<Fragment> e() {
        List<Fragment> list;
        if (this.f2200j.isEmpty()) {
            return Collections.emptyList();
        }
        synchronized (this.f2200j) {
            list = (List) this.f2200j.clone();
        }
        return list;
    }

    @Override // androidx.fragment.app.g
    public void f() {
        a((k) new l(null, -1, 0), false);
    }

    @Override // androidx.fragment.app.g
    public boolean g() {
        F();
        return a((String) null, -1, 0);
    }

    public void h(Fragment fragment) {
        if (L) {
            String str = "hide: " + fragment;
        }
        if (fragment.mHidden) {
            return;
        }
        fragment.mHidden = true;
        fragment.mHiddenChanged = true ^ fragment.mHiddenChanged;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean i(@Nullable Fragment fragment) {
        if (fragment == null) {
            return true;
        }
        h hVar = fragment.mFragmentManager;
        return fragment == hVar.v() && i(hVar.w);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void j(Fragment fragment) {
        if (this.f2201k.get(fragment.mWho) != null) {
            return;
        }
        this.f2201k.put(fragment.mWho, fragment);
        if (fragment.mRetainInstanceChangedWhileDetached) {
            if (fragment.mRetainInstance) {
                a(fragment);
            } else {
                p(fragment);
            }
            fragment.mRetainInstanceChangedWhileDetached = false;
        }
        if (L) {
            String str = "Added fragment to active set " + fragment;
        }
    }

    void k(Fragment fragment) {
        if (this.f2201k.get(fragment.mWho) == null) {
            return;
        }
        if (L) {
            String str = "Removed fragment from active set " + fragment;
        }
        for (Fragment fragment2 : this.f2201k.values()) {
            if (fragment2 != null && fragment.mWho.equals(fragment2.mTargetWho)) {
                fragment2.mTarget = fragment;
                fragment2.mTargetWho = null;
            }
        }
        this.f2201k.put(fragment.mWho, null);
        p(fragment);
        String str2 = fragment.mTargetWho;
        if (str2 != null) {
            fragment.mTarget = this.f2201k.get(str2);
        }
        fragment.initState();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void l(Fragment fragment) {
        if (fragment == null) {
            return;
        }
        if (!this.f2201k.containsKey(fragment.mWho)) {
            if (L) {
                String str = "Ignoring moving " + fragment + " to state " + this.t + "since it is not added to " + this;
                return;
            }
            return;
        }
        int i2 = this.t;
        if (fragment.mRemoving) {
            if (fragment.isInBackStack()) {
                i2 = Math.min(i2, 1);
            } else {
                i2 = Math.min(i2, 0);
            }
        }
        a(fragment, i2, fragment.getNextTransition(), fragment.getNextTransitionStyle(), false);
        if (fragment.mView != null) {
            Fragment v = v(fragment);
            if (v != null) {
                View view = v.mView;
                ViewGroup viewGroup = fragment.mContainer;
                int indexOfChild = viewGroup.indexOfChild(view);
                int indexOfChild2 = viewGroup.indexOfChild(fragment.mView);
                if (indexOfChild2 < indexOfChild) {
                    viewGroup.removeViewAt(indexOfChild2);
                    viewGroup.addView(fragment.mView, indexOfChild);
                }
            }
            if (fragment.mIsNewlyAdded && fragment.mContainer != null) {
                float f2 = fragment.mPostponedAlpha;
                if (f2 > 0.0f) {
                    fragment.mView.setAlpha(f2);
                }
                fragment.mPostponedAlpha = 0.0f;
                fragment.mIsNewlyAdded = false;
                g a2 = a(fragment, fragment.getNextTransition(), true, fragment.getNextTransitionStyle());
                if (a2 != null) {
                    Animation animation = a2.f2217a;
                    if (animation != null) {
                        fragment.mView.startAnimation(animation);
                    } else {
                        a2.f2218b.setTarget(fragment.mView);
                        a2.f2218b.start();
                    }
                }
            }
        }
        if (fragment.mHiddenChanged) {
            c(fragment);
        }
    }

    void m(Fragment fragment) {
        a(fragment, this.t, 0, 0, false);
    }

    public void n(Fragment fragment) {
        if (fragment.mDeferStart) {
            if (this.f2198h) {
                this.C = true;
            } else {
                fragment.mDeferStart = false;
                a(fragment, this.t, 0, 0, false);
            }
        }
    }

    public void o(Fragment fragment) {
        if (L) {
            String str = "remove: " + fragment + " nesting=" + fragment.mBackStackNesting;
        }
        boolean z = !fragment.isInBackStack();
        if (!fragment.mDetached || z) {
            synchronized (this.f2200j) {
                this.f2200j.remove(fragment);
            }
            if (w(fragment)) {
                this.y = true;
            }
            fragment.mAdded = false;
            fragment.mRemoving = true;
        }
    }

    @Override // android.view.LayoutInflater.Factory2
    @Nullable
    public View onCreateView(@Nullable View view, @NonNull String str, @NonNull Context context, @NonNull AttributeSet attributeSet) {
        Fragment fragment;
        if (!"fragment".equals(str)) {
            return null;
        }
        String attributeValue = attributeSet.getAttributeValue(null, "class");
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, j.f2226a);
        if (attributeValue == null) {
            attributeValue = obtainStyledAttributes.getString(0);
        }
        String str2 = attributeValue;
        int resourceId = obtainStyledAttributes.getResourceId(1, -1);
        String string = obtainStyledAttributes.getString(2);
        obtainStyledAttributes.recycle();
        if (str2 == null || !androidx.fragment.app.e.b(context.getClassLoader(), str2)) {
            return null;
        }
        int id = view != null ? view.getId() : 0;
        if (id == -1 && resourceId == -1 && string == null) {
            throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Must specify unique android:id, android:tag, or have a parent with an id for " + str2);
        }
        Fragment a2 = resourceId != -1 ? a(resourceId) : null;
        if (a2 == null && string != null) {
            a2 = a(string);
        }
        if (a2 == null && id != -1) {
            a2 = a(id);
        }
        if (L) {
            String str3 = "onCreateView: id=0x" + Integer.toHexString(resourceId) + " fname=" + str2 + " existing=" + a2;
        }
        if (a2 == null) {
            Fragment a3 = d().a(context.getClassLoader(), str2);
            a3.mFromLayout = true;
            a3.mFragmentId = resourceId != 0 ? resourceId : id;
            a3.mContainerId = id;
            a3.mTag = string;
            a3.mInLayout = true;
            a3.mFragmentManager = this;
            androidx.fragment.app.f fVar = this.u;
            a3.mHost = fVar;
            a3.onInflate(fVar.c(), attributeSet, a3.mSavedFragmentState);
            a(a3, true);
            fragment = a3;
        } else if (!a2.mInLayout) {
            a2.mInLayout = true;
            androidx.fragment.app.f fVar2 = this.u;
            a2.mHost = fVar2;
            a2.onInflate(fVar2.c(), attributeSet, a2.mSavedFragmentState);
            fragment = a2;
        } else {
            throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(resourceId) + ", tag " + string + ", or parent id 0x" + Integer.toHexString(id) + " with another fragment for " + str2);
        }
        if (this.t < 1 && fragment.mFromLayout) {
            a(fragment, 1, 0, 0, false);
        } else {
            m(fragment);
        }
        View view2 = fragment.mView;
        if (view2 != null) {
            if (resourceId != 0) {
                view2.setId(resourceId);
            }
            if (fragment.mView.getTag() == null) {
                fragment.mView.setTag(string);
            }
            return fragment.mView;
        }
        throw new IllegalStateException("Fragment " + str2 + " did not create a view.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void p(@NonNull Fragment fragment) {
        if (y()) {
            boolean z = L;
            return;
        }
        if (this.J.e(fragment) && L) {
            String str = "Updating retained Fragments: Removed " + fragment;
        }
    }

    Bundle q(Fragment fragment) {
        Bundle bundle;
        if (this.G == null) {
            this.G = new Bundle();
        }
        fragment.performSaveInstanceState(this.G);
        d(fragment, this.G, false);
        if (this.G.isEmpty()) {
            bundle = null;
        } else {
            bundle = this.G;
            this.G = null;
        }
        if (fragment.mView != null) {
            r(fragment);
        }
        if (fragment.mSavedViewState != null) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putSparseParcelableArray("android:view_state", fragment.mSavedViewState);
        }
        if (!fragment.mUserVisibleHint) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putBoolean("android:user_visible_hint", fragment.mUserVisibleHint);
        }
        return bundle;
    }

    void r(Fragment fragment) {
        if (fragment.mInnerView == null) {
            return;
        }
        SparseArray<Parcelable> sparseArray = this.H;
        if (sparseArray == null) {
            this.H = new SparseArray<>();
        } else {
            sparseArray.clear();
        }
        fragment.mInnerView.saveHierarchyState(this.H);
        if (this.H.size() > 0) {
            fragment.mSavedViewState = this.H;
            this.H = null;
        }
    }

    void s() {
        if (this.C) {
            this.C = false;
            D();
        }
    }

    public void t(Fragment fragment) {
        if (L) {
            String str = "show: " + fragment;
        }
        if (fragment.mHidden) {
            fragment.mHidden = false;
            fragment.mHiddenChanged = !fragment.mHiddenChanged;
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        Fragment fragment = this.w;
        if (fragment != null) {
            a.i.m.b.a(fragment, sb);
        } else {
            a.i.m.b.a(this.u, sb);
        }
        sb.append("}}");
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public LayoutInflater.Factory2 u() {
        return this;
    }

    void w() {
        t();
        if (this.o.b()) {
            g();
        } else {
            this.n.a();
        }
    }

    public boolean x() {
        return this.B;
    }

    public boolean y() {
        return this.z || this.A;
    }

    public void z() {
        this.z = false;
        this.A = false;
        int size = this.f2200j.size();
        for (int i2 = 0; i2 < size; i2++) {
            Fragment fragment = this.f2200j.get(i2);
            if (fragment != null) {
                fragment.noteStateNotSaved();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean c(int i2) {
        return this.t >= i2;
    }

    @NonNull
    androidx.fragment.app.i f(@NonNull Fragment fragment) {
        return this.J.c(fragment);
    }

    public void m() {
        for (int i2 = 0; i2 < this.f2200j.size(); i2++) {
            Fragment fragment = this.f2200j.get(i2);
            if (fragment != null) {
                fragment.performLowMemory();
            }
        }
    }

    public void b(Fragment fragment) {
        if (L) {
            String str = "attach: " + fragment;
        }
        if (fragment.mDetached) {
            fragment.mDetached = false;
            if (fragment.mAdded) {
                return;
            }
            if (!this.f2200j.contains(fragment)) {
                if (L) {
                    String str2 = "add from attach: " + fragment;
                }
                synchronized (this.f2200j) {
                    this.f2200j.add(fragment);
                }
                fragment.mAdded = true;
                if (w(fragment)) {
                    this.y = true;
                    return;
                }
                return;
            }
            throw new IllegalStateException("Fragment already added: " + fragment);
        }
    }

    void c(Fragment fragment) {
        Animator animator;
        if (fragment.mView != null) {
            g a2 = a(fragment, fragment.getNextTransition(), !fragment.mHidden, fragment.getNextTransitionStyle());
            if (a2 != null && (animator = a2.f2218b) != null) {
                animator.setTarget(fragment.mView);
                if (fragment.mHidden) {
                    if (fragment.isHideReplaced()) {
                        fragment.setHideReplaced(false);
                    } else {
                        ViewGroup viewGroup = fragment.mContainer;
                        View view = fragment.mView;
                        viewGroup.startViewTransition(view);
                        a2.f2218b.addListener(new e(this, viewGroup, view, fragment));
                    }
                } else {
                    fragment.mView.setVisibility(0);
                }
                a2.f2218b.start();
            } else {
                if (a2 != null) {
                    fragment.mView.startAnimation(a2.f2217a);
                    a2.f2217a.start();
                }
                fragment.mView.setVisibility((!fragment.mHidden || fragment.isHideReplaced()) ? 0 : 8);
                if (fragment.isHideReplaced()) {
                    fragment.setHideReplaced(false);
                }
            }
        }
        if (fragment.mAdded && w(fragment)) {
            this.y = true;
        }
        fragment.mHiddenChanged = false;
        fragment.onHiddenChanged(fragment.mHidden);
    }

    void f(@NonNull Fragment fragment, boolean z) {
        Fragment fragment2 = this.w;
        if (fragment2 != null) {
            androidx.fragment.app.g fragmentManager = fragment2.getFragmentManager();
            if (fragmentManager instanceof h) {
                ((h) fragmentManager).f(fragment, true);
            }
        }
        Iterator<i> it = this.s.iterator();
        while (it.hasNext()) {
            i next = it.next();
            if (!z || next.f2225b) {
                next.f2224a.e(this, fragment);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public r g(@NonNull Fragment fragment) {
        return this.J.d(fragment);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: FragmentManagerImpl.java */
    /* loaded from: classes.dex */
    public static class g {

        /* renamed from: a, reason: collision with root package name */
        public final Animation f2217a;

        /* renamed from: b, reason: collision with root package name */
        public final Animator f2218b;

        g(Animation animation) {
            this.f2217a = animation;
            this.f2218b = null;
            if (animation == null) {
                throw new IllegalStateException("Animation cannot be null");
            }
        }

        g(Animator animator) {
            this.f2217a = null;
            this.f2218b = animator;
            if (animator == null) {
                throw new IllegalStateException("Animator cannot be null");
            }
        }
    }

    void g(@NonNull Fragment fragment, boolean z) {
        Fragment fragment2 = this.w;
        if (fragment2 != null) {
            androidx.fragment.app.g fragmentManager = fragment2.getFragmentManager();
            if (fragmentManager instanceof h) {
                ((h) fragmentManager).g(fragment, true);
            }
        }
        Iterator<i> it = this.s.iterator();
        while (it.hasNext()) {
            i next = it.next();
            if (!z || next.f2225b) {
                next.f2224a.f(this, fragment);
            }
        }
    }

    public void s(Fragment fragment) {
        if (fragment != null && (this.f2201k.get(fragment.mWho) != fragment || (fragment.mHost != null && fragment.getFragmentManager() != this))) {
            throw new IllegalArgumentException("Fragment " + fragment + " is not an active fragment of FragmentManager " + this);
        }
        Fragment fragment2 = this.x;
        this.x = fragment;
        u(fragment2);
        u(this.x);
    }

    private boolean w(Fragment fragment) {
        return (fragment.mHasMenu && fragment.mMenuVisible) || fragment.mChildFragmentManager.h();
    }

    void h(@NonNull Fragment fragment, boolean z) {
        Fragment fragment2 = this.w;
        if (fragment2 != null) {
            androidx.fragment.app.g fragmentManager = fragment2.getFragmentManager();
            if (fragmentManager instanceof h) {
                ((h) fragmentManager).h(fragment, true);
            }
        }
        Iterator<i> it = this.s.iterator();
        while (it.hasNext()) {
            i next = it.next();
            if (!z || next.f2225b) {
                next.f2224a.g(this, fragment);
            }
        }
    }

    public void i() {
        this.z = false;
        this.A = false;
        d(2);
    }

    public boolean t() {
        c(true);
        boolean z = false;
        while (b(this.D, this.E)) {
            this.f2198h = true;
            try {
                c(this.D, this.E);
                G();
                z = true;
            } catch (Throwable th) {
                G();
                throw th;
            }
        }
        J();
        s();
        E();
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: FragmentManagerImpl.java */
    /* renamed from: androidx.fragment.app.h$h, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class RunnableC0040h extends AnimationSet implements Runnable {

        /* renamed from: e, reason: collision with root package name */
        private final ViewGroup f2219e;

        /* renamed from: f, reason: collision with root package name */
        private final View f2220f;

        /* renamed from: g, reason: collision with root package name */
        private boolean f2221g;

        /* renamed from: h, reason: collision with root package name */
        private boolean f2222h;

        /* renamed from: i, reason: collision with root package name */
        private boolean f2223i;

        RunnableC0040h(@NonNull Animation animation, @NonNull ViewGroup viewGroup, @NonNull View view) {
            super(false);
            this.f2223i = true;
            this.f2219e = viewGroup;
            this.f2220f = view;
            addAnimation(animation);
            this.f2219e.post(this);
        }

        @Override // android.view.animation.AnimationSet, android.view.animation.Animation
        public boolean getTransformation(long j2, Transformation transformation) {
            this.f2223i = true;
            if (this.f2221g) {
                return !this.f2222h;
            }
            if (!super.getTransformation(j2, transformation)) {
                this.f2221g = true;
                t.a(this.f2219e, this);
            }
            return true;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!this.f2221g && this.f2223i) {
                this.f2223i = false;
                this.f2219e.post(this);
            } else {
                this.f2219e.endViewTransition(this.f2220f);
                this.f2222h = true;
            }
        }

        @Override // android.view.animation.Animation
        public boolean getTransformation(long j2, Transformation transformation, float f2) {
            this.f2223i = true;
            if (this.f2221g) {
                return !this.f2222h;
            }
            if (!super.getTransformation(j2, transformation, f2)) {
                this.f2221g = true;
                t.a(this.f2219e, this);
            }
            return true;
        }
    }

    void e(Fragment fragment) {
        if (!fragment.mFromLayout || fragment.mPerformedCreateView) {
            return;
        }
        fragment.performCreateView(fragment.performGetLayoutInflater(fragment.mSavedFragmentState), null, fragment.mSavedFragmentState);
        View view = fragment.mView;
        if (view != null) {
            fragment.mInnerView = view;
            view.setSaveFromParentEnabled(false);
            if (fragment.mHidden) {
                fragment.mView.setVisibility(8);
            }
            fragment.onViewCreated(fragment.mView, fragment.mSavedFragmentState);
            a(fragment, fragment.mView, fragment.mSavedFragmentState, false);
            return;
        }
        fragment.mInnerView = null;
    }

    public void n() {
        d(3);
    }

    public void p() {
        this.z = false;
        this.A = false;
        d(4);
    }

    @Nullable
    public Fragment v() {
        return this.x;
    }

    @Override // androidx.fragment.app.g
    @NonNull
    public androidx.fragment.app.j a() {
        return new androidx.fragment.app.a(this);
    }

    @Override // androidx.fragment.app.g
    public void a(@Nullable String str, int i2) {
        a((k) new l(str, -1, i2), false);
    }

    public void j() {
        this.z = false;
        this.A = false;
        d(1);
    }

    public void r() {
        this.A = true;
        d(2);
    }

    @Override // androidx.fragment.app.g
    public void a(int i2, int i3) {
        if (i2 >= 0) {
            a((k) new l(null, i2, i3), false);
            return;
        }
        throw new IllegalArgumentException("Bad id: " + i2);
    }

    private boolean a(String str, int i2, int i3) {
        t();
        c(true);
        Fragment fragment = this.x;
        if (fragment != null && i2 < 0 && str == null && fragment.getChildFragmentManager().g()) {
            return true;
        }
        boolean a2 = a(this.D, this.E, str, i2, i3);
        if (a2) {
            this.f2198h = true;
            try {
                c(this.D, this.E);
            } finally {
                G();
            }
        }
        J();
        s();
        E();
        return a2;
    }

    public void k() {
        this.B = true;
        t();
        d(0);
        this.u = null;
        this.v = null;
        this.w = null;
        if (this.n != null) {
            this.o.c();
            this.n = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void o() {
        J();
        u(this.x);
    }

    private void d(int i2) {
        try {
            this.f2198h = true;
            a(i2, false);
            this.f2198h = false;
            t();
        } catch (Throwable th) {
            this.f2198h = false;
            throw th;
        }
    }

    boolean h() {
        boolean z = false;
        for (Fragment fragment : this.f2201k.values()) {
            if (fragment != null) {
                z = w(fragment);
            }
            if (z) {
                return true;
            }
        }
        return false;
    }

    void e(@NonNull Fragment fragment, boolean z) {
        Fragment fragment2 = this.w;
        if (fragment2 != null) {
            androidx.fragment.app.g fragmentManager = fragment2.getFragmentManager();
            if (fragmentManager instanceof h) {
                ((h) fragmentManager).e(fragment, true);
            }
        }
        Iterator<i> it = this.s.iterator();
        while (it.hasNext()) {
            i next = it.next();
            if (!z || next.f2225b) {
                next.f2224a.d(this, fragment);
            }
        }
    }

    public void q() {
        this.z = false;
        this.A = false;
        d(3);
    }

    public Fragment b(@NonNull String str) {
        Fragment findFragmentByWho;
        for (Fragment fragment : this.f2201k.values()) {
            if (fragment != null && (findFragmentByWho = fragment.findFragmentByWho(str)) != null) {
                return findFragmentByWho;
            }
        }
        return null;
    }

    public int b(androidx.fragment.app.a aVar) {
        synchronized (this) {
            if (this.q != null && this.q.size() > 0) {
                int intValue = this.q.remove(this.q.size() - 1).intValue();
                if (L) {
                    String str = "Adding back stack index " + intValue + " with " + aVar;
                }
                this.p.set(intValue, aVar);
                return intValue;
            }
            if (this.p == null) {
                this.p = new ArrayList<>();
            }
            int size = this.p.size();
            if (L) {
                String str2 = "Setting back stack index " + size + " to " + aVar;
            }
            this.p.add(aVar);
            return size;
        }
    }

    @Override // androidx.fragment.app.g
    @NonNull
    public androidx.fragment.app.e d() {
        if (super.d() == androidx.fragment.app.g.f2195f) {
            Fragment fragment = this.w;
            if (fragment != null) {
                return fragment.mFragmentManager.d();
            }
            a(new f());
        }
        return super.d();
    }

    public void a(Bundle bundle, String str, Fragment fragment) {
        if (fragment.mFragmentManager == this) {
            bundle.putString(str, fragment.mWho);
            return;
        }
        a(new IllegalStateException("Fragment " + fragment + " is not currently in the FragmentManager"));
        throw null;
    }

    void d(@NonNull Fragment fragment, boolean z) {
        Fragment fragment2 = this.w;
        if (fragment2 != null) {
            androidx.fragment.app.g fragmentManager = fragment2.getFragmentManager();
            if (fragmentManager instanceof h) {
                ((h) fragmentManager).d(fragment, true);
            }
        }
        Iterator<i> it = this.s.iterator();
        while (it.hasNext()) {
            i next = it.next();
            if (!z || next.f2225b) {
                next.f2224a.c(this, fragment);
            }
        }
    }

    private void c(boolean z) {
        if (!this.f2198h) {
            if (this.u != null) {
                if (Looper.myLooper() == this.u.d().getLooper()) {
                    if (!z) {
                        F();
                    }
                    if (this.D == null) {
                        this.D = new ArrayList<>();
                        this.E = new ArrayList<>();
                    }
                    this.f2198h = true;
                    try {
                        a((ArrayList<androidx.fragment.app.a>) null, (ArrayList<Boolean>) null);
                        return;
                    } finally {
                        this.f2198h = false;
                    }
                }
                throw new IllegalStateException("Must be called from main thread of fragment host");
            }
            throw new IllegalStateException("Fragment host has been destroyed");
        }
        throw new IllegalStateException("FragmentManager is already executing transactions");
    }

    @Nullable
    public Fragment a(Bundle bundle, String str) {
        String string = bundle.getString(str);
        if (string == null) {
            return null;
        }
        Fragment fragment = this.f2201k.get(string);
        if (fragment != null) {
            return fragment;
        }
        a(new IllegalStateException("Fragment no longer exists for key " + str + ": unique id " + string));
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@NonNull Fragment fragment) {
        if (y()) {
            boolean z = L;
            return;
        }
        if (this.J.a(fragment) && L) {
            String str = "Updating retained Fragments: Added " + fragment;
        }
    }

    public void b(int i2) {
        synchronized (this) {
            this.p.set(i2, null);
            if (this.q == null) {
                this.q = new ArrayList<>();
            }
            if (L) {
                String str = "Freeing back stack index " + i2;
            }
            this.q.add(Integer.valueOf(i2));
        }
    }

    public void l() {
        d(1);
    }

    void d(@NonNull Fragment fragment, @NonNull Bundle bundle, boolean z) {
        Fragment fragment2 = this.w;
        if (fragment2 != null) {
            androidx.fragment.app.g fragmentManager = fragment2.getFragmentManager();
            if (fragmentManager instanceof h) {
                ((h) fragmentManager).d(fragment, bundle, true);
            }
        }
        Iterator<i> it = this.s.iterator();
        while (it.hasNext()) {
            i next = it.next();
            if (!z || next.f2225b) {
                next.f2224a.d(this, fragment, bundle);
            }
        }
    }

    @Override // androidx.fragment.app.g
    public void a(@NonNull String str, @Nullable FileDescriptor fileDescriptor, @NonNull PrintWriter printWriter, @Nullable String[] strArr) {
        int size;
        int size2;
        int size3;
        int size4;
        String str2 = str + "    ";
        if (!this.f2201k.isEmpty()) {
            printWriter.print(str);
            printWriter.print("Active Fragments in ");
            printWriter.print(Integer.toHexString(System.identityHashCode(this)));
            printWriter.println(":");
            for (Fragment fragment : this.f2201k.values()) {
                printWriter.print(str);
                printWriter.println(fragment);
                if (fragment != null) {
                    fragment.dump(str2, fileDescriptor, printWriter, strArr);
                }
            }
        }
        int size5 = this.f2200j.size();
        if (size5 > 0) {
            printWriter.print(str);
            printWriter.println("Added Fragments:");
            for (int i2 = 0; i2 < size5; i2++) {
                Fragment fragment2 = this.f2200j.get(i2);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i2);
                printWriter.print(": ");
                printWriter.println(fragment2.toString());
            }
        }
        ArrayList<Fragment> arrayList = this.m;
        if (arrayList != null && (size4 = arrayList.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Fragments Created Menus:");
            for (int i3 = 0; i3 < size4; i3++) {
                Fragment fragment3 = this.m.get(i3);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i3);
                printWriter.print(": ");
                printWriter.println(fragment3.toString());
            }
        }
        ArrayList<androidx.fragment.app.a> arrayList2 = this.f2202l;
        if (arrayList2 != null && (size3 = arrayList2.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Back Stack:");
            for (int i4 = 0; i4 < size3; i4++) {
                androidx.fragment.app.a aVar = this.f2202l.get(i4);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i4);
                printWriter.print(": ");
                printWriter.println(aVar.toString());
                aVar.a(str2, printWriter);
            }
        }
        synchronized (this) {
            if (this.p != null && (size2 = this.p.size()) > 0) {
                printWriter.print(str);
                printWriter.println("Back Stack Indices:");
                for (int i5 = 0; i5 < size2; i5++) {
                    Object obj = (androidx.fragment.app.a) this.p.get(i5);
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(i5);
                    printWriter.print(": ");
                    printWriter.println(obj);
                }
            }
            if (this.q != null && this.q.size() > 0) {
                printWriter.print(str);
                printWriter.print("mAvailBackStackIndices: ");
                printWriter.println(Arrays.toString(this.q.toArray()));
            }
        }
        ArrayList<k> arrayList3 = this.f2197g;
        if (arrayList3 != null && (size = arrayList3.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Pending Actions:");
            for (int i6 = 0; i6 < size; i6++) {
                Object obj2 = (k) this.f2197g.get(i6);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i6);
                printWriter.print(": ");
                printWriter.println(obj2);
            }
        }
        printWriter.print(str);
        printWriter.println("FragmentManager misc state:");
        printWriter.print(str);
        printWriter.print("  mHost=");
        printWriter.println(this.u);
        printWriter.print(str);
        printWriter.print("  mContainer=");
        printWriter.println(this.v);
        if (this.w != null) {
            printWriter.print(str);
            printWriter.print("  mParent=");
            printWriter.println(this.w);
        }
        printWriter.print(str);
        printWriter.print("  mCurState=");
        printWriter.print(this.t);
        printWriter.print(" mStateSaved=");
        printWriter.print(this.z);
        printWriter.print(" mStopped=");
        printWriter.print(this.A);
        printWriter.print(" mDestroyed=");
        printWriter.println(this.B);
        if (this.y) {
            printWriter.print(str);
            printWriter.print("  mNeedMenuInvalidate=");
            printWriter.println(this.y);
        }
    }

    private void b(ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2, int i2, int i3) {
        int i4;
        int i5;
        int i6 = i2;
        boolean z = arrayList.get(i6).q;
        ArrayList<Fragment> arrayList3 = this.F;
        if (arrayList3 == null) {
            this.F = new ArrayList<>();
        } else {
            arrayList3.clear();
        }
        this.F.addAll(this.f2200j);
        Fragment v = v();
        boolean z2 = false;
        for (int i7 = i6; i7 < i3; i7++) {
            androidx.fragment.app.a aVar = arrayList.get(i7);
            if (!arrayList2.get(i7).booleanValue()) {
                v = aVar.a(this.F, v);
            } else {
                v = aVar.b(this.F, v);
            }
            z2 = z2 || aVar.f2248h;
        }
        this.F.clear();
        if (!z) {
            androidx.fragment.app.k.a(this, arrayList, arrayList2, i2, i3, false);
        }
        a(arrayList, arrayList2, i2, i3);
        if (z) {
            a.e.b<Fragment> bVar = new a.e.b<>();
            a(bVar);
            int a2 = a(arrayList, arrayList2, i2, i3, bVar);
            b(bVar);
            i4 = a2;
        } else {
            i4 = i3;
        }
        if (i4 != i6 && z) {
            androidx.fragment.app.k.a(this, arrayList, arrayList2, i2, i4, true);
            a(this.t, true);
        }
        while (i6 < i3) {
            androidx.fragment.app.a aVar2 = arrayList.get(i6);
            if (arrayList2.get(i6).booleanValue() && (i5 = aVar2.u) >= 0) {
                b(i5);
                aVar2.u = -1;
            }
            aVar2.f();
            i6++;
        }
        if (z2) {
            A();
        }
    }

    private void c(ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2) {
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        if (arrayList2 != null && arrayList.size() == arrayList2.size()) {
            a(arrayList, arrayList2);
            int size = arrayList.size();
            int i2 = 0;
            int i3 = 0;
            while (i2 < size) {
                if (!arrayList.get(i2).q) {
                    if (i3 != i2) {
                        b(arrayList, arrayList2, i3, i2);
                    }
                    i3 = i2 + 1;
                    if (arrayList2.get(i2).booleanValue()) {
                        while (i3 < size && arrayList2.get(i3).booleanValue() && !arrayList.get(i3).q) {
                            i3++;
                        }
                    }
                    b(arrayList, arrayList2, i2, i3);
                    i2 = i3 - 1;
                }
                i2++;
            }
            if (i3 != size) {
                b(arrayList, arrayList2, i3, size);
                return;
            }
            return;
        }
        throw new IllegalStateException("Internal error with the back stack records");
    }

    @Override // android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }

    void c(@NonNull Fragment fragment, @Nullable Bundle bundle, boolean z) {
        Fragment fragment2 = this.w;
        if (fragment2 != null) {
            androidx.fragment.app.g fragmentManager = fragment2.getFragmentManager();
            if (fragmentManager instanceof h) {
                ((h) fragmentManager).c(fragment, bundle, true);
            }
        }
        Iterator<i> it = this.s.iterator();
        while (it.hasNext()) {
            i next = it.next();
            if (!z || next.f2225b) {
                next.f2224a.c(this, fragment, bundle);
            }
        }
    }

    void c(@NonNull Fragment fragment, boolean z) {
        Fragment fragment2 = this.w;
        if (fragment2 != null) {
            androidx.fragment.app.g fragmentManager = fragment2.getFragmentManager();
            if (fragmentManager instanceof h) {
                ((h) fragmentManager).c(fragment, true);
            }
        }
        Iterator<i> it = this.s.iterator();
        while (it.hasNext()) {
            i next = it.next();
            if (!z || next.f2225b) {
                next.f2224a.b(this, fragment);
            }
        }
    }

    private void b(a.e.b<Fragment> bVar) {
        int size = bVar.size();
        for (int i2 = 0; i2 < size; i2++) {
            Fragment m2 = bVar.m(i2);
            if (!m2.mAdded) {
                View requireView = m2.requireView();
                m2.mPostponedAlpha = requireView.getAlpha();
                requireView.setAlpha(0.0f);
            }
        }
    }

    private boolean b(ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2) {
        synchronized (this) {
            if (this.f2197g != null && this.f2197g.size() != 0) {
                int size = this.f2197g.size();
                boolean z = false;
                for (int i2 = 0; i2 < size; i2++) {
                    z |= this.f2197g.get(i2).a(arrayList, arrayList2);
                }
                this.f2197g.clear();
                this.u.d().removeCallbacks(this.K);
                return z;
            }
            return false;
        }
    }

    public void b(boolean z) {
        for (int size = this.f2200j.size() - 1; size >= 0; size--) {
            Fragment fragment = this.f2200j.get(size);
            if (fragment != null) {
                fragment.performPictureInPictureModeChanged(z);
            }
        }
    }

    public boolean b(@NonNull Menu menu) {
        if (this.t < 1) {
            return false;
        }
        boolean z = false;
        for (int i2 = 0; i2 < this.f2200j.size(); i2++) {
            Fragment fragment = this.f2200j.get(i2);
            if (fragment != null && fragment.performPrepareOptionsMenu(menu)) {
                z = true;
            }
        }
        return z;
    }

    public boolean b(@NonNull MenuItem menuItem) {
        if (this.t < 1) {
            return false;
        }
        for (int i2 = 0; i2 < this.f2200j.size(); i2++) {
            Fragment fragment = this.f2200j.get(i2);
            if (fragment != null && fragment.performOptionsItemSelected(menuItem)) {
                return true;
            }
        }
        return false;
    }

    void b(@NonNull Fragment fragment, @NonNull Context context, boolean z) {
        Fragment fragment2 = this.w;
        if (fragment2 != null) {
            androidx.fragment.app.g fragmentManager = fragment2.getFragmentManager();
            if (fragmentManager instanceof h) {
                ((h) fragmentManager).b(fragment, context, true);
            }
        }
        Iterator<i> it = this.s.iterator();
        while (it.hasNext()) {
            i next = it.next();
            if (!z || next.f2225b) {
                next.f2224a.b(this, fragment, context);
            }
        }
    }

    static g a(float f2, float f3, float f4, float f5) {
        AnimationSet animationSet = new AnimationSet(false);
        ScaleAnimation scaleAnimation = new ScaleAnimation(f2, f3, f2, f3, 1, 0.5f, 1, 0.5f);
        scaleAnimation.setInterpolator(M);
        scaleAnimation.setDuration(220L);
        animationSet.addAnimation(scaleAnimation);
        AlphaAnimation alphaAnimation = new AlphaAnimation(f4, f5);
        alphaAnimation.setInterpolator(N);
        alphaAnimation.setDuration(220L);
        animationSet.addAnimation(alphaAnimation);
        return new g(animationSet);
    }

    void b(@NonNull Fragment fragment, @Nullable Bundle bundle, boolean z) {
        Fragment fragment2 = this.w;
        if (fragment2 != null) {
            androidx.fragment.app.g fragmentManager = fragment2.getFragmentManager();
            if (fragmentManager instanceof h) {
                ((h) fragmentManager).b(fragment, bundle, true);
            }
        }
        Iterator<i> it = this.s.iterator();
        while (it.hasNext()) {
            i next = it.next();
            if (!z || next.f2225b) {
                next.f2224a.b(this, fragment, bundle);
            }
        }
    }

    static g a(float f2, float f3) {
        AlphaAnimation alphaAnimation = new AlphaAnimation(f2, f3);
        alphaAnimation.setInterpolator(N);
        alphaAnimation.setDuration(220L);
        return new g(alphaAnimation);
    }

    void b(@NonNull Fragment fragment, boolean z) {
        Fragment fragment2 = this.w;
        if (fragment2 != null) {
            androidx.fragment.app.g fragmentManager = fragment2.getFragmentManager();
            if (fragmentManager instanceof h) {
                ((h) fragmentManager).b(fragment, true);
            }
        }
        Iterator<i> it = this.s.iterator();
        while (it.hasNext()) {
            i next = it.next();
            if (!z || next.f2225b) {
                next.f2224a.a(this, fragment);
            }
        }
    }

    g a(Fragment fragment, int i2, boolean z, int i3) {
        int b2;
        int nextAnim = fragment.getNextAnim();
        boolean z2 = false;
        fragment.setNextAnim(0);
        ViewGroup viewGroup = fragment.mContainer;
        if (viewGroup != null && viewGroup.getLayoutTransition() != null) {
            return null;
        }
        Animation onCreateAnimation = fragment.onCreateAnimation(i2, z, nextAnim);
        if (onCreateAnimation != null) {
            return new g(onCreateAnimation);
        }
        Animator onCreateAnimator = fragment.onCreateAnimator(i2, z, nextAnim);
        if (onCreateAnimator != null) {
            return new g(onCreateAnimator);
        }
        if (nextAnim != 0) {
            boolean equals = "anim".equals(this.u.c().getResources().getResourceTypeName(nextAnim));
            if (equals) {
                try {
                    Animation loadAnimation = AnimationUtils.loadAnimation(this.u.c(), nextAnim);
                    if (loadAnimation != null) {
                        return new g(loadAnimation);
                    }
                    z2 = true;
                } catch (Resources.NotFoundException e2) {
                    throw e2;
                } catch (RuntimeException unused) {
                }
            }
            if (!z2) {
                try {
                    Animator loadAnimator = AnimatorInflater.loadAnimator(this.u.c(), nextAnim);
                    if (loadAnimator != null) {
                        return new g(loadAnimator);
                    }
                } catch (RuntimeException e3) {
                    if (!equals) {
                        Animation loadAnimation2 = AnimationUtils.loadAnimation(this.u.c(), nextAnim);
                        if (loadAnimation2 != null) {
                            return new g(loadAnimation2);
                        }
                    } else {
                        throw e3;
                    }
                }
            }
        }
        if (i2 == 0 || (b2 = b(i2, z)) < 0) {
            return null;
        }
        switch (b2) {
            case 1:
                return a(1.125f, 1.0f, 0.0f, 1.0f);
            case 2:
                return a(1.0f, 0.975f, 1.0f, 0.0f);
            case 3:
                return a(0.975f, 1.0f, 0.0f, 1.0f);
            case 4:
                return a(1.0f, 1.075f, 1.0f, 0.0f);
            case 5:
                return a(0.0f, 1.0f);
            case 6:
                return a(1.0f, 0.0f);
            default:
                if (i3 == 0 && this.u.h()) {
                    i3 = this.u.g();
                }
                if (i3 == 0) {
                }
                return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0082, code lost:
    
        if (r0 != 3) goto L265;
     */
    /* JADX WARN: Removed duplicated region for block: B:43:0x02e7  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x04ab  */
    /* JADX WARN: Removed duplicated region for block: B:52:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x02c9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(androidx.fragment.app.Fragment r18, int r19, int r20, int r21, boolean r22) {
        /*
            Method dump skipped, instructions count: 1232
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.h.a(androidx.fragment.app.Fragment, int, int, int, boolean):void");
    }

    private void a(@NonNull Fragment fragment, @NonNull g gVar, int i2) {
        View view = fragment.mView;
        ViewGroup viewGroup = fragment.mContainer;
        viewGroup.startViewTransition(view);
        fragment.setStateAfterAnimating(i2);
        Animation animation = gVar.f2217a;
        if (animation != null) {
            RunnableC0040h runnableC0040h = new RunnableC0040h(animation, viewGroup, view);
            fragment.setAnimatingAway(fragment.mView);
            runnableC0040h.setAnimationListener(new c(viewGroup, fragment));
            fragment.mView.startAnimation(runnableC0040h);
            return;
        }
        Animator animator = gVar.f2218b;
        fragment.setAnimator(animator);
        animator.addListener(new d(viewGroup, view, fragment));
        animator.setTarget(fragment.mView);
        animator.start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i2, boolean z) {
        androidx.fragment.app.f fVar;
        if (this.u == null && i2 != 0) {
            throw new IllegalStateException("No activity");
        }
        if (z || i2 != this.t) {
            this.t = i2;
            int size = this.f2200j.size();
            for (int i3 = 0; i3 < size; i3++) {
                l(this.f2200j.get(i3));
            }
            for (Fragment fragment : this.f2201k.values()) {
                if (fragment != null && (fragment.mRemoving || fragment.mDetached)) {
                    if (!fragment.mIsNewlyAdded) {
                        l(fragment);
                    }
                }
            }
            D();
            if (this.y && (fVar = this.u) != null && this.t == 4) {
                fVar.i();
                this.y = false;
            }
        }
    }

    public void a(Fragment fragment, boolean z) {
        if (L) {
            String str = "add: " + fragment;
        }
        j(fragment);
        if (fragment.mDetached) {
            return;
        }
        if (!this.f2200j.contains(fragment)) {
            synchronized (this.f2200j) {
                this.f2200j.add(fragment);
            }
            fragment.mAdded = true;
            fragment.mRemoving = false;
            if (fragment.mView == null) {
                fragment.mHiddenChanged = false;
            }
            if (w(fragment)) {
                this.y = true;
            }
            if (z) {
                m(fragment);
                return;
            }
            return;
        }
        throw new IllegalStateException("Fragment already added: " + fragment);
    }

    @Override // androidx.fragment.app.g
    @Nullable
    public Fragment a(int i2) {
        for (int size = this.f2200j.size() - 1; size >= 0; size--) {
            Fragment fragment = this.f2200j.get(size);
            if (fragment != null && fragment.mFragmentId == i2) {
                return fragment;
            }
        }
        for (Fragment fragment2 : this.f2201k.values()) {
            if (fragment2 != null && fragment2.mFragmentId == i2) {
                return fragment2;
            }
        }
        return null;
    }

    @Override // androidx.fragment.app.g
    @Nullable
    public Fragment a(@Nullable String str) {
        if (str != null) {
            for (int size = this.f2200j.size() - 1; size >= 0; size--) {
                Fragment fragment = this.f2200j.get(size);
                if (fragment != null && str.equals(fragment.mTag)) {
                    return fragment;
                }
            }
        }
        if (str == null) {
            return null;
        }
        for (Fragment fragment2 : this.f2201k.values()) {
            if (fragment2 != null && str.equals(fragment2.mTag)) {
                return fragment2;
            }
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0027, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(androidx.fragment.app.h.k r2, boolean r3) {
        /*
            r1 = this;
            if (r3 != 0) goto L5
            r1.F()
        L5:
            monitor-enter(r1)
            boolean r0 = r1.B     // Catch: java.lang.Throwable -> L30
            if (r0 != 0) goto L24
            androidx.fragment.app.f r0 = r1.u     // Catch: java.lang.Throwable -> L30
            if (r0 != 0) goto Lf
            goto L24
        Lf:
            java.util.ArrayList<androidx.fragment.app.h$k> r3 = r1.f2197g     // Catch: java.lang.Throwable -> L30
            if (r3 != 0) goto L1a
            java.util.ArrayList r3 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L30
            r3.<init>()     // Catch: java.lang.Throwable -> L30
            r1.f2197g = r3     // Catch: java.lang.Throwable -> L30
        L1a:
            java.util.ArrayList<androidx.fragment.app.h$k> r3 = r1.f2197g     // Catch: java.lang.Throwable -> L30
            r3.add(r2)     // Catch: java.lang.Throwable -> L30
            r1.C()     // Catch: java.lang.Throwable -> L30
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L30
            return
        L24:
            if (r3 == 0) goto L28
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L30
            return
        L28:
            java.lang.IllegalStateException r2 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L30
            java.lang.String r3 = "Activity has been destroyed"
            r2.<init>(r3)     // Catch: java.lang.Throwable -> L30
            throw r2     // Catch: java.lang.Throwable -> L30
        L30:
            r2 = move-exception
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L30
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.h.a(androidx.fragment.app.h$k, boolean):void");
    }

    public void a(int i2, androidx.fragment.app.a aVar) {
        synchronized (this) {
            if (this.p == null) {
                this.p = new ArrayList<>();
            }
            int size = this.p.size();
            if (i2 < size) {
                if (L) {
                    String str = "Setting back stack index " + i2 + " to " + aVar;
                }
                this.p.set(i2, aVar);
            } else {
                while (size < i2) {
                    this.p.add(null);
                    if (this.q == null) {
                        this.q = new ArrayList<>();
                    }
                    if (L) {
                        String str2 = "Adding available back stack index " + size;
                    }
                    this.q.add(Integer.valueOf(size));
                    size++;
                }
                if (L) {
                    String str3 = "Adding back stack index " + i2 + " with " + aVar;
                }
                this.p.add(aVar);
            }
        }
    }

    private void a(ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2) {
        int indexOf;
        int indexOf2;
        ArrayList<m> arrayList3 = this.I;
        int size = arrayList3 == null ? 0 : arrayList3.size();
        int i2 = 0;
        while (i2 < size) {
            m mVar = this.I.get(i2);
            if (arrayList != null && !mVar.f2231a && (indexOf2 = arrayList.indexOf(mVar.f2232b)) != -1 && arrayList2.get(indexOf2).booleanValue()) {
                this.I.remove(i2);
                i2--;
                size--;
                mVar.c();
            } else if (mVar.e() || (arrayList != null && mVar.f2232b.a(arrayList, 0, arrayList.size()))) {
                this.I.remove(i2);
                i2--;
                size--;
                if (arrayList != null && !mVar.f2231a && (indexOf = arrayList.indexOf(mVar.f2232b)) != -1 && arrayList2.get(indexOf).booleanValue()) {
                    mVar.c();
                } else {
                    mVar.d();
                }
            }
            i2++;
        }
    }

    private int a(ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2, int i2, int i3, a.e.b<Fragment> bVar) {
        int i4 = i3;
        for (int i5 = i3 - 1; i5 >= i2; i5--) {
            androidx.fragment.app.a aVar = arrayList.get(i5);
            boolean booleanValue = arrayList2.get(i5).booleanValue();
            if (aVar.e() && !aVar.a(arrayList, i5 + 1, i3)) {
                if (this.I == null) {
                    this.I = new ArrayList<>();
                }
                m mVar = new m(aVar, booleanValue);
                this.I.add(mVar);
                aVar.a(mVar);
                if (booleanValue) {
                    aVar.c();
                } else {
                    aVar.b(false);
                }
                i4--;
                if (i5 != i4) {
                    arrayList.remove(i5);
                    arrayList.add(i4, aVar);
                }
                a(bVar);
            }
        }
        return i4;
    }

    void a(androidx.fragment.app.a aVar, boolean z, boolean z2, boolean z3) {
        if (z) {
            aVar.b(z3);
        } else {
            aVar.c();
        }
        ArrayList arrayList = new ArrayList(1);
        ArrayList arrayList2 = new ArrayList(1);
        arrayList.add(aVar);
        arrayList2.add(Boolean.valueOf(z));
        if (z2) {
            androidx.fragment.app.k.a(this, (ArrayList<androidx.fragment.app.a>) arrayList, (ArrayList<Boolean>) arrayList2, 0, 1, true);
        }
        if (z3) {
            a(this.t, true);
        }
        for (Fragment fragment : this.f2201k.values()) {
            if (fragment != null && fragment.mView != null && fragment.mIsNewlyAdded && aVar.b(fragment.mContainerId)) {
                float f2 = fragment.mPostponedAlpha;
                if (f2 > 0.0f) {
                    fragment.mView.setAlpha(f2);
                }
                if (z3) {
                    fragment.mPostponedAlpha = 0.0f;
                } else {
                    fragment.mPostponedAlpha = -1.0f;
                    fragment.mIsNewlyAdded = false;
                }
            }
        }
    }

    private static void a(ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2, int i2, int i3) {
        while (i2 < i3) {
            androidx.fragment.app.a aVar = arrayList.get(i2);
            if (arrayList2.get(i2).booleanValue()) {
                aVar.a(-1);
                aVar.b(i2 == i3 + (-1));
            } else {
                aVar.a(1);
                aVar.c();
            }
            i2++;
        }
    }

    private void a(a.e.b<Fragment> bVar) {
        int i2 = this.t;
        if (i2 < 1) {
            return;
        }
        int min = Math.min(i2, 3);
        int size = this.f2200j.size();
        for (int i3 = 0; i3 < size; i3++) {
            Fragment fragment = this.f2200j.get(i3);
            if (fragment.mState < min) {
                a(fragment, min, fragment.getNextAnim(), fragment.getNextTransition(), false);
                if (fragment.mView != null && !fragment.mHidden && fragment.mIsNewlyAdded) {
                    bVar.add(fragment);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(androidx.fragment.app.a aVar) {
        if (this.f2202l == null) {
            this.f2202l = new ArrayList<>();
        }
        this.f2202l.add(aVar);
    }

    boolean a(ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2, String str, int i2, int i3) {
        int size;
        ArrayList<androidx.fragment.app.a> arrayList3 = this.f2202l;
        if (arrayList3 == null) {
            return false;
        }
        if (str == null && i2 < 0 && (i3 & 1) == 0) {
            int size2 = arrayList3.size() - 1;
            if (size2 < 0) {
                return false;
            }
            arrayList.add(this.f2202l.remove(size2));
            arrayList2.add(true);
        } else {
            if (str != null || i2 >= 0) {
                size = this.f2202l.size() - 1;
                while (size >= 0) {
                    androidx.fragment.app.a aVar = this.f2202l.get(size);
                    if ((str != null && str.equals(aVar.d())) || (i2 >= 0 && i2 == aVar.u)) {
                        break;
                    }
                    size--;
                }
                if (size < 0) {
                    return false;
                }
                if ((i3 & 1) != 0) {
                    while (true) {
                        size--;
                        if (size < 0) {
                            break;
                        }
                        androidx.fragment.app.a aVar2 = this.f2202l.get(size);
                        if (str == null || !str.equals(aVar2.d())) {
                            if (i2 < 0 || i2 != aVar2.u) {
                                break;
                            }
                        }
                    }
                }
            } else {
                size = -1;
            }
            if (size == this.f2202l.size() - 1) {
                return false;
            }
            for (int size3 = this.f2202l.size() - 1; size3 > size; size3--) {
                arrayList.add(this.f2202l.remove(size3));
                arrayList2.add(true);
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Parcelable parcelable) {
        FragmentState fragmentState;
        if (parcelable == null) {
            return;
        }
        FragmentManagerState fragmentManagerState = (FragmentManagerState) parcelable;
        if (fragmentManagerState.f2152e == null) {
            return;
        }
        for (Fragment fragment : this.J.c()) {
            if (L) {
                String str = "restoreSaveState: re-attaching retained " + fragment;
            }
            Iterator<FragmentState> it = fragmentManagerState.f2152e.iterator();
            while (true) {
                if (it.hasNext()) {
                    fragmentState = it.next();
                    if (fragmentState.f2158f.equals(fragment.mWho)) {
                        break;
                    }
                } else {
                    fragmentState = null;
                    break;
                }
            }
            if (fragmentState == null) {
                if (L) {
                    String str2 = "Discarding retained Fragment " + fragment + " that was not found in the set of active Fragments " + fragmentManagerState.f2152e;
                }
                a(fragment, 1, 0, 0, false);
                fragment.mRemoving = true;
                a(fragment, 0, 0, 0, false);
            } else {
                fragmentState.r = fragment;
                fragment.mSavedViewState = null;
                fragment.mBackStackNesting = 0;
                fragment.mInLayout = false;
                fragment.mAdded = false;
                Fragment fragment2 = fragment.mTarget;
                fragment.mTargetWho = fragment2 != null ? fragment2.mWho : null;
                fragment.mTarget = null;
                Bundle bundle = fragmentState.q;
                if (bundle != null) {
                    bundle.setClassLoader(this.u.c().getClassLoader());
                    fragment.mSavedViewState = fragmentState.q.getSparseParcelableArray("android:view_state");
                    fragment.mSavedFragmentState = fragmentState.q;
                }
            }
        }
        this.f2201k.clear();
        Iterator<FragmentState> it2 = fragmentManagerState.f2152e.iterator();
        while (it2.hasNext()) {
            FragmentState next = it2.next();
            if (next != null) {
                Fragment a2 = next.a(this.u.c().getClassLoader(), d());
                a2.mFragmentManager = this;
                if (L) {
                    String str3 = "restoreSaveState: active (" + a2.mWho + "): " + a2;
                }
                this.f2201k.put(a2.mWho, a2);
                next.r = null;
            }
        }
        this.f2200j.clear();
        ArrayList<String> arrayList = fragmentManagerState.f2153f;
        if (arrayList != null) {
            Iterator<String> it3 = arrayList.iterator();
            while (it3.hasNext()) {
                String next2 = it3.next();
                Fragment fragment3 = this.f2201k.get(next2);
                if (fragment3 != null) {
                    fragment3.mAdded = true;
                    if (L) {
                        String str4 = "restoreSaveState: added (" + next2 + "): " + fragment3;
                    }
                    if (!this.f2200j.contains(fragment3)) {
                        synchronized (this.f2200j) {
                            this.f2200j.add(fragment3);
                        }
                    } else {
                        throw new IllegalStateException("Already added " + fragment3);
                    }
                } else {
                    a(new IllegalStateException("No instantiated fragment for (" + next2 + ")"));
                    throw null;
                }
            }
        }
        BackStackState[] backStackStateArr = fragmentManagerState.f2154g;
        if (backStackStateArr != null) {
            this.f2202l = new ArrayList<>(backStackStateArr.length);
            int i2 = 0;
            while (true) {
                BackStackState[] backStackStateArr2 = fragmentManagerState.f2154g;
                if (i2 >= backStackStateArr2.length) {
                    break;
                }
                androidx.fragment.app.a a3 = backStackStateArr2[i2].a(this);
                if (L) {
                    String str5 = "restoreAllState: back stack #" + i2 + " (index " + a3.u + "): " + a3;
                    PrintWriter printWriter = new PrintWriter(new a.i.m.c("FragmentManager"));
                    a3.a("  ", printWriter, false);
                    printWriter.close();
                }
                this.f2202l.add(a3);
                int i3 = a3.u;
                if (i3 >= 0) {
                    a(i3, a3);
                }
                i2++;
            }
        } else {
            this.f2202l = null;
        }
        String str6 = fragmentManagerState.f2155h;
        if (str6 != null) {
            this.x = this.f2201k.get(str6);
            u(this.x);
        }
        this.f2199i = fragmentManagerState.f2156i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void a(@NonNull androidx.fragment.app.f fVar, @NonNull androidx.fragment.app.c cVar, @Nullable Fragment fragment) {
        if (this.u == null) {
            this.u = fVar;
            this.v = cVar;
            this.w = fragment;
            if (this.w != null) {
                J();
            }
            if (fVar instanceof androidx.activity.c) {
                androidx.activity.c cVar2 = (androidx.activity.c) fVar;
                this.n = cVar2.getOnBackPressedDispatcher();
                Fragment fragment2 = cVar2;
                if (fragment != null) {
                    fragment2 = fragment;
                }
                this.n.a(fragment2, this.o);
            }
            if (fragment != null) {
                this.J = fragment.mFragmentManager.f(fragment);
                return;
            } else if (fVar instanceof s) {
                this.J = androidx.fragment.app.i.a(((s) fVar).getViewModelStore());
                return;
            } else {
                this.J = new androidx.fragment.app.i(false);
                return;
            }
        }
        throw new IllegalStateException("Already attached");
    }

    public void a(boolean z) {
        for (int size = this.f2200j.size() - 1; size >= 0; size--) {
            Fragment fragment = this.f2200j.get(size);
            if (fragment != null) {
                fragment.performMultiWindowModeChanged(z);
            }
        }
    }

    public void a(@NonNull Configuration configuration) {
        for (int i2 = 0; i2 < this.f2200j.size(); i2++) {
            Fragment fragment = this.f2200j.get(i2);
            if (fragment != null) {
                fragment.performConfigurationChanged(configuration);
            }
        }
    }

    public boolean a(@NonNull Menu menu, @NonNull MenuInflater menuInflater) {
        if (this.t < 1) {
            return false;
        }
        ArrayList<Fragment> arrayList = null;
        boolean z = false;
        for (int i2 = 0; i2 < this.f2200j.size(); i2++) {
            Fragment fragment = this.f2200j.get(i2);
            if (fragment != null && fragment.performCreateOptionsMenu(menu, menuInflater)) {
                if (arrayList == null) {
                    arrayList = new ArrayList<>();
                }
                arrayList.add(fragment);
                z = true;
            }
        }
        if (this.m != null) {
            for (int i3 = 0; i3 < this.m.size(); i3++) {
                Fragment fragment2 = this.m.get(i3);
                if (arrayList == null || !arrayList.contains(fragment2)) {
                    fragment2.onDestroyOptionsMenu();
                }
            }
        }
        this.m = arrayList;
        return z;
    }

    public boolean a(@NonNull MenuItem menuItem) {
        if (this.t < 1) {
            return false;
        }
        for (int i2 = 0; i2 < this.f2200j.size(); i2++) {
            Fragment fragment = this.f2200j.get(i2);
            if (fragment != null && fragment.performContextItemSelected(menuItem)) {
                return true;
            }
        }
        return false;
    }

    public void a(@NonNull Menu menu) {
        if (this.t < 1) {
            return;
        }
        for (int i2 = 0; i2 < this.f2200j.size(); i2++) {
            Fragment fragment = this.f2200j.get(i2);
            if (fragment != null) {
                fragment.performOptionsMenuClosed(menu);
            }
        }
    }

    public void a(Fragment fragment, e.b bVar) {
        if (this.f2201k.get(fragment.mWho) == fragment && (fragment.mHost == null || fragment.getFragmentManager() == this)) {
            fragment.mMaxState = bVar;
            return;
        }
        throw new IllegalArgumentException("Fragment " + fragment + " is not an active fragment of FragmentManager " + this);
    }

    void a(@NonNull Fragment fragment, @NonNull Context context, boolean z) {
        Fragment fragment2 = this.w;
        if (fragment2 != null) {
            androidx.fragment.app.g fragmentManager = fragment2.getFragmentManager();
            if (fragmentManager instanceof h) {
                ((h) fragmentManager).a(fragment, context, true);
            }
        }
        Iterator<i> it = this.s.iterator();
        while (it.hasNext()) {
            i next = it.next();
            if (!z || next.f2225b) {
                next.f2224a.a(this, fragment, context);
            }
        }
    }

    void a(@NonNull Fragment fragment, @Nullable Bundle bundle, boolean z) {
        Fragment fragment2 = this.w;
        if (fragment2 != null) {
            androidx.fragment.app.g fragmentManager = fragment2.getFragmentManager();
            if (fragmentManager instanceof h) {
                ((h) fragmentManager).a(fragment, bundle, true);
            }
        }
        Iterator<i> it = this.s.iterator();
        while (it.hasNext()) {
            i next = it.next();
            if (!z || next.f2225b) {
                next.f2224a.a(this, fragment, bundle);
            }
        }
    }

    void a(@NonNull Fragment fragment, @NonNull View view, @Nullable Bundle bundle, boolean z) {
        Fragment fragment2 = this.w;
        if (fragment2 != null) {
            androidx.fragment.app.g fragmentManager = fragment2.getFragmentManager();
            if (fragmentManager instanceof h) {
                ((h) fragmentManager).a(fragment, view, bundle, true);
            }
        }
        Iterator<i> it = this.s.iterator();
        while (it.hasNext()) {
            i next = it.next();
            if (!z || next.f2225b) {
                next.f2224a.a(this, fragment, view, bundle);
            }
        }
    }
}
