package androidx.core.view;

import android.os.Build;
import android.os.Bundle;
import android.text.style.ClickableSpan;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.view.f0.d;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.List;

/* compiled from: AccessibilityDelegateCompat.java */
/* loaded from: classes.dex */
public class a {

    /* renamed from: c, reason: collision with root package name */
    private static final View.AccessibilityDelegate f1906c = new View.AccessibilityDelegate();

    /* renamed from: a, reason: collision with root package name */
    private final View.AccessibilityDelegate f1907a;

    /* renamed from: b, reason: collision with root package name */
    private final View.AccessibilityDelegate f1908b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AccessibilityDelegateCompat.java */
    /* renamed from: androidx.core.view.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0036a extends View.AccessibilityDelegate {

        /* renamed from: a, reason: collision with root package name */
        final a f1909a;

        C0036a(a aVar) {
            this.f1909a = aVar;
        }

        @Override // android.view.View.AccessibilityDelegate
        public boolean dispatchPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            return this.f1909a.a(view, accessibilityEvent);
        }

        @Override // android.view.View.AccessibilityDelegate
        @RequiresApi(16)
        public AccessibilityNodeProvider getAccessibilityNodeProvider(View view) {
            androidx.core.view.f0.e a2 = this.f1909a.a(view);
            if (a2 != null) {
                return (AccessibilityNodeProvider) a2.a();
            }
            return null;
        }

        @Override // android.view.View.AccessibilityDelegate
        public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            this.f1909a.b(view, accessibilityEvent);
        }

        @Override // android.view.View.AccessibilityDelegate
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
            androidx.core.view.f0.d a2 = androidx.core.view.f0.d.a(accessibilityNodeInfo);
            a2.l(ViewCompat.G(view));
            a2.j(ViewCompat.B(view));
            a2.f(ViewCompat.e(view));
            this.f1909a.a(view, a2);
            a2.a(accessibilityNodeInfo.getText(), view);
            List<d.a> b2 = a.b(view);
            for (int i2 = 0; i2 < b2.size(); i2++) {
                a2.a(b2.get(i2));
            }
        }

        @Override // android.view.View.AccessibilityDelegate
        public void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            this.f1909a.c(view, accessibilityEvent);
        }

        @Override // android.view.View.AccessibilityDelegate
        public boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            return this.f1909a.a(viewGroup, view, accessibilityEvent);
        }

        @Override // android.view.View.AccessibilityDelegate
        public boolean performAccessibilityAction(View view, int i2, Bundle bundle) {
            return this.f1909a.a(view, i2, bundle);
        }

        @Override // android.view.View.AccessibilityDelegate
        public void sendAccessibilityEvent(View view, int i2) {
            this.f1909a.a(view, i2);
        }

        @Override // android.view.View.AccessibilityDelegate
        public void sendAccessibilityEventUnchecked(View view, AccessibilityEvent accessibilityEvent) {
            this.f1909a.d(view, accessibilityEvent);
        }
    }

    public a() {
        this(f1906c);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public View.AccessibilityDelegate a() {
        return this.f1908b;
    }

    public void b(View view, AccessibilityEvent accessibilityEvent) {
        this.f1907a.onInitializeAccessibilityEvent(view, accessibilityEvent);
    }

    public void c(View view, AccessibilityEvent accessibilityEvent) {
        this.f1907a.onPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    public void d(View view, AccessibilityEvent accessibilityEvent) {
        this.f1907a.sendAccessibilityEventUnchecked(view, accessibilityEvent);
    }

    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public a(View.AccessibilityDelegate accessibilityDelegate) {
        this.f1907a = accessibilityDelegate;
        this.f1908b = new C0036a(this);
    }

    static List<d.a> b(View view) {
        List<d.a> list = (List) view.getTag(a.i.d.tag_accessibility_actions);
        return list == null ? Collections.emptyList() : list;
    }

    public void a(View view, int i2) {
        this.f1907a.sendAccessibilityEvent(view, i2);
    }

    public boolean a(View view, AccessibilityEvent accessibilityEvent) {
        return this.f1907a.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    public void a(View view, androidx.core.view.f0.d dVar) {
        this.f1907a.onInitializeAccessibilityNodeInfo(view, dVar.x());
    }

    public boolean a(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        return this.f1907a.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
    }

    public androidx.core.view.f0.e a(View view) {
        AccessibilityNodeProvider accessibilityNodeProvider;
        if (Build.VERSION.SDK_INT < 16 || (accessibilityNodeProvider = this.f1907a.getAccessibilityNodeProvider(view)) == null) {
            return null;
        }
        return new androidx.core.view.f0.e(accessibilityNodeProvider);
    }

    public boolean a(View view, int i2, Bundle bundle) {
        List<d.a> b2 = b(view);
        boolean z = false;
        int i3 = 0;
        while (true) {
            if (i3 >= b2.size()) {
                break;
            }
            d.a aVar = b2.get(i3);
            if (aVar.a() == i2) {
                z = aVar.a(view, bundle);
                break;
            }
            i3++;
        }
        if (!z && Build.VERSION.SDK_INT >= 16) {
            z = this.f1907a.performAccessibilityAction(view, i2, bundle);
        }
        return (z || i2 != a.i.d.accessibility_action_clickable_span) ? z : a(bundle.getInt("ACCESSIBILITY_CLICKABLE_SPAN_ID", -1), view);
    }

    private boolean a(int i2, View view) {
        WeakReference weakReference;
        SparseArray sparseArray = (SparseArray) view.getTag(a.i.d.tag_accessibility_clickable_spans);
        if (sparseArray == null || (weakReference = (WeakReference) sparseArray.get(i2)) == null) {
            return false;
        }
        ClickableSpan clickableSpan = (ClickableSpan) weakReference.get();
        if (!a(clickableSpan, view)) {
            return false;
        }
        clickableSpan.onClick(view);
        return true;
    }

    private boolean a(ClickableSpan clickableSpan, View view) {
        if (clickableSpan != null) {
            ClickableSpan[] h2 = androidx.core.view.f0.d.h(view.createAccessibilityNodeInfo().getText());
            for (int i2 = 0; h2 != null && i2 < h2.length; i2++) {
                if (clickableSpan.equals(h2[i2])) {
                    return true;
                }
            }
        }
        return false;
    }
}
