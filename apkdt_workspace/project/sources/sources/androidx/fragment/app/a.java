package androidx.fragment.app;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.g;
import androidx.fragment.app.h;
import androidx.fragment.app.j;
import com.alipay.mobile.security.bio.utils.HanziToPinyin;
import java.io.PrintWriter;
import java.util.ArrayList;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BackStackRecord.java */
/* loaded from: classes.dex */
public final class a extends j implements g.a, h.k {
    final h s;
    boolean t;
    int u = -1;

    public a(h hVar) {
        this.s = hVar;
    }

    public void a(String str, PrintWriter printWriter) {
        a(str, printWriter, true);
    }

    @Override // androidx.fragment.app.j
    @NonNull
    public j b(@NonNull Fragment fragment) {
        h hVar = fragment.mFragmentManager;
        if (hVar != null && hVar != this.s) {
            throw new IllegalStateException("Cannot detach Fragment attached to a different FragmentManager. Fragment " + fragment.toString() + " is already attached to a FragmentManager.");
        }
        super.b(fragment);
        return this;
    }

    @Override // androidx.fragment.app.j
    @NonNull
    public j c(@NonNull Fragment fragment) {
        h hVar = fragment.mFragmentManager;
        if (hVar != null && hVar != this.s) {
            throw new IllegalStateException("Cannot remove Fragment attached to a different FragmentManager. Fragment " + fragment.toString() + " is already attached to a FragmentManager.");
        }
        super.c(fragment);
        return this;
    }

