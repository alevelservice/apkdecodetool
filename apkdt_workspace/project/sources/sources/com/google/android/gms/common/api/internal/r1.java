package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;

/* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
/* loaded from: classes.dex */
public final class r1 extends Fragment implements j {

    /* renamed from: h, reason: collision with root package name */
    private static WeakHashMap<FragmentActivity, WeakReference<r1>> f5126h = new WeakHashMap<>();

    /* renamed from: e, reason: collision with root package name */
    private Map<String, LifecycleCallback> f5127e = new a.e.a();

    /* renamed from: f, reason: collision with root package name */
    private int f5128f = 0;

    /* renamed from: g, reason: collision with root package name */
    private Bundle f5129g;

    public static r1 a(FragmentActivity fragmentActivity) {
        r1 r1Var;
        WeakReference<r1> weakReference = f5126h.get(fragmentActivity);
        if (weakReference != null && (r1Var = weakReference.get()) != null) {
            return r1Var;
        }
        try {
            r1 r1Var2 = (r1) fragmentActivity.getSupportFragmentManager().a("SupportLifecycleFragmentImpl");
            if (r1Var2 == null || r1Var2.isRemoving()) {
                r1Var2 = new r1();
                androidx.fragment.app.j a2 = fragmentActivity.getSupportFragmentManager().a();
                a2.a(r1Var2, "SupportLifecycleFragmentImpl");
                a2.b();
            }
            f5126h.put(fragmentActivity, new WeakReference<>(r1Var2));
            return r1Var2;
        } catch (ClassCastException e2) {
            throw new IllegalStateException("Fragment with tag SupportLifecycleFragmentImpl is not a SupportLifecycleFragmentImpl", e2);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        Iterator<LifecycleCallback> it = this.f5127e.values().iterator();
        while (it.hasNext()) {
            it.next().a(str, fileDescriptor, printWriter, strArr);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onActivityResult(int i2, int i3, Intent intent) {
        super.onActivityResult(i2, i3, intent);
        Iterator<LifecycleCallback> it = this.f5127e.values().iterator();
        while (it.hasNext()) {
            it.next().a(i2, i3, intent);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f5128f = 1;
        this.f5129g = bundle;
        for (Map.Entry<String, LifecycleCallback> entry : this.f5127e.entrySet()) {
            entry.getValue().a(bundle != null ? bundle.getBundle(entry.getKey()) : null);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroy() {
        super.onDestroy();
        this.f5128f = 5;
        Iterator<LifecycleCallback> it = this.f5127e.values().iterator();
        while (it.hasNext()) {
            it.next().b();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onResume() {
        super.onResume();
        this.f5128f = 3;
        Iterator<LifecycleCallback> it = this.f5127e.values().iterator();
        while (it.hasNext()) {
            it.next().c();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (bundle == null) {
            return;
        }
        for (Map.Entry<String, LifecycleCallback> entry : this.f5127e.entrySet()) {
            Bundle bundle2 = new Bundle();
            entry.getValue().b(bundle2);
            bundle.putBundle(entry.getKey(), bundle2);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onStart() {
        super.onStart();
        this.f5128f = 2;
        Iterator<LifecycleCallback> it = this.f5127e.values().iterator();
        while (it.hasNext()) {
            it.next().d();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onStop() {
        super.onStop();
        this.f5128f = 4;
        Iterator<LifecycleCallback> it = this.f5127e.values().iterator();
        while (it.hasNext()) {
            it.next().e();
        }
    }

    @Override // com.google.android.gms.common.api.internal.j
    public final <T extends LifecycleCallback> T a(String str, Class<T> cls) {
        return cls.cast(this.f5127e.get(str));
    }

    @Override // com.google.android.gms.common.api.internal.j
    public final void a(String str, @NonNull LifecycleCallback lifecycleCallback) {
        if (!this.f5127e.containsKey(str)) {
            this.f5127e.put(str, lifecycleCallback);
            if (this.f5128f > 0) {
                new com.google.android.gms.internal.common.f(Looper.getMainLooper()).post(new q1(this, lifecycleCallback, str));
                return;
            }
            return;
        }
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 59);
        sb.append("LifecycleCallback with tag ");
        sb.append(str);
        sb.append(" already added to this fragment.");
        throw new IllegalArgumentException(sb.toString());
    }

    @Override // com.google.android.gms.common.api.internal.j
    public final /* synthetic */ Activity a() {
        return getActivity();
    }
}
