package androidx.core.view.f0;

import android.os.Build;
import android.os.Bundle;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.util.ArrayList;
import java.util.List;

/* compiled from: AccessibilityNodeProviderCompat.java */
/* loaded from: classes.dex */
public class e {

    /* renamed from: a, reason: collision with root package name */
    private final Object f1976a;

    /* compiled from: AccessibilityNodeProviderCompat.java */
    @RequiresApi(16)
    /* loaded from: classes.dex */
    static class a extends AccessibilityNodeProvider {

        /* renamed from: a, reason: collision with root package name */
        final e f1977a;

        a(e eVar) {
            this.f1977a = eVar;
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public AccessibilityNodeInfo createAccessibilityNodeInfo(int i2) {
            d a2 = this.f1977a.a(i2);
            if (a2 == null) {
                return null;
            }
            return a2.x();
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public List<AccessibilityNodeInfo> findAccessibilityNodeInfosByText(String str, int i2) {
            List<d> a2 = this.f1977a.a(str, i2);
            if (a2 == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            int size = a2.size();
            for (int i3 = 0; i3 < size; i3++) {
                arrayList.add(a2.get(i3).x());
            }
            return arrayList;
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public boolean performAction(int i2, int i3, Bundle bundle) {
            return this.f1977a.a(i2, i3, bundle);
        }
    }

    /* compiled from: AccessibilityNodeProviderCompat.java */
    @RequiresApi(19)
    /* loaded from: classes.dex */
    static class b extends a {
        b(e eVar) {
            super(eVar);
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public AccessibilityNodeInfo findFocus(int i2) {
            d b2 = this.f1977a.b(i2);
            if (b2 == null) {
                return null;
            }
            return b2.x();
        }
    }

    public e() {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 19) {
            this.f1976a = new b(this);
        } else if (i2 >= 16) {
            this.f1976a = new a(this);
        } else {
            this.f1976a = null;
        }
    }

    @Nullable
    public d a(int i2) {
        return null;
    }

    public Object a() {
        return this.f1976a;
    }

    @Nullable
    public List<d> a(String str, int i2) {
        return null;
    }

    public boolean a(int i2, int i3, Bundle bundle) {
        return false;
    }

    @Nullable
    public d b(int i2) {
        return null;
    }

    public e(Object obj) {
        this.f1976a = obj;
    }
}
