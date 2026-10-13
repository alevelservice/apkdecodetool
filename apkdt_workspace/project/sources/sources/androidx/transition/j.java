package androidx.transition;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: TransitionManager.java */
/* loaded from: classes.dex */
public class j {

    /* renamed from: a, reason: collision with root package name */
    private static Transition f2972a = new AutoTransition();

    /* renamed from: b, reason: collision with root package name */
    private static ThreadLocal<WeakReference<a.e.a<ViewGroup, ArrayList<Transition>>>> f2973b = new ThreadLocal<>();

    /* renamed from: c, reason: collision with root package name */
    static ArrayList<ViewGroup> f2974c = new ArrayList<>();

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: TransitionManager.java */
    /* loaded from: classes.dex */
    public static class a implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener {

        /* renamed from: e, reason: collision with root package name */
        Transition f2975e;

        /* renamed from: f, reason: collision with root package name */
        ViewGroup f2976f;

        /* compiled from: TransitionManager.java */
        /* renamed from: androidx.transition.j$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        class C0053a extends i {

            /* renamed from: e, reason: collision with root package name */
            final /* synthetic */ a.e.a f2977e;

            C0053a(a.e.a aVar) {
                this.f2977e = aVar;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // androidx.transition.Transition.f
            public void c(@NonNull Transition transition) {
                ((ArrayList) this.f2977e.get(a.this.f2976f)).remove(transition);
            }
        }

        a(Transition transition, ViewGroup viewGroup) {
            this.f2975e = transition;
            this.f2976f = viewGroup;
        }

        private void a() {
            this.f2976f.getViewTreeObserver().removeOnPreDrawListener(this);
            this.f2976f.removeOnAttachStateChangeListener(this);
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            a();
            if (!j.f2974c.remove(this.f2976f)) {
                return true;
            }
            a.e.a<ViewGroup, ArrayList<Transition>> a2 = j.a();
            ArrayList<Transition> arrayList = a2.get(this.f2976f);
            ArrayList arrayList2 = null;
            if (arrayList == null) {
                arrayList = new ArrayList<>();
                a2.put(this.f2976f, arrayList);
            } else if (arrayList.size() > 0) {
                arrayList2 = new ArrayList(arrayList);
            }
            arrayList.add(this.f2975e);
            this.f2975e.a(new C0053a(a2));
            this.f2975e.a(this.f2976f, false);
            if (arrayList2 != null) {
                Iterator it = arrayList2.iterator();
                while (it.hasNext()) {
                    ((Transition) it.next()).e(this.f2976f);
                }
            }
            this.f2975e.a(this.f2976f);
            return true;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            a();
            j.f2974c.remove(this.f2976f);
            ArrayList<Transition> arrayList = j.a().get(this.f2976f);
            if (arrayList != null && arrayList.size() > 0) {
                Iterator<Transition> it = arrayList.iterator();
                while (it.hasNext()) {
                    it.next().e(this.f2976f);
                }
            }
            this.f2975e.a(true);
        }
    }

    static a.e.a<ViewGroup, ArrayList<Transition>> a() {
        a.e.a<ViewGroup, ArrayList<Transition>> aVar;
        WeakReference<a.e.a<ViewGroup, ArrayList<Transition>>> weakReference = f2973b.get();
        if (weakReference != null && (aVar = weakReference.get()) != null) {
            return aVar;
        }
        a.e.a<ViewGroup, ArrayList<Transition>> aVar2 = new a.e.a<>();
        f2973b.set(new WeakReference<>(aVar2));
        return aVar2;
    }

    private static void b(ViewGroup viewGroup, Transition transition) {
        if (transition == null || viewGroup == null) {
            return;
        }
        a aVar = new a(transition, viewGroup);
        viewGroup.addOnAttachStateChangeListener(aVar);
        viewGroup.getViewTreeObserver().addOnPreDrawListener(aVar);
    }

    private static void c(ViewGroup viewGroup, Transition transition) {
        ArrayList<Transition> arrayList = a().get(viewGroup);
        if (arrayList != null && arrayList.size() > 0) {
            Iterator<Transition> it = arrayList.iterator();
            while (it.hasNext()) {
                it.next().c(viewGroup);
            }
        }
        if (transition != null) {
            transition.a(viewGroup, true);
        }
        h a2 = h.a(viewGroup);
        if (a2 != null) {
            a2.a();
        }
    }

    public static void a(@NonNull ViewGroup viewGroup, @Nullable Transition transition) {
        if (f2974c.contains(viewGroup) || !ViewCompat.D(viewGroup)) {
            return;
        }
        f2974c.add(viewGroup);
        if (transition == null) {
            transition = f2972a;
        }
        Transition mo4clone = transition.mo4clone();
        c(viewGroup, mo4clone);
        h.a(viewGroup, null);
        b(viewGroup, mo4clone);
    }
}
