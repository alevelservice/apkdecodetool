package androidx.fragment.app;

import androidx.annotation.NonNull;
import androidx.lifecycle.p;
import androidx.lifecycle.q;
import androidx.lifecycle.r;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FragmentManagerViewModel.java */
/* loaded from: classes.dex */
public class i extends p {

    /* renamed from: h, reason: collision with root package name */
    private static final q.a f2234h = new a();

    /* renamed from: e, reason: collision with root package name */
    private final boolean f2238e;

    /* renamed from: b, reason: collision with root package name */
    private final HashSet<Fragment> f2235b = new HashSet<>();

    /* renamed from: c, reason: collision with root package name */
    private final HashMap<String, i> f2236c = new HashMap<>();

    /* renamed from: d, reason: collision with root package name */
    private final HashMap<String, r> f2237d = new HashMap<>();

    /* renamed from: f, reason: collision with root package name */
    private boolean f2239f = false;

    /* renamed from: g, reason: collision with root package name */
    private boolean f2240g = false;

    /* compiled from: FragmentManagerViewModel.java */
    /* loaded from: classes.dex */
    static class a implements q.a {
        a() {
        }

        @Override // androidx.lifecycle.q.a
        @NonNull
        public <T extends p> T a(@NonNull Class<T> cls) {
            return new i(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(boolean z) {
        this.f2238e = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public static i a(r rVar) {
        return (i) new q(rVar, f2234h).a(i.class);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.lifecycle.p
    public void b() {
        if (h.L) {
            String str = "onCleared called for " + this;
        }
        this.f2239f = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public Collection<Fragment> c() {
        return this.f2235b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean d() {
        return this.f2239f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean e(@NonNull Fragment fragment) {
        return this.f2235b.remove(fragment);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || i.class != obj.getClass()) {
            return false;
        }
        i iVar = (i) obj;
        return this.f2235b.equals(iVar.f2235b) && this.f2236c.equals(iVar.f2236c) && this.f2237d.equals(iVar.f2237d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean f(@NonNull Fragment fragment) {
        if (!this.f2235b.contains(fragment)) {
            return true;
        }
        if (this.f2238e) {
            return this.f2239f;
        }
        return !this.f2240g;
    }

    public int hashCode() {
        return (((this.f2235b.hashCode() * 31) + this.f2236c.hashCode()) * 31) + this.f2237d.hashCode();
    }

    @NonNull
    public String toString() {
        StringBuilder sb = new StringBuilder("FragmentManagerViewModel{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("} Fragments (");
        Iterator<Fragment> it = this.f2235b.iterator();
        while (it.hasNext()) {
            sb.append(it.next());
            if (it.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(") Child Non Config (");
        Iterator<String> it2 = this.f2236c.keySet().iterator();
        while (it2.hasNext()) {
            sb.append(it2.next());
            if (it2.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(") ViewModelStores (");
        Iterator<String> it3 = this.f2237d.keySet().iterator();
        while (it3.hasNext()) {
            sb.append(it3.next());
            if (it3.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(')');
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public i c(@NonNull Fragment fragment) {
        i iVar = this.f2236c.get(fragment.mWho);
        if (iVar != null) {
            return iVar;
        }
        i iVar2 = new i(this.f2238e);
        this.f2236c.put(fragment.mWho, iVar2);
        return iVar2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public r d(@NonNull Fragment fragment) {
        r rVar = this.f2237d.get(fragment.mWho);
        if (rVar != null) {
            return rVar;
        }
        r rVar2 = new r();
        this.f2237d.put(fragment.mWho, rVar2);
        return rVar2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(@NonNull Fragment fragment) {
        return this.f2235b.add(fragment);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(@NonNull Fragment fragment) {
        if (h.L) {
            String str = "Clearing non-config state for " + fragment;
        }
        i iVar = this.f2236c.get(fragment.mWho);
        if (iVar != null) {
            iVar.b();
            this.f2236c.remove(fragment.mWho);
        }
        r rVar = this.f2237d.get(fragment.mWho);
        if (rVar != null) {
            rVar.a();
            this.f2237d.remove(fragment.mWho);
        }
    }
}
