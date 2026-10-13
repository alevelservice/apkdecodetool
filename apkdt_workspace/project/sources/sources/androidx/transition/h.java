package androidx.transition;

import android.view.View;
import android.view.ViewGroup;

/* compiled from: Scene.java */
/* loaded from: classes.dex */
public class h {

    /* renamed from: a, reason: collision with root package name */
    private ViewGroup f2970a;

    /* renamed from: b, reason: collision with root package name */
    private Runnable f2971b;

    public void a() {
        Runnable runnable;
        if (a(this.f2970a) != this || (runnable = this.f2971b) == null) {
            return;
        }
        runnable.run();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(View view, h hVar) {
        view.setTag(f.transition_current_scene, hVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static h a(View view) {
        return (h) view.getTag(f.transition_current_scene);
    }
}
