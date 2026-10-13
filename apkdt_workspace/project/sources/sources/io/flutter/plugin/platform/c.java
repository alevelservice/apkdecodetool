package io.flutter.plugin.platform;

import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AccessibilityEventsDelegate.java */
/* loaded from: classes2.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    private io.flutter.view.c f19288a;

    public boolean a(@NonNull View view, @NonNull View view2, @NonNull AccessibilityEvent accessibilityEvent) {
        io.flutter.view.c cVar = this.f19288a;
        if (cVar == null) {
            return false;
        }
        return cVar.a(view, view2, accessibilityEvent);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@Nullable io.flutter.view.c cVar) {
        this.f19288a = cVar;
    }
}
