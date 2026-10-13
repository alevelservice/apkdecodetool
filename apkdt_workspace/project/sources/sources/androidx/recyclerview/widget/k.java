package androidx.recyclerview.widget;

import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import androidx.annotation.NonNull;

/* compiled from: RecyclerViewAccessibilityDelegate.java */
/* loaded from: classes.dex */
public class k extends androidx.core.view.a {

    /* renamed from: d, reason: collision with root package name */
    final RecyclerView f2799d;

    /* renamed from: e, reason: collision with root package name */
    final androidx.core.view.a f2800e = new a(this);

    public k(@NonNull RecyclerView recyclerView) {
        this.f2799d = recyclerView;
    }

    @Override // androidx.core.view.a
    public boolean a(View view, int i2, Bundle bundle) {
        if (super.a(view, i2, bundle)) {
            return true;
        }
        if (c() || this.f2799d.getLayoutManager() == null) {
            return false;
        }
        return this.f2799d.getLayoutManager().a(i2, bundle);
    }

    @Override // androidx.core.view.a
    public void b(View view, AccessibilityEvent accessibilityEvent) {
        super.b(view, accessibilityEvent);
        accessibilityEvent.setClassName(RecyclerView.class.getName());
        if (!(view instanceof RecyclerView) || c()) {
            return;
        }
        RecyclerView recyclerView = (RecyclerView) view;
        if (recyclerView.getLayoutManager() != null) {
            recyclerView.getLayoutManager().a(accessibilityEvent);
        }
    }

    boolean c() {
        return this.f2799d.hasPendingAdapterUpdates();
    }

    @Override // androidx.core.view.a
    public void a(View view, androidx.core.view.f0.d dVar) {
        super.a(view, dVar);
        dVar.a((CharSequence) RecyclerView.class.getName());
        if (c() || this.f2799d.getLayoutManager() == null) {
            return;
        }
        this.f2799d.getLayoutManager().a(dVar);
    }

    /* compiled from: RecyclerViewAccessibilityDelegate.java */
    /* loaded from: classes.dex */
    public static class a extends androidx.core.view.a {

        /* renamed from: d, reason: collision with root package name */
        final k f2801d;

        public a(@NonNull k kVar) {
            this.f2801d = kVar;
        }

        @Override // androidx.core.view.a
        public void a(View view, androidx.core.view.f0.d dVar) {
            super.a(view, dVar);
            if (this.f2801d.c() || this.f2801d.f2799d.getLayoutManager() == null) {
                return;
            }
            this.f2801d.f2799d.getLayoutManager().a(view, dVar);
        }

        @Override // androidx.core.view.a
        public boolean a(View view, int i2, Bundle bundle) {
            if (super.a(view, i2, bundle)) {
                return true;
            }
            if (this.f2801d.c() || this.f2801d.f2799d.getLayoutManager() == null) {
                return false;
            }
            return this.f2801d.f2799d.getLayoutManager().a(view, i2, bundle);
        }
    }

    @NonNull
    public androidx.core.view.a b() {
        return this.f2800e;
    }
}
