package androidx.core.view.f0;

import android.os.Build;
import android.view.accessibility.AccessibilityManager;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

/* compiled from: AccessibilityManagerCompat.java */
/* loaded from: classes.dex */
public final class c {

    /* compiled from: AccessibilityManagerCompat.java */
    /* loaded from: classes.dex */
    public interface a {
        void onTouchExplorationStateChanged(boolean z);
    }

    /* compiled from: AccessibilityManagerCompat.java */
    @RequiresApi(19)
    /* loaded from: classes.dex */
    private static final class b implements AccessibilityManager.TouchExplorationStateChangeListener {

        /* renamed from: a, reason: collision with root package name */
        final a f1959a;

        b(@NonNull a aVar) {
            this.f1959a = aVar;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof b) {
                return this.f1959a.equals(((b) obj).f1959a);
            }
            return false;
        }

        public int hashCode() {
            return this.f1959a.hashCode();
        }

        @Override // android.view.accessibility.AccessibilityManager.TouchExplorationStateChangeListener
        public void onTouchExplorationStateChanged(boolean z) {
            this.f1959a.onTouchExplorationStateChanged(z);
        }
    }

    public static boolean a(AccessibilityManager accessibilityManager, a aVar) {
        if (Build.VERSION.SDK_INT < 19 || aVar == null) {
            return false;
        }
        return accessibilityManager.addTouchExplorationStateChangeListener(new b(aVar));
    }

    public static boolean b(AccessibilityManager accessibilityManager, a aVar) {
        if (Build.VERSION.SDK_INT < 19 || aVar == null) {
            return false;
        }
        return accessibilityManager.removeTouchExplorationStateChangeListener(new b(aVar));
    }
}
