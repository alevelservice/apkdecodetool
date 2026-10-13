package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.app.Fragment;
import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import androidx.annotation.NonNull;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;

/* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
/* loaded from: classes.dex */
public final class o1 extends Fragment implements j {

    /* renamed from: h, reason: collision with root package name */
    private static WeakHashMap<Activity, WeakReference<o1>> f5111h = new WeakHashMap<>();

    /* renamed from: e, reason: collision with root package name */
    private Map<String, LifecycleCallback> f5112e = new a.e.a();

    /* renamed from: f, reason: collision with root package name */
    private int f5113f = 0;

    /* renamed from: g, reason: collision with root package name */
    private Bundle f5114g;

    public static o1 a(Activity activity) {
        o1 o1Var;
        WeakReference<o1> weakReference = f5111h.get(activity);
        if (weakReference != null && (o1Var = weakReference.get()) != null) {
            return o1Var;
        }
        try {
            o1 o1Var2 = (o1) activity.getFragmentManager().findFragmentByTag("LifecycleFragmentImpl");
            if (o1Var2 == null || o1Var2.isRemoving()) {
                o1Var2 = new o1();
                activity.getFragmentManager().beginTransaction().add(o1Var2, "LifecycleFragmentImpl").commitAllowingStateLoss();
            }
            f5111h.put(activity, new WeakReference<>(o1Var2));
            return o1Var2;
        } catch (ClassCastException e2) {
            throw new IllegalStateException("Fragment with tag LifecycleFragmentImpl is not a LifecycleFragmentImpl", e2);
        }
    }

    @Override // android.app.Fragment
    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        Iterator<LifecycleCallback> it = this.f5112e.values().iterator();
        while (it.hasNext()) {
            it.next().a(str, fileDescriptor, printWriter, strArr);
        }
    }

    @Override // android.app.Fragment
    public final void onActivityResult(int i2, int i3, Intent intent) {
        super.onActivityResult(i2, i3, intent);
        Iterator<LifecycleCallback> it = this.f5112e.values().iterator();
        while (it.hasNext()) {
            it.next().a(i2, i3, intent);
        }
    }

    @Override // android.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f5113f = 1;
        this.f5114g = bundle;
        for (Map.Entry<String, LifecycleCallback> entry : this.f5112e.entrySet()) {
            entry.getValue().a(bundle != null ? bundle.getBundle(entry.getKey()) : null);
        }
    }

    @Override // android.app.Fragment
    public final void onDestroy() {
        super.onDestroy();
        this.f5113f = 5;
        Iterator<LifecycleCallback> it = this.f5112e.values().iterator();
        while (it.hasNext()) {
            it.next().b();
        }
    }

    @Override // android.app.Fragment
    public final void onResume() {
        super.onResume();
        this.f5113f = 3;
        Iterator<LifecycleCallback> it = this.f5112e.values().iterator();
        while (it.hasNext()) {
            it.next().c();
        }
    }

    @Override // android.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (bundle == null) {
            return;
        }
        for (Map.Entry<String, LifecycleCallback> entry : this.f5112e.entrySet()) {
            Bundle bundle2 = new Bundle();
            entry.getValue().b(bundle2);
            bundle.putBundle(entry.getKey(), bundle2);
        }
    }

    @Override // android.app.Fragment
    public final void onStart() {
        super.onStart();
        this.f5113f = 2;
        Iterator<LifecycleCallback> it = this.f5112e.values().iterator();
        while (it.hasNext()) {
            it.next().d();
        }
    }

    @Override // android.app.Fragment
    public final void onStop() {
        super.onStop();
        this.f5113f = 4;
        Iterator<LifecycleCallback> it = this.f5112e.values().iterator();
        while (it.hasNext()) {
            it.next().e();
        }
    }

    @Override // com.google.android.gms.common.api.internal.j
    public final <T extends LifecycleCallback> T a(String str, Class<T> cls) {
        return cls.cast(this.f5112e.get(str));
    }

    @Override // com.google.android.gms.common.api.internal.j
    public final void a(String str, @NonNull LifecycleCallback lifecycleCallback) {
        if (!this.f5112e.containsKey(str)) {
            this.f5112e.put(str, lifecycleCallback);
            if (this.f5113f > 0) {
                new com.google.android.gms.internal.common.f(Looper.getMainLooper()).post(new p1(this, lifecycleCallback, str));
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
    public final Activity a() {
        return getActivity();
    }
}
