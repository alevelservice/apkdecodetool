package androidx.transition;

import android.animation.TimeInterpolator;
import android.util.AndroidRuntimeException;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.transition.Transition;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class TransitionSet extends Transition {
    int P;
    private ArrayList<Transition> N = new ArrayList<>();
    private boolean O = true;
    boolean Q = false;
    private int R = 0;

    /* loaded from: classes.dex */
    class a extends i {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ Transition f2934e;

        a(TransitionSet transitionSet, Transition transition) {
            this.f2934e = transition;
        }

        @Override // androidx.transition.Transition.f
        public void c(@NonNull Transition transition) {
            this.f2934e.A();
            transition.b(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class b extends i {

        /* renamed from: e, reason: collision with root package name */
        TransitionSet f2935e;

        b(TransitionSet transitionSet) {
            this.f2935e = transitionSet;
        }

        @Override // androidx.transition.i, androidx.transition.Transition.f
        public void a(@NonNull Transition transition) {
            TransitionSet transitionSet = this.f2935e;
            if (transitionSet.Q) {
                return;
            }
            transitionSet.B();
            this.f2935e.Q = true;
        }

        @Override // androidx.transition.Transition.f
        public void c(@NonNull Transition transition) {
            TransitionSet transitionSet = this.f2935e;
            transitionSet.P--;
            if (transitionSet.P == 0) {
                transitionSet.Q = false;
                transitionSet.a();
            }
            transition.b(this);
        }
    }

    private void D() {
        b bVar = new b(this);
        Iterator<Transition> it = this.N.iterator();
        while (it.hasNext()) {
            it.next().a(bVar);
        }
        this.P = this.N.size();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.transition.Transition
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP})
    public void A() {
        if (this.N.isEmpty()) {
            B();
            a();
            return;
        }
        D();
        if (!this.O) {
            for (int i2 = 1; i2 < this.N.size(); i2++) {
                this.N.get(i2 - 1).a(new a(this, this.N.get(i2)));
            }
            Transition transition = this.N.get(0);
            if (transition != null) {
                transition.A();
                return;
            }
            return;
        }
        Iterator<Transition> it = this.N.iterator();
        while (it.hasNext()) {
            it.next().A();
        }
    }

    public int C() {
        return this.N.size();
    }

    @Override // androidx.transition.Transition
    public void c(@NonNull m mVar) {
        if (b(mVar.f2983b)) {
            Iterator<Transition> it = this.N.iterator();
            while (it.hasNext()) {
                Transition next = it.next();
                if (next.b(mVar.f2983b)) {
                    next.c(mVar);
                    mVar.f2984c.add(next);
                }
            }
        }
    }

    @Override // androidx.transition.Transition
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP})
    public void e(View view) {
        super.e(view);
        int size = this.N.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.N.get(i2).e(view);
        }
    }

    @Override // androidx.transition.Transition
    /* renamed from: clone */
    public Transition mo4clone() {
        TransitionSet transitionSet = (TransitionSet) super.mo4clone();
        transitionSet.N = new ArrayList<>();
        int size = this.N.size();
        for (int i2 = 0; i2 < size; i2++) {
            transitionSet.a(this.N.get(i2).mo4clone());
        }
        return transitionSet;
    }

    @Override // androidx.transition.Transition
    @NonNull
    public TransitionSet d(@NonNull View view) {
        for (int i2 = 0; i2 < this.N.size(); i2++) {
            this.N.get(i2).d(view);
        }
        super.d(view);
        return this;
    }

    @Override // androidx.transition.Transition
    @NonNull
    public /* bridge */ /* synthetic */ Transition a(long j2) {
        a(j2);
        return this;
    }

    @NonNull
    public TransitionSet b(int i2) {
        if (i2 == 0) {
            this.O = true;
        } else if (i2 == 1) {
            this.O = false;
        } else {
            throw new AndroidRuntimeException("Invalid parameter for TransitionSet ordering: " + i2);
        }
        return this;
    }

    @NonNull
    public TransitionSet a(@NonNull Transition transition) {
        this.N.add(transition);
        transition.v = this;
        long j2 = this.f2920g;
        if (j2 >= 0) {
            transition.a(j2);
        }
        if ((this.R & 1) != 0) {
            transition.a(d());
        }
        if ((this.R & 2) != 0) {
            transition.a(g());
        }
        if ((this.R & 4) != 0) {
            transition.a(f());
        }
        if ((this.R & 8) != 0) {
            transition.a(c());
        }
        return this;
    }

    @Override // androidx.transition.Transition
    @NonNull
    public TransitionSet b(long j2) {
        super.b(j2);
        return this;
    }

    @Override // androidx.transition.Transition
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP})
    public void c(View view) {
        super.c(view);
        int size = this.N.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.N.get(i2).c(view);
        }
    }

    @Override // androidx.transition.Transition
    @NonNull
    public TransitionSet b(@NonNull Transition.f fVar) {
        super.b(fVar);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.transition.Transition
    public void b(m mVar) {
        super.b(mVar);
        int size = this.N.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.N.get(i2).b(mVar);
        }
    }

    public Transition a(int i2) {
        if (i2 < 0 || i2 >= this.N.size()) {
            return null;
        }
        return this.N.get(i2);
    }

    @Override // androidx.transition.Transition
    @NonNull
    public TransitionSet a(long j2) {
        super.a(j2);
        if (this.f2920g >= 0) {
            int size = this.N.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.N.get(i2).a(j2);
            }
        }
        return this;
    }

    @Override // androidx.transition.Transition
    @NonNull
    public TransitionSet a(@Nullable TimeInterpolator timeInterpolator) {
        this.R |= 1;
        ArrayList<Transition> arrayList = this.N;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.N.get(i2).a(timeInterpolator);
            }
        }
        super.a(timeInterpolator);
        return this;
    }

    @Override // androidx.transition.Transition
    @NonNull
    public TransitionSet a(@NonNull View view) {
        for (int i2 = 0; i2 < this.N.size(); i2++) {
            this.N.get(i2).a(view);
        }
        super.a(view);
        return this;
    }

    @Override // androidx.transition.Transition
    @NonNull
    public TransitionSet a(@NonNull Transition.f fVar) {
        super.a(fVar);
        return this;
    }

    @Override // androidx.transition.Transition
    public void a(PathMotion pathMotion) {
        super.a(pathMotion);
        this.R |= 4;
        for (int i2 = 0; i2 < this.N.size(); i2++) {
            this.N.get(i2).a(pathMotion);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.transition.Transition
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP})
    public void a(ViewGroup viewGroup, n nVar, n nVar2, ArrayList<m> arrayList, ArrayList<m> arrayList2) {
        long h2 = h();
        int size = this.N.size();
        for (int i2 = 0; i2 < size; i2++) {
            Transition transition = this.N.get(i2);
            if (h2 > 0 && (this.O || i2 == 0)) {
                long h3 = transition.h();
                if (h3 > 0) {
                    transition.b(h3 + h2);
                } else {
                    transition.b(h2);
                }
            }
            transition.a(viewGroup, nVar, nVar2, arrayList, arrayList2);
        }
    }

    @Override // androidx.transition.Transition
    public void a(@NonNull m mVar) {
        if (b(mVar.f2983b)) {
            Iterator<Transition> it = this.N.iterator();
            while (it.hasNext()) {
                Transition next = it.next();
                if (next.b(mVar.f2983b)) {
                    next.a(mVar);
                    mVar.f2984c.add(next);
                }
            }
        }
    }

    @Override // androidx.transition.Transition
    public void a(k kVar) {
        super.a(kVar);
        this.R |= 2;
        int size = this.N.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.N.get(i2).a(kVar);
        }
    }

    @Override // androidx.transition.Transition
    public void a(Transition.e eVar) {
        super.a(eVar);
        this.R |= 8;
        int size = this.N.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.N.get(i2).a(eVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.transition.Transition
    public String a(String str) {
        String a2 = super.a(str);
        for (int i2 = 0; i2 < this.N.size(); i2++) {
            StringBuilder sb = new StringBuilder();
            sb.append(a2);
            sb.append("\n");
            sb.append(this.N.get(i2).a(str + "  "));
            a2 = sb.toString();
        }
        return a2;
    }
}
