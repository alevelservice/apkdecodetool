package androidx.activity;

import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.lifecycle.e;
import androidx.lifecycle.f;
import androidx.lifecycle.h;
import java.util.ArrayDeque;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class OnBackPressedDispatcher {

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    private final Runnable f715a;

    /* renamed from: b, reason: collision with root package name */
    final ArrayDeque<b> f716b = new ArrayDeque<>();

    /* loaded from: classes.dex */
    private class LifecycleOnBackPressedCancellable implements f, androidx.activity.a {

        /* renamed from: a, reason: collision with root package name */
        private final e f717a;

        /* renamed from: b, reason: collision with root package name */
        private final b f718b;

        /* renamed from: c, reason: collision with root package name */
        @Nullable
        private androidx.activity.a f719c;

        LifecycleOnBackPressedCancellable(@NonNull e eVar, @NonNull b bVar) {
            this.f717a = eVar;
            this.f718b = bVar;
            eVar.a(this);
        }

        @Override // androidx.lifecycle.f
        public void a(@NonNull h hVar, @NonNull e.a aVar) {
            if (aVar == e.a.ON_START) {
                this.f719c = OnBackPressedDispatcher.this.a(this.f718b);
                return;
            }
            if (aVar == e.a.ON_STOP) {
                androidx.activity.a aVar2 = this.f719c;
                if (aVar2 != null) {
                    aVar2.cancel();
                    return;
                }
                return;
            }
            if (aVar == e.a.ON_DESTROY) {
                cancel();
            }
        }

        @Override // androidx.activity.a
        public void cancel() {
            this.f717a.b(this);
            this.f718b.b(this);
            androidx.activity.a aVar = this.f719c;
            if (aVar != null) {
                aVar.cancel();
                this.f719c = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class a implements androidx.activity.a {

        /* renamed from: a, reason: collision with root package name */
        private final b f721a;

        a(b bVar) {
            this.f721a = bVar;
        }

        @Override // androidx.activity.a
        public void cancel() {
            OnBackPressedDispatcher.this.f716b.remove(this.f721a);
            this.f721a.b(this);
        }
    }

    public OnBackPressedDispatcher(@Nullable Runnable runnable) {
        this.f715a = runnable;
    }

    @NonNull
    @MainThread
    androidx.activity.a a(@NonNull b bVar) {
        this.f716b.add(bVar);
        a aVar = new a(bVar);
        bVar.a(aVar);
        return aVar;
    }

    @MainThread
    public void a(@NonNull h hVar, @NonNull b bVar) {
        e lifecycle = hVar.getLifecycle();
        if (lifecycle.a() == e.b.DESTROYED) {
            return;
        }
        bVar.a(new LifecycleOnBackPressedCancellable(lifecycle, bVar));
    }

    @MainThread
    public void a() {
        Iterator<b> descendingIterator = this.f716b.descendingIterator();
        while (descendingIterator.hasNext()) {
            b next = descendingIterator.next();
            if (next.b()) {
                next.a();
                return;
            }
        }
        Runnable runnable = this.f715a;
        if (runnable != null) {
            runnable.run();
        }
    }
}