    @Nullable
    public String d() {
        return this.f2250j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean e() {
        for (int i2 = 0; i2 < this.f2241a.size(); i2++) {
            if (b(this.f2241a.get(i2))) {
                return true;
            }
        }
        return false;
    }

    public void f() {
        if (this.r != null) {
            for (int i2 = 0; i2 < this.r.size(); i2++) {
                this.r.get(i2).run();
            }
            this.r = null;
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("BackStackEntry{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        if (this.u >= 0) {
            sb.append(" #");
            sb.append(this.u);
        }
        if (this.f2250j != null) {
            sb.append(HanziToPinyin.Token.SEPARATOR);
            sb.append(this.f2250j);
        }
        sb.append("}");
        return sb.toString();
    }

    public void a(String str, PrintWriter printWriter, boolean z) {
        String str2;
        if (z) {
            printWriter.print(str);
            printWriter.print("mName=");
            printWriter.print(this.f2250j);
            printWriter.print(" mIndex=");
            printWriter.print(this.u);
            printWriter.print(" mCommitted=");
            printWriter.println(this.t);
            if (this.f2246f != 0) {
                printWriter.print(str);
                printWriter.print("mTransition=#");
                printWriter.print(Integer.toHexString(this.f2246f));
                printWriter.print(" mTransitionStyle=#");
                printWriter.println(Integer.toHexString(this.f2247g));
            }
            if (this.f2242b != 0 || this.f2243c != 0) {
                printWriter.print(str);
                printWriter.print("mEnterAnim=#");
                printWriter.print(Integer.toHexString(this.f2242b));
                printWriter.print(" mExitAnim=#");
                printWriter.println(Integer.toHexString(this.f2243c));
            }
            if (this.f2244d != 0 || this.f2245e != 0) {
                printWriter.print(str);
                printWriter.print("mPopEnterAnim=#");
                printWriter.print(Integer.toHexString(this.f2244d));
                printWriter.print(" mPopExitAnim=#");
                printWriter.println(Integer.toHexString(this.f2245e));
            }
            if (this.f2251k != 0 || this.f2252l != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbTitleRes=#");
                printWriter.print(Integer.toHexString(this.f2251k));
                printWriter.print(" mBreadCrumbTitleText=");
                printWriter.println(this.f2252l);
            }
            if (this.m != 0 || this.n != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbShortTitleRes=#");
                printWriter.print(Integer.toHexString(this.m));
                printWriter.print(" mBreadCrumbShortTitleText=");
                printWriter.println(this.n);
            }
        }
        if (this.f2241a.isEmpty()) {
            return;
        }
        printWriter.print(str);
        printWriter.println("Operations:");
        int size = this.f2241a.size();
        for (int i2 = 0; i2 < size; i2++) {
            j.a aVar = this.f2241a.get(i2);
            switch (aVar.f2253a) {
                case 0:
                    str2 = "NULL";
                    break;
                case 1:
                    str2 = "ADD";
                    break;
                case 2:
                    str2 = "REPLACE";
                    break;
                case 3:
                    str2 = "REMOVE";
                    break;
                case 4:
                    str2 = "HIDE";
                    break;
                case 5:
                    str2 = "SHOW";
                    break;
                case 6:
                    str2 = "DETACH";
                    break;
                case 7:
                    str2 = "ATTACH";
                    break;
                case 8:
                    str2 = "SET_PRIMARY_NAV";
                    break;
                case 9:
                    str2 = "UNSET_PRIMARY_NAV";
                    break;
                case 10:
                    str2 = "OP_SET_MAX_LIFECYCLE";
                    break;
                default:
                    str2 = "cmd=" + aVar.f2253a;
                    break;
            }
            printWriter.print(str);
            printWriter.print("  Op #");
            printWriter.print(i2);
            printWriter.print(": ");
            printWriter.print(str2);
            printWriter.print(HanziToPinyin.Token.SEPARATOR);
            printWriter.println(aVar.f2254b);
            if (z) {
                if (aVar.f2255c != 0 || aVar.f2256d != 0) {
                    printWriter.print(str);
                    printWriter.print("enterAnim=#");
                    printWriter.print(Integer.toHexString(aVar.f2255c));
                    printWriter.print(" exitAnim=#");
                    printWriter.println(Integer.toHexString(aVar.f2256d));
                }
                if (aVar.f2257e != 0 || aVar.f2258f != 0) {
                    printWriter.print(str);
                    printWriter.print("popEnterAnim=#");
                    printWriter.print(Integer.toHexString(aVar.f2257e));
                    printWriter.print(" popExitAnim=#");
                    printWriter.println(Integer.toHexString(aVar.f2258f));
                }
            }
        }
    }

    @Override // androidx.fragment.app.j
    public int b() {
        return a(true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c() {
        int size = this.f2241a.size();
        for (int i2 = 0; i2 < size; i2++) {
            j.a aVar = this.f2241a.get(i2);
            Fragment fragment = aVar.f2254b;
            if (fragment != null) {
                fragment.setNextTransition(this.f2246f, this.f2247g);
            }
            switch (aVar.f2253a) {
                case 1:
                    fragment.setNextAnim(aVar.f2255c);
                    this.s.a(fragment, false);
                    break;
                case 2:
                default:
                    throw new IllegalArgumentException("Unknown cmd: " + aVar.f2253a);
                case 3:
                    fragment.setNextAnim(aVar.f2256d);
                    this.s.o(fragment);
                    break;
                case 4:
                    fragment.setNextAnim(aVar.f2256d);
                    this.s.h(fragment);
                    break;
                case 5:
                    fragment.setNextAnim(aVar.f2255c);
                    this.s.t(fragment);
                    break;
                case 6:
                    fragment.setNextAnim(aVar.f2256d);
                    this.s.d(fragment);
                    break;
                case 7:
                    fragment.setNextAnim(aVar.f2255c);
                    this.s.b(fragment);
                    break;
                case 8:
                    this.s.s(fragment);
                    break;
                case 9:
                    this.s.s(null);
                    break;
                case 10:
                    this.s.a(fragment, aVar.f2260h);
                    break;
            }
            if (!this.q && aVar.f2253a != 1 && fragment != null) {
                this.s.l(fragment);
            }
        }
        if (this.q) {
            return;
        }
        h hVar = this.s;
        hVar.a(hVar.t, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b(int i2) {
        int size = this.f2241a.size();
        for (int i3 = 0; i3 < size; i3++) {
            Fragment fragment = this.f2241a.get(i3).f2254b;
            int i4 = fragment != null ? fragment.mContainerId : 0;
            if (i4 != 0 && i4 == i2) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(boolean z) {
        for (int size = this.f2241a.size() - 1; size >= 0; size--) {
            j.a aVar = this.f2241a.get(size);
            Fragment fragment = aVar.f2254b;
            if (fragment != null) {
                fragment.setNextTransition(h.e(this.f2246f), this.f2247g);
            }
            switch (aVar.f2253a) {
                case 1:
                    fragment.setNextAnim(aVar.f2258f);
                    this.s.o(fragment);
                    break;
                case 2:
                default:
                    throw new IllegalArgumentException("Unknown cmd: " + aVar.f2253a);
                case 3:
                    fragment.setNextAnim(aVar.f2257e);
                    this.s.a(fragment, false);
                    break;
                case 4:
                    fragment.setNextAnim(aVar.f2257e);
                    this.s.t(fragment);
                    break;
                case 5:
                    fragment.setNextAnim(aVar.f2258f);
                    this.s.h(fragment);
                    break;
                case 6:
                    fragment.setNextAnim(aVar.f2257e);
                    this.s.b(fragment);
                    break;
                case 7:
                    fragment.setNextAnim(aVar.f2258f);
                    this.s.d(fragment);
                    break;
                case 8:
                    this.s.s(null);
                    break;
                case 9:
                    this.s.s(fragment);
                    break;
                case 10:
                    this.s.a(fragment, aVar.f2259g);
                    break;
            }
            if (!this.q && aVar.f2253a != 3 && fragment != null) {
                this.s.l(fragment);
            }
        }
        if (this.q || !z) {
            return;
        }
        h hVar = this.s;
        hVar.a(hVar.t, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Fragment b(ArrayList<Fragment> arrayList, Fragment fragment) {
        for (int size = this.f2241a.size() - 1; size >= 0; size--) {
            j.a aVar = this.f2241a.get(size);
            int i2 = aVar.f2253a;
            if (i2 != 1) {
                if (i2 != 3) {
                    switch (i2) {
                        case 8:
                            fragment = null;
                            break;
                        case 9:
                            fragment = aVar.f2254b;
                            break;
                        case 10:
                            aVar.f2260h = aVar.f2259g;
                            break;
                    }
                }
                arrayList.add(aVar.f2254b);
            }
            arrayList.remove(aVar.f2254b);
        }
        return fragment;
    }

    private static boolean b(j.a aVar) {
        Fragment fragment = aVar.f2254b;
        return (fragment == null || !fragment.mAdded || fragment.mView == null || fragment.mDetached || fragment.mHidden || !fragment.isPostponed()) ? false : true;
    }

    @Override // androidx.fragment.app.j
    void a(int i2, Fragment fragment, @Nullable String str, int i3) {
        super.a(i2, fragment, str, i3);
        fragment.mFragmentManager = this.s;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i2) {
        if (this.f2248h) {
            if (h.L) {
                String str = "Bump nesting in " + this + " by " + i2;
            }
            int size = this.f2241a.size();
            for (int i3 = 0; i3 < size; i3++) {
                j.a aVar = this.f2241a.get(i3);
                Fragment fragment = aVar.f2254b;
                if (fragment != null) {
                    fragment.mBackStackNesting += i2;
                    if (h.L) {
                        String str2 = "Bump nesting of " + aVar.f2254b + " to " + aVar.f2254b.mBackStackNesting;
                    }
                }
            }
        }
    }

    @Override // androidx.fragment.app.j
    public int a() {
        return a(false);
    }

    int a(boolean z) {
        if (!this.t) {
            if (h.L) {
                String str = "Commit: " + this;
                PrintWriter printWriter = new PrintWriter(new a.i.m.c("FragmentManager"));
                a("  ", printWriter);
                printWriter.close();
            }
            this.t = true;
            if (this.f2248h) {
                this.u = this.s.b(this);
            } else {
                this.u = -1;
            }
            this.s.a(this, z);
            return this.u;
        }
        throw new IllegalStateException("commit already called");
    }

    @Override // androidx.fragment.app.h.k
    public boolean a(ArrayList<a> arrayList, ArrayList<Boolean> arrayList2) {
        if (h.L) {
            String str = "Run: " + this;
        }
        arrayList.add(this);
        arrayList2.add(false);
        if (!this.f2248h) {
            return true;
        }
        this.s.a(this);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(ArrayList<a> arrayList, int i2, int i3) {
        if (i3 == i2) {
            return false;
        }
        int size = this.f2241a.size();
        int i4 = -1;
        for (int i5 = 0; i5 < size; i5++) {
            Fragment fragment = this.f2241a.get(i5).f2254b;
            int i6 = fragment != null ? fragment.mContainerId : 0;
            if (i6 != 0 && i6 != i4) {
                for (int i7 = i2; i7 < i3; i7++) {
                    a aVar = arrayList.get(i7);
                    int size2 = aVar.f2241a.size();
                    for (int i8 = 0; i8 < size2; i8++) {
                        Fragment fragment2 = aVar.f2241a.get(i8).f2254b;
                        if ((fragment2 != null ? fragment2.mContainerId : 0) == i6) {
                            return true;
                        }
                    }
                }
                i4 = i6;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Fragment a(ArrayList<Fragment> arrayList, Fragment fragment) {
        Fragment fragment2 = fragment;
        int i2 = 0;
        while (i2 < this.f2241a.size()) {
            j.a aVar = this.f2241a.get(i2);
            int i3 = aVar.f2253a;
            if (i3 != 1) {
                if (i3 == 2) {
                    Fragment fragment3 = aVar.f2254b;
                    int i4 = fragment3.mContainerId;
                    Fragment fragment4 = fragment2;
                    int i5 = i2;
                    boolean z = false;
                    for (int size = arrayList.size() - 1; size >= 0; size--) {
                        Fragment fragment5 = arrayList.get(size);
                        if (fragment5.mContainerId == i4) {
                            if (fragment5 == fragment3) {
                                z = true;
                            } else {
                                if (fragment5 == fragment4) {
                                    this.f2241a.add(i5, new j.a(9, fragment5));
                                    i5++;
                                    fragment4 = null;
                                }
                                j.a aVar2 = new j.a(3, fragment5);
                                aVar2.f2255c = aVar.f2255c;
                                aVar2.f2257e = aVar.f2257e;
                                aVar2.f2256d = aVar.f2256d;
                                aVar2.f2258f = aVar.f2258f;
                                this.f2241a.add(i5, aVar2);
                                arrayList.remove(fragment5);
                                i5++;
                            }
                        }
                    }
                    if (z) {
                        this.f2241a.remove(i5);
                        i5--;
                    } else {
                        aVar.f2253a = 1;
                        arrayList.add(fragment3);
                    }
                    i2 = i5;
                    fragment2 = fragment4;
                } else if (i3 == 3 || i3 == 6) {
                    arrayList.remove(aVar.f2254b);
                    Fragment fragment6 = aVar.f2254b;
                    if (fragment6 == fragment2) {
                        this.f2241a.add(i2, new j.a(9, fragment6));
                        i2++;
                        fragment2 = null;
                    }
                } else if (i3 != 7) {
                    if (i3 == 8) {
                        this.f2241a.add(i2, new j.a(9, fragment2));
                        i2++;
                        fragment2 = aVar.f2254b;
                    }
                }
                i2++;
            }
            arrayList.add(aVar.f2254b);
            i2++;
        }
        return fragment2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Fragment.f fVar) {
        for (int i2 = 0; i2 < this.f2241a.size(); i2++) {
            j.a aVar = this.f2241a.get(i2);
            if (b(aVar)) {
                aVar.f2254b.setOnStartEnterTransitionListener(fVar);
            }
        }
    }
}
