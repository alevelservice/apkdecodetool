package androidx.lifecycle;

import android.app.Activity;
import android.app.Application;
import android.app.Fragment;
import android.app.FragmentManager;
import android.os.Build;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.lifecycle.e;

/* compiled from: ReportFragment.java */
@RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class o extends Fragment {

    /* renamed from: e, reason: collision with root package name */
    private a f2363e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ReportFragment.java */
    /* loaded from: classes.dex */
    public interface a {
        void a();

        void onResume();

        void onStart();
    }

    /* compiled from: ReportFragment.java */
    /* loaded from: classes.dex */
    static class b implements Application.ActivityLifecycleCallbacks {
        b() {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(@NonNull Activity activity, @Nullable Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(@NonNull Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(@NonNull Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPostCreated(@NonNull Activity activity, @Nullable Bundle bundle) {
            o.a(activity, e.a.ON_CREATE);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPostResumed(@NonNull Activity activity) {
            o.a(activity, e.a.ON_RESUME);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPostStarted(@NonNull Activity activity) {
            o.a(activity, e.a.ON_START);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPreDestroyed(@NonNull Activity activity) {
            o.a(activity, e.a.ON_DESTROY);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPrePaused(@NonNull Activity activity) {
            o.a(activity, e.a.ON_PAUSE);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPreStopped(@NonNull Activity activity) {
            o.a(activity, e.a.ON_STOP);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(@NonNull Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(@NonNull Activity activity, @NonNull Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(@NonNull Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(@NonNull Activity activity) {
        }
    }

    public static void a(Activity activity) {
        if (Build.VERSION.SDK_INT >= 29) {
            activity.registerActivityLifecycleCallbacks(new b());
        }
        FragmentManager fragmentManager = activity.getFragmentManager();
        if (fragmentManager.findFragmentByTag("androidx.lifecycle.LifecycleDispatcher.report_fragment_tag") == null) {
            fragmentManager.beginTransaction().add(new o(), "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag").commit();
            fragmentManager.executePendingTransactions();
        }
    }

    private void b(a aVar) {
        if (aVar != null) {
            aVar.onResume();
        }
    }

    private void c(a aVar) {
        if (aVar != null) {
            aVar.onStart();
        }
    }

    @Override // android.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        a(this.f2363e);
        a(e.a.ON_CREATE);
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        a(e.a.ON_DESTROY);
        this.f2363e = null;
    }

    @Override // android.app.Fragment
    public void onPause() {
        super.onPause();
        a(e.a.ON_PAUSE);
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        b(this.f2363e);
        a(e.a.ON_RESUME);
    }

    @Override // android.app.Fragment
    public void onStart() {
        super.onStart();
        c(this.f2363e);
        a(e.a.ON_START);
    }

    @Override // android.app.Fragment
    public void onStop() {
        super.onStop();
        a(e.a.ON_STOP);
    }

    /* JADX WARN: Multi-variable type inference failed */
    static void a(@NonNull Activity activity, @NonNull e.a aVar) {
        if (activity instanceof j) {
            ((j) activity).getLifecycle().a(aVar);
        } else if (activity instanceof h) {
            e lifecycle = ((h) activity).getLifecycle();
            if (lifecycle instanceof i) {
                ((i) lifecycle).a(aVar);
            }
        }
    }

    private void a(a aVar) {
        if (aVar != null) {
            aVar.a();
        }
    }

    private void a(@NonNull e.a aVar) {
        if (Build.VERSION.SDK_INT < 29) {
            a(getActivity(), aVar);
        }
    }
}
