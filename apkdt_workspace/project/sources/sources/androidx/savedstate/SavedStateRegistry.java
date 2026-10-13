package androidx.savedstate;

import android.annotation.SuppressLint;
import android.os.Bundle;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.lifecycle.d;
import androidx.lifecycle.e;
import androidx.lifecycle.h;
import java.util.Map;

@SuppressLint({"RestrictedApi"})
/* loaded from: classes.dex */
public final class SavedStateRegistry {

    /* renamed from: a, reason: collision with root package name */
    private a.b.a.b.b<String, b> f2810a = new a.b.a.b.b<>();

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    private Bundle f2811b;

    /* renamed from: c, reason: collision with root package name */
    private boolean f2812c;

    /* renamed from: d, reason: collision with root package name */
    boolean f2813d;

    /* loaded from: classes.dex */
    public interface a {
        void a(@NonNull androidx.savedstate.b bVar);
    }

    /* loaded from: classes.dex */
    public interface b {
        @NonNull
        Bundle a();
    }

    @Nullable
    @MainThread
    public Bundle a(@NonNull String str) {
        if (this.f2812c) {
            Bundle bundle = this.f2811b;
            if (bundle == null) {
                return null;
            }
            Bundle bundle2 = bundle.getBundle(str);
            this.f2811b.remove(str);
            if (this.f2811b.isEmpty()) {
                this.f2811b = null;
            }
            return bundle2;
        }
        throw new IllegalStateException("You can consumeRestoredStateForKey only after super.onCreate of corresponding component");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @MainThread
    public void a(@NonNull e eVar, @Nullable Bundle bundle) {
        if (!this.f2812c) {
            if (bundle != null) {
                this.f2811b = bundle.getBundle("androidx.lifecycle.BundlableSavedStateRegistry.key");
            }
            eVar.a(new d() { // from class: androidx.savedstate.SavedStateRegistry.1
                @Override // androidx.lifecycle.f
                public void a(h hVar, e.a aVar) {
                    if (aVar == e.a.ON_START) {
                        SavedStateRegistry.this.f2813d = true;
                    } else if (aVar == e.a.ON_STOP) {
                        SavedStateRegistry.this.f2813d = false;
                    }
                }
            });
            this.f2812c = true;
            return;
        }
        throw new IllegalStateException("SavedStateRegistry was already restored.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @MainThread
    public void a(@NonNull Bundle bundle) {
        Bundle bundle2 = new Bundle();
        Bundle bundle3 = this.f2811b;
        if (bundle3 != null) {
            bundle2.putAll(bundle3);
        }
        a.b.a.b.b<String, b>.d b2 = this.f2810a.b();
        while (b2.hasNext()) {
            Map.Entry next = b2.next();
            bundle2.putBundle((String) next.getKey(), ((b) next.getValue()).a());
        }
        bundle.putBundle("androidx.lifecycle.BundlableSavedStateRegistry.key", bundle2);
    }
}
