package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.annotation.NonNull;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: DefaultItemAnimator.java */
/* loaded from: classes.dex */
public class c extends m {
    private static TimeInterpolator s;

    /* renamed from: h, reason: collision with root package name */
    private ArrayList<RecyclerView.z> f2706h = new ArrayList<>();

    /* renamed from: i, reason: collision with root package name */
    private ArrayList<RecyclerView.z> f2707i = new ArrayList<>();

    /* renamed from: j, reason: collision with root package name */
    private ArrayList<j> f2708j = new ArrayList<>();

    /* renamed from: k, reason: collision with root package name */
    private ArrayList<i> f2709k = new ArrayList<>();

    /* renamed from: l, reason: collision with root package name */
    ArrayList<ArrayList<RecyclerView.z>> f2710l = new ArrayList<>();
    ArrayList<ArrayList<j>> m = new ArrayList<>();
    ArrayList<ArrayList<i>> n = new ArrayList<>();
    ArrayList<RecyclerView.z> o = new ArrayList<>();
    ArrayList<RecyclerView.z> p = new ArrayList<>();
    ArrayList<RecyclerView.z> q = new ArrayList<>();
    ArrayList<RecyclerView.z> r = new ArrayList<>();

    /* compiled from: DefaultItemAnimator.java */
    /* loaded from: classes.dex */
    class a implements Runnable {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ ArrayList f2711e;

        a(ArrayList arrayList) {
            this.f2711e = arrayList;
        }

        @Override // java.lang.Runnable
        public void run() {
            Iterator it = this.f2711e.iterator();
            while (it.hasNext()) {
                j jVar = (j) it.next();
                c.this.b(jVar.f2745a, jVar.f2746b, jVar.f2747c, jVar.f2748d, jVar.f2749e);
            }
            this.f2711e.clear();
            c.this.m.remove(this.f2711e);
        }
    }

    /* compiled from: DefaultItemAnimator.java */
    /* loaded from: classes.dex */
    class b implements Runnable {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ ArrayList f2713e;

        b(ArrayList arrayList) {
            this.f2713e = arrayList;
        }

        @Override // java.lang.Runnable
        public void run() {
            Iterator it = this.f2713e.iterator();
            while (it.hasNext()) {
                c.this.a((i) it.next());
            }
            this.f2713e.clear();
            c.this.n.remove(this.f2713e);
        }
    }

    /* compiled from: DefaultItemAnimator.java */
    /* renamed from: androidx.recyclerview.widget.c$c, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    class RunnableC0048c implements Runnable {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ ArrayList f2715e;

        RunnableC0048c(ArrayList arrayList) {
            this.f2715e = arrayList;
        }

        @Override // java.lang.Runnable
        public void run() {
            Iterator it = this.f2715e.iterator();
            while (it.hasNext()) {
                c.this.t((RecyclerView.z) it.next());
            }
            this.f2715e.clear();
            c.this.f2710l.remove(this.f2715e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DefaultItemAnimator.java */
    /* loaded from: classes.dex */
    public class d extends AnimatorListenerAdapter {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ RecyclerView.z f2717e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ ViewPropertyAnimator f2718f;

        /* renamed from: g, reason: collision with root package name */
        final /* synthetic */ View f2719g;

        d(RecyclerView.z zVar, ViewPropertyAnimator viewPropertyAnimator, View view) {
            this.f2717e = zVar;
            this.f2718f = viewPropertyAnimator;
            this.f2719g = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f2718f.setListener(null);
            this.f2719g.setAlpha(1.0f);
            c.this.l(this.f2717e);
            c.this.q.remove(this.f2717e);
            c.this.j();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            c.this.m(this.f2717e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DefaultItemAnimator.java */
    /* loaded from: classes.dex */
    public class e extends AnimatorListenerAdapter {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ RecyclerView.z f2721e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ View f2722f;

        /* renamed from: g, reason: collision with root package name */
        final /* synthetic */ ViewPropertyAnimator f2723g;

        e(RecyclerView.z zVar, View view, ViewPropertyAnimator viewPropertyAnimator) {
            this.f2721e = zVar;
            this.f2722f = view;
            this.f2723g = viewPropertyAnimator;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f2722f.setAlpha(1.0f);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f2723g.setListener(null);
            c.this.h(this.f2721e);
            c.this.o.remove(this.f2721e);
            c.this.j();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            c.this.i(this.f2721e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DefaultItemAnimator.java */
    /* loaded from: classes.dex */
    public class f extends AnimatorListenerAdapter {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ RecyclerView.z f2725e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ int f2726f;

        /* renamed from: g, reason: collision with root package name */
        final /* synthetic */ View f2727g;

        /* renamed from: h, reason: collision with root package name */
        final /* synthetic */ int f2728h;

        /* renamed from: i, reason: collision with root package name */
        final /* synthetic */ ViewPropertyAnimator f2729i;

        f(RecyclerView.z zVar, int i2, View view, int i3, ViewPropertyAnimator viewPropertyAnimator) {
            this.f2725e = zVar;
            this.f2726f = i2;
            this.f2727g = view;
            this.f2728h = i3;
            this.f2729i = viewPropertyAnimator;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            if (this.f2726f != 0) {
                this.f2727g.setTranslationX(0.0f);
            }
            if (this.f2728h != 0) {
                this.f2727g.setTranslationY(0.0f);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f2729i.setListener(null);
            c.this.j(this.f2725e);
            c.this.p.remove(this.f2725e);
            c.this.j();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            c.this.k(this.f2725e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DefaultItemAnimator.java */
    /* loaded from: classes.dex */
    public class g extends AnimatorListenerAdapter {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ i f2731e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ ViewPropertyAnimator f2732f;

        /* renamed from: g, reason: collision with root package name */
        final /* synthetic */ View f2733g;

        g(i iVar, ViewPropertyAnimator viewPropertyAnimator, View view) {
            this.f2731e = iVar;
            this.f2732f = viewPropertyAnimator;
            this.f2733g = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f2732f.setListener(null);
            this.f2733g.setAlpha(1.0f);
            this.f2733g.setTranslationX(0.0f);
            this.f2733g.setTranslationY(0.0f);
            c.this.a(this.f2731e.f2739a, true);
            c.this.r.remove(this.f2731e.f2739a);
            c.this.j();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            c.this.b(this.f2731e.f2739a, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DefaultItemAnimator.java */
    /* loaded from: classes.dex */
    public class h extends AnimatorListenerAdapter {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ i f2735e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ ViewPropertyAnimator f2736f;

        /* renamed from: g, reason: collision with root package name */
        final /* synthetic */ View f2737g;

        h(i iVar, ViewPropertyAnimator viewPropertyAnimator, View view) {
            this.f2735e = iVar;
            this.f2736f = viewPropertyAnimator;
            this.f2737g = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f2736f.setListener(null);
            this.f2737g.setAlpha(1.0f);
            this.f2737g.setTranslationX(0.0f);
            this.f2737g.setTranslationY(0.0f);
            c.this.a(this.f2735e.f2740b, false);
            c.this.r.remove(this.f2735e.f2740b);
            c.this.j();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            c.this.b(this.f2735e.f2740b, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DefaultItemAnimator.java */
    /* loaded from: classes.dex */
    public static class j {

        /* renamed from: a, reason: collision with root package name */
        public RecyclerView.z f2745a;

        /* renamed from: b, reason: collision with root package name */
        public int f2746b;

        /* renamed from: c, reason: collision with root package name */
        public int f2747c;

        /* renamed from: d, reason: collision with root package name */
        public int f2748d;

        /* renamed from: e, reason: collision with root package name */
        public int f2749e;

        j(RecyclerView.z zVar, int i2, int i3, int i4, int i5) {
            this.f2745a = zVar;
            this.f2746b = i2;
            this.f2747c = i3;
            this.f2748d = i4;
            this.f2749e = i5;
        }
    }

    private void u(RecyclerView.z zVar) {
        View view = zVar.f2640a;
        ViewPropertyAnimator animate = view.animate();
        this.q.add(zVar);
        animate.setDuration(f()).alpha(0.0f).setListener(new d(zVar, animate, view)).start();
    }

    private void v(RecyclerView.z zVar) {
        if (s == null) {
            s = new ValueAnimator().getInterpolator();
        }
        zVar.f2640a.animate().setInterpolator(s);
        c(zVar);
    }

    @Override // androidx.recyclerview.widget.m
    public boolean a(RecyclerView.z zVar, int i2, int i3, int i4, int i5) {
        View view = zVar.f2640a;
        int translationX = i2 + ((int) view.getTranslationX());
        int translationY = i3 + ((int) zVar.f2640a.getTranslationY());
        v(zVar);
        int i6 = i4 - translationX;
        int i7 = i5 - translationY;
        if (i6 == 0 && i7 == 0) {
            j(zVar);
            return false;
        }
        if (i6 != 0) {
            view.setTranslationX(-i6);
        }
        if (i7 != 0) {
            view.setTranslationY(-i7);
        }
        this.f2708j.add(new j(zVar, translationX, translationY, i4, i5));
        return true;
    }

    void b(RecyclerView.z zVar, int i2, int i3, int i4, int i5) {
        View view = zVar.f2640a;
        int i6 = i4 - i2;
        int i7 = i5 - i3;
        if (i6 != 0) {
            view.animate().translationX(0.0f);
        }
        if (i7 != 0) {
            view.animate().translationY(0.0f);
        }
        ViewPropertyAnimator animate = view.animate();
        this.p.add(zVar);
        animate.setDuration(e()).setListener(new f(zVar, i6, view, i7, animate)).start();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemAnimator
    public void c(RecyclerView.z zVar) {
        View view = zVar.f2640a;
        view.animate().cancel();
        int size = this.f2708j.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            if (this.f2708j.get(size).f2745a == zVar) {
                view.setTranslationY(0.0f);
                view.setTranslationX(0.0f);
                j(zVar);
                this.f2708j.remove(size);
            }
        }
        a(this.f2709k, zVar);
        if (this.f2706h.remove(zVar)) {
            view.setAlpha(1.0f);
            l(zVar);
        }
        if (this.f2707i.remove(zVar)) {
            view.setAlpha(1.0f);
            h(zVar);
        }
        for (int size2 = this.n.size() - 1; size2 >= 0; size2--) {
            ArrayList<i> arrayList = this.n.get(size2);
            a(arrayList, zVar);
            if (arrayList.isEmpty()) {
                this.n.remove(size2);
            }
        }
        for (int size3 = this.m.size() - 1; size3 >= 0; size3--) {
            ArrayList<j> arrayList2 = this.m.get(size3);
            int size4 = arrayList2.size() - 1;
            while (true) {
                if (size4 < 0) {
                    break;
                }
                if (arrayList2.get(size4).f2745a == zVar) {
                    view.setTranslationY(0.0f);
                    view.setTranslationX(0.0f);
                    j(zVar);
                    arrayList2.remove(size4);
                    if (arrayList2.isEmpty()) {
                        this.m.remove(size3);
                    }
                } else {
                    size4--;
                }
            }
        }
        for (int size5 = this.f2710l.size() - 1; size5 >= 0; size5--) {
            ArrayList<RecyclerView.z> arrayList3 = this.f2710l.get(size5);
            if (arrayList3.remove(zVar)) {
                view.setAlpha(1.0f);
                h(zVar);
                if (arrayList3.isEmpty()) {
                    this.f2710l.remove(size5);
                }
            }
        }
        this.q.remove(zVar);
        this.o.remove(zVar);
        this.r.remove(zVar);
        this.p.remove(zVar);
        j();
    }

    @Override // androidx.recyclerview.widget.m
    public boolean f(RecyclerView.z zVar) {
        v(zVar);
        zVar.f2640a.setAlpha(0.0f);
        this.f2707i.add(zVar);
        return true;
    }

    @Override // androidx.recyclerview.widget.m
    public boolean g(RecyclerView.z zVar) {
        v(zVar);
        this.f2706h.add(zVar);
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemAnimator
    public void i() {
        boolean z = !this.f2706h.isEmpty();
        boolean z2 = !this.f2708j.isEmpty();
        boolean z3 = !this.f2709k.isEmpty();
        boolean z4 = !this.f2707i.isEmpty();
        if (z || z2 || z4 || z3) {
            Iterator<RecyclerView.z> it = this.f2706h.iterator();
            while (it.hasNext()) {
                u(it.next());
            }
            this.f2706h.clear();
            if (z2) {
                ArrayList<j> arrayList = new ArrayList<>();
                arrayList.addAll(this.f2708j);
                this.m.add(arrayList);
                this.f2708j.clear();
                a aVar = new a(arrayList);
                if (z) {
                    ViewCompat.a(arrayList.get(0).f2745a.f2640a, aVar, f());
                } else {
                    aVar.run();
                }
            }
            if (z3) {
                ArrayList<i> arrayList2 = new ArrayList<>();
                arrayList2.addAll(this.f2709k);
                this.n.add(arrayList2);
                this.f2709k.clear();
                b bVar = new b(arrayList2);
                if (z) {
                    ViewCompat.a(arrayList2.get(0).f2739a.f2640a, bVar, f());
                } else {
                    bVar.run();
                }
            }
            if (z4) {
                ArrayList<RecyclerView.z> arrayList3 = new ArrayList<>();
                arrayList3.addAll(this.f2707i);
                this.f2710l.add(arrayList3);
                this.f2707i.clear();
                RunnableC0048c runnableC0048c = new RunnableC0048c(arrayList3);
                if (!z && !z2 && !z3) {
                    runnableC0048c.run();
                } else {
                    ViewCompat.a(arrayList3.get(0).f2640a, runnableC0048c, (z ? f() : 0L) + Math.max(z2 ? e() : 0L, z3 ? d() : 0L));
                }
            }
        }
    }

    void j() {
        if (g()) {
            return;
        }
        a();
    }

    void t(RecyclerView.z zVar) {
        View view = zVar.f2640a;
        ViewPropertyAnimator animate = view.animate();
        this.o.add(zVar);
        animate.alpha(1.0f).setDuration(c()).setListener(new e(zVar, view, animate)).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DefaultItemAnimator.java */
    /* loaded from: classes.dex */
    public static class i {

        /* renamed from: a, reason: collision with root package name */
        public RecyclerView.z f2739a;

        /* renamed from: b, reason: collision with root package name */
        public RecyclerView.z f2740b;

        /* renamed from: c, reason: collision with root package name */
        public int f2741c;

        /* renamed from: d, reason: collision with root package name */
        public int f2742d;

        /* renamed from: e, reason: collision with root package name */
        public int f2743e;

        /* renamed from: f, reason: collision with root package name */
        public int f2744f;

        private i(RecyclerView.z zVar, RecyclerView.z zVar2) {
            this.f2739a = zVar;
            this.f2740b = zVar2;
        }

        public String toString() {
            return "ChangeInfo{oldHolder=" + this.f2739a + ", newHolder=" + this.f2740b + ", fromX=" + this.f2741c + ", fromY=" + this.f2742d + ", toX=" + this.f2743e + ", toY=" + this.f2744f + '}';
        }

        i(RecyclerView.z zVar, RecyclerView.z zVar2, int i2, int i3, int i4, int i5) {
            this(zVar, zVar2);
            this.f2741c = i2;
            this.f2742d = i3;
            this.f2743e = i4;
            this.f2744f = i5;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemAnimator
    public boolean g() {
        return (this.f2707i.isEmpty() && this.f2709k.isEmpty() && this.f2708j.isEmpty() && this.f2706h.isEmpty() && this.p.isEmpty() && this.q.isEmpty() && this.o.isEmpty() && this.r.isEmpty() && this.m.isEmpty() && this.f2710l.isEmpty() && this.n.isEmpty()) ? false : true;
    }

    private void b(i iVar) {
        RecyclerView.z zVar = iVar.f2739a;
        if (zVar != null) {
            a(iVar, zVar);
        }
        RecyclerView.z zVar2 = iVar.f2740b;
        if (zVar2 != null) {
            a(iVar, zVar2);
        }
    }

    @Override // androidx.recyclerview.widget.m
    public boolean a(RecyclerView.z zVar, RecyclerView.z zVar2, int i2, int i3, int i4, int i5) {
        if (zVar == zVar2) {
            return a(zVar, i2, i3, i4, i5);
        }
        float translationX = zVar.f2640a.getTranslationX();
        float translationY = zVar.f2640a.getTranslationY();
        float alpha = zVar.f2640a.getAlpha();
        v(zVar);
        int i6 = (int) ((i4 - i2) - translationX);
        int i7 = (int) ((i5 - i3) - translationY);
        zVar.f2640a.setTranslationX(translationX);
        zVar.f2640a.setTranslationY(translationY);
        zVar.f2640a.setAlpha(alpha);
        if (zVar2 != null) {
            v(zVar2);
            zVar2.f2640a.setTranslationX(-i6);
            zVar2.f2640a.setTranslationY(-i7);
            zVar2.f2640a.setAlpha(0.0f);
        }
        this.f2709k.add(new i(zVar, zVar2, i2, i3, i4, i5));
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemAnimator
    public void b() {
        int size = this.f2708j.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            j jVar = this.f2708j.get(size);
            View view = jVar.f2745a.f2640a;
            view.setTranslationY(0.0f);
            view.setTranslationX(0.0f);
            j(jVar.f2745a);
            this.f2708j.remove(size);
        }
        for (int size2 = this.f2706h.size() - 1; size2 >= 0; size2--) {
            l(this.f2706h.get(size2));
            this.f2706h.remove(size2);
        }
        int size3 = this.f2707i.size();
        while (true) {
            size3--;
            if (size3 < 0) {
                break;
            }
            RecyclerView.z zVar = this.f2707i.get(size3);
            zVar.f2640a.setAlpha(1.0f);
            h(zVar);
            this.f2707i.remove(size3);
        }
        for (int size4 = this.f2709k.size() - 1; size4 >= 0; size4--) {
            b(this.f2709k.get(size4));
        }
        this.f2709k.clear();
        if (g()) {
            for (int size5 = this.m.size() - 1; size5 >= 0; size5--) {
                ArrayList<j> arrayList = this.m.get(size5);
                for (int size6 = arrayList.size() - 1; size6 >= 0; size6--) {
                    j jVar2 = arrayList.get(size6);
                    View view2 = jVar2.f2745a.f2640a;
                    view2.setTranslationY(0.0f);
                    view2.setTranslationX(0.0f);
                    j(jVar2.f2745a);
                    arrayList.remove(size6);
                    if (arrayList.isEmpty()) {
                        this.m.remove(arrayList);
                    }
                }
            }
            for (int size7 = this.f2710l.size() - 1; size7 >= 0; size7--) {
                ArrayList<RecyclerView.z> arrayList2 = this.f2710l.get(size7);
                for (int size8 = arrayList2.size() - 1; size8 >= 0; size8--) {
                    RecyclerView.z zVar2 = arrayList2.get(size8);
                    zVar2.f2640a.setAlpha(1.0f);
                    h(zVar2);
                    arrayList2.remove(size8);
                    if (arrayList2.isEmpty()) {
                        this.f2710l.remove(arrayList2);
                    }
                }
            }
            for (int size9 = this.n.size() - 1; size9 >= 0; size9--) {
                ArrayList<i> arrayList3 = this.n.get(size9);
                for (int size10 = arrayList3.size() - 1; size10 >= 0; size10--) {
                    b(arrayList3.get(size10));
                    if (arrayList3.isEmpty()) {
                        this.n.remove(arrayList3);
                    }
                }
            }
            a(this.q);
            a(this.p);
            a(this.o);
            a(this.r);
            a();
        }
    }

    void a(i iVar) {
        RecyclerView.z zVar = iVar.f2739a;
        View view = zVar == null ? null : zVar.f2640a;
        RecyclerView.z zVar2 = iVar.f2740b;
        View view2 = zVar2 != null ? zVar2.f2640a : null;
        if (view != null) {
            ViewPropertyAnimator duration = view.animate().setDuration(d());
            this.r.add(iVar.f2739a);
            duration.translationX(iVar.f2743e - iVar.f2741c);
            duration.translationY(iVar.f2744f - iVar.f2742d);
            duration.alpha(0.0f).setListener(new g(iVar, duration, view)).start();
        }
        if (view2 != null) {
            ViewPropertyAnimator animate = view2.animate();
            this.r.add(iVar.f2740b);
            animate.translationX(0.0f).translationY(0.0f).setDuration(d()).alpha(1.0f).setListener(new h(iVar, animate, view2)).start();
        }
    }

    private void a(List<i> list, RecyclerView.z zVar) {
        for (int size = list.size() - 1; size >= 0; size--) {
            i iVar = list.get(size);
            if (a(iVar, zVar) && iVar.f2739a == null && iVar.f2740b == null) {
                list.remove(iVar);
            }
        }
    }

    private boolean a(i iVar, RecyclerView.z zVar) {
        boolean z = false;
        if (iVar.f2740b == zVar) {
            iVar.f2740b = null;
        } else {
            if (iVar.f2739a != zVar) {
                return false;
            }
            iVar.f2739a = null;
            z = true;
        }
        zVar.f2640a.setAlpha(1.0f);
        zVar.f2640a.setTranslationX(0.0f);
        zVar.f2640a.setTranslationY(0.0f);
        a(zVar, z);
        return true;
    }

    void a(List<RecyclerView.z> list) {
        for (int size = list.size() - 1; size >= 0; size--) {
            list.get(size).f2640a.animate().cancel();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemAnimator
    public boolean a(@NonNull RecyclerView.z zVar, @NonNull List<Object> list) {
        return !list.isEmpty() || super.a(zVar, list);
    }
}
