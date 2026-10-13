package androidx.core.view.f0;

import android.R;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.style.ClickableSpan;
import android.util.SparseArray;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.view.f0.g;
import com.alipay.mobile.security.bio.utils.FileUtil;
import com.alipay.mobile.security.faceauth.api.AntDetector;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* compiled from: AccessibilityNodeInfoCompat.java */
/* loaded from: classes.dex */
public class d {

    /* renamed from: d, reason: collision with root package name */
    private static int f1960d;

    /* renamed from: a, reason: collision with root package name */
    private final AccessibilityNodeInfo f1961a;

    /* renamed from: b, reason: collision with root package name */
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public int f1962b = -1;

    /* renamed from: c, reason: collision with root package name */
    private int f1963c = -1;

    /* compiled from: AccessibilityNodeInfoCompat.java */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: d, reason: collision with root package name */
        public static final a f1964d = new a(1, null);

        /* renamed from: e, reason: collision with root package name */
        public static final a f1965e = new a(2, null);

        /* renamed from: f, reason: collision with root package name */
        public static final a f1966f;

        /* renamed from: g, reason: collision with root package name */
        public static final a f1967g;

        /* renamed from: h, reason: collision with root package name */
        public static final a f1968h;

        /* renamed from: i, reason: collision with root package name */
        public static final a f1969i;

        /* renamed from: j, reason: collision with root package name */
        public static final a f1970j;

        /* renamed from: a, reason: collision with root package name */
        final Object f1971a;

        /* renamed from: b, reason: collision with root package name */
        private final Class<? extends g.a> f1972b;

        /* renamed from: c, reason: collision with root package name */
        @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
        protected final g f1973c;

        static {
            new a(4, null);
            new a(8, null);
            f1966f = new a(16, null);
            new a(32, null);
            new a(64, null);
            new a(128, null);
            new a(256, null, g.b.class);
            new a(512, null, g.b.class);
            new a(1024, null, g.c.class);
            new a(2048, null, g.c.class);
            f1967g = new a(4096, null);
            f1968h = new a(FileUtil.STREAM_BUFFER_SIZE, null);
            new a(16384, null);
            new a(32768, null);
            new a(AntDetector.ACTION_ID_SAMPLE, null);
            new a(AntDetector.SCENE_ID_LOGIN_REGIST, null, g.C0038g.class);
            new a(262144, null);
            new a(524288, null);
            new a(1048576, null);
            new a(2097152, null, g.h.class);
            new a(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_ON_SCREEN : null, R.id.accessibilityActionShowOnScreen, null, null, null);
            new a(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_TO_POSITION : null, R.id.accessibilityActionScrollToPosition, null, null, g.e.class);
            f1969i = new a(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_UP : null, R.id.accessibilityActionScrollUp, null, null, null);
            new a(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_LEFT : null, R.id.accessibilityActionScrollLeft, null, null, null);
            f1970j = new a(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_DOWN : null, R.id.accessibilityActionScrollDown, null, null, null);
            new a(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_RIGHT : null, R.id.accessibilityActionScrollRight, null, null, null);
            new a(Build.VERSION.SDK_INT >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_UP : null, R.id.accessibilityActionPageUp, null, null, null);
            new a(Build.VERSION.SDK_INT >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_DOWN : null, R.id.accessibilityActionPageDown, null, null, null);
            new a(Build.VERSION.SDK_INT >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_LEFT : null, R.id.accessibilityActionPageLeft, null, null, null);
            new a(Build.VERSION.SDK_INT >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_RIGHT : null, R.id.accessibilityActionPageRight, null, null, null);
            new a(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_CONTEXT_CLICK : null, R.id.accessibilityActionContextClick, null, null, null);
            new a(Build.VERSION.SDK_INT >= 24 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SET_PROGRESS : null, R.id.accessibilityActionSetProgress, null, null, g.f.class);
            new a(Build.VERSION.SDK_INT >= 26 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_MOVE_WINDOW : null, R.id.accessibilityActionMoveWindow, null, null, g.d.class);
            new a(Build.VERSION.SDK_INT >= 28 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_TOOLTIP : null, R.id.accessibilityActionShowTooltip, null, null, null);
            new a(Build.VERSION.SDK_INT >= 28 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_HIDE_TOOLTIP : null, R.id.accessibilityActionHideTooltip, null, null, null);
        }

        public a(int i2, CharSequence charSequence) {
            this(null, i2, charSequence, null, null);
        }

        public int a() {
            if (Build.VERSION.SDK_INT >= 21) {
                return ((AccessibilityNodeInfo.AccessibilityAction) this.f1971a).getId();
            }
            return 0;
        }

        public CharSequence b() {
            if (Build.VERSION.SDK_INT >= 21) {
                return ((AccessibilityNodeInfo.AccessibilityAction) this.f1971a).getLabel();
            }
            return null;
        }

        public boolean equals(@Nullable Object obj) {
            if (obj == null || !(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            Object obj2 = this.f1971a;
            return obj2 == null ? aVar.f1971a == null : obj2.equals(aVar.f1971a);
        }

        public int hashCode() {
            Object obj = this.f1971a;
            if (obj != null) {
                return obj.hashCode();
            }
            return 0;
        }

        a(Object obj) {
            this(obj, 0, null, null, null);
        }

        private a(int i2, CharSequence charSequence, Class<? extends g.a> cls) {
            this(null, i2, charSequence, null, cls);
        }

        @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
        public boolean a(View view, Bundle bundle) {
            g.a newInstance;
            if (this.f1973c == null) {
                return false;
            }
            g.a aVar = null;
            Class<? extends g.a> cls = this.f1972b;
            if (cls != null) {
                try {
                    newInstance = cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                } catch (Exception unused) {
                }
                try {
                    newInstance.a(bundle);
                    aVar = newInstance;
                } catch (Exception unused2) {
                    aVar = newInstance;
                    Class<? extends g.a> cls2 = this.f1972b;
                    String str = "Failed to execute command with argument class ViewCommandArgument: " + (cls2 == null ? "null" : cls2.getName());
                    return this.f1973c.a(view, aVar);
                }
            }
            return this.f1973c.a(view, aVar);
        }

        a(Object obj, int i2, CharSequence charSequence, g gVar, Class<? extends g.a> cls) {
            this.f1973c = gVar;
            if (Build.VERSION.SDK_INT >= 21 && obj == null) {
                this.f1971a = new AccessibilityNodeInfo.AccessibilityAction(i2, charSequence);
            } else {
                this.f1971a = obj;
            }
            this.f1972b = cls;
        }
    }

    /* compiled from: AccessibilityNodeInfoCompat.java */
    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a, reason: collision with root package name */
        final Object f1974a;

        b(Object obj) {
            this.f1974a = obj;
        }

        public static b a(int i2, int i3, boolean z, int i4) {
            int i5 = Build.VERSION.SDK_INT;
            if (i5 >= 21) {
                return new b(AccessibilityNodeInfo.CollectionInfo.obtain(i2, i3, z, i4));
            }
            if (i5 >= 19) {
                return new b(AccessibilityNodeInfo.CollectionInfo.obtain(i2, i3, z));
            }
            return new b(null);
        }
    }

    /* compiled from: AccessibilityNodeInfoCompat.java */
    /* loaded from: classes.dex */
    public static class c {

        /* renamed from: a, reason: collision with root package name */
        final Object f1975a;

        c(Object obj) {
            this.f1975a = obj;
        }

        public static c a(int i2, int i3, int i4, int i5, boolean z, boolean z2) {
            int i6 = Build.VERSION.SDK_INT;
            if (i6 >= 21) {
                return new c(AccessibilityNodeInfo.CollectionItemInfo.obtain(i2, i3, i4, i5, z, z2));
            }
            if (i6 >= 19) {
                return new c(AccessibilityNodeInfo.CollectionItemInfo.obtain(i2, i3, i4, i5, z));
            }
            return new c(null);
        }
    }

    private d(AccessibilityNodeInfo accessibilityNodeInfo) {
        this.f1961a = accessibilityNodeInfo;
    }

    public static d A() {
        return a(AccessibilityNodeInfo.obtain());
    }

    public static d a(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        return new d(accessibilityNodeInfo);
    }

    private static String c(int i2) {
        if (i2 == 1) {
            return "ACTION_FOCUS";
        }
        if (i2 == 2) {
            return "ACTION_CLEAR_FOCUS";
        }
        switch (i2) {
            case 4:
                return "ACTION_SELECT";
            case 8:
                return "ACTION_CLEAR_SELECTION";
            case 16:
                return "ACTION_CLICK";
            case 32:
                return "ACTION_LONG_CLICK";
            case 64:
                return "ACTION_ACCESSIBILITY_FOCUS";
            case 128:
                return "ACTION_CLEAR_ACCESSIBILITY_FOCUS";
            case 256:
                return "ACTION_NEXT_AT_MOVEMENT_GRANULARITY";
            case 512:
                return "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY";
            case 1024:
                return "ACTION_NEXT_HTML_ELEMENT";
            case 2048:
                return "ACTION_PREVIOUS_HTML_ELEMENT";
            case 4096:
                return "ACTION_SCROLL_FORWARD";
            case FileUtil.STREAM_BUFFER_SIZE /* 8192 */:
                return "ACTION_SCROLL_BACKWARD";
            case 16384:
                return "ACTION_COPY";
            case 32768:
                return "ACTION_PASTE";
            case AntDetector.ACTION_ID_SAMPLE /* 65536 */:
                return "ACTION_CUT";
            case AntDetector.SCENE_ID_LOGIN_REGIST /* 131072 */:
                return "ACTION_SET_SELECTION";
            case 262144:
                return "ACTION_EXPAND";
            case 524288:
                return "ACTION_COLLAPSE";
            case 2097152:
                return "ACTION_SET_TEXT";
            case R.id.accessibilityActionMoveWindow:
                return "ACTION_MOVE_WINDOW";
            default:
                switch (i2) {
                    case R.id.accessibilityActionShowOnScreen:
                        return "ACTION_SHOW_ON_SCREEN";
                    case R.id.accessibilityActionScrollToPosition:
                        return "ACTION_SCROLL_TO_POSITION";
                    case R.id.accessibilityActionScrollUp:
                        return "ACTION_SCROLL_UP";
                    case R.id.accessibilityActionScrollLeft:
                        return "ACTION_SCROLL_LEFT";
                    case R.id.accessibilityActionScrollDown:
                        return "ACTION_SCROLL_DOWN";
                    case R.id.accessibilityActionScrollRight:
                        return "ACTION_SCROLL_RIGHT";
                    case R.id.accessibilityActionContextClick:
                        return "ACTION_CONTEXT_CLICK";
                    case R.id.accessibilityActionSetProgress:
                        return "ACTION_SET_PROGRESS";
                    default:
                        switch (i2) {
                            case R.id.accessibilityActionShowTooltip:
                                return "ACTION_SHOW_TOOLTIP";
                            case R.id.accessibilityActionHideTooltip:
                                return "ACTION_HIDE_TOOLTIP";
                            case R.id.accessibilityActionPageUp:
                                return "ACTION_PAGE_UP";
                            case R.id.accessibilityActionPageDown:
                                return "ACTION_PAGE_DOWN";
                            case R.id.accessibilityActionPageLeft:
                                return "ACTION_PAGE_LEFT";
                            case R.id.accessibilityActionPageRight:
                                return "ACTION_PAGE_RIGHT";
                            default:
                                return "ACTION_UNKNOWN";
                        }
                }
        }
    }

    public static d f(View view) {
        return a(AccessibilityNodeInfo.obtain(view));
    }

    private void y() {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f1961a.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY");
            this.f1961a.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY");
            this.f1961a.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY");
            this.f1961a.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY");
        }
    }

    private boolean z() {
        return !a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY").isEmpty();
    }

    public int b() {
        return this.f1961a.getActions();
    }

    public void c(View view) {
        this.f1963c = -1;
        this.f1961a.setSource(view);
    }

    public void d(Rect rect) {
        this.f1961a.setBoundsInScreen(rect);
    }

    public void e(boolean z) {
        this.f1961a.setClickable(z);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        AccessibilityNodeInfo accessibilityNodeInfo = this.f1961a;
        if (accessibilityNodeInfo == null) {
            if (dVar.f1961a != null) {
                return false;
            }
        } else if (!accessibilityNodeInfo.equals(dVar.f1961a)) {
            return false;
        }
        return this.f1963c == dVar.f1963c && this.f1962b == dVar.f1962b;
    }

    public int g() {
        if (Build.VERSION.SDK_INT >= 16) {
            return this.f1961a.getMovementGranularities();
        }
        return 0;
    }

    public void h(boolean z) {
        this.f1961a.setFocusable(z);
    }

    public int hashCode() {
        AccessibilityNodeInfo accessibilityNodeInfo = this.f1961a;
        if (accessibilityNodeInfo == null) {
            return 0;
        }
        return accessibilityNodeInfo.hashCode();
    }

    public void i(boolean z) {
        this.f1961a.setFocused(z);
    }

    public String j() {
        if (Build.VERSION.SDK_INT >= 18) {
            return this.f1961a.getViewIdResourceName();
        }
        return null;
    }

    public boolean k() {
        if (Build.VERSION.SDK_INT >= 16) {
            return this.f1961a.isAccessibilityFocused();
        }
        return false;
    }

    public boolean l() {
        return this.f1961a.isCheckable();
    }

    public boolean m() {
        return this.f1961a.isChecked();
    }

    public void n(boolean z) {
        this.f1961a.setSelected(z);
    }

    public boolean o() {
        return this.f1961a.isEnabled();
    }

    public boolean p() {
        return this.f1961a.isFocusable();
    }

    public boolean q() {
        return this.f1961a.isFocused();
    }

    public boolean r() {
        return this.f1961a.isLongClickable();
    }

    public boolean s() {
        return this.f1961a.isPassword();
    }

    public boolean t() {
        return this.f1961a.isScrollable();
    }

    @NonNull
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        Rect rect = new Rect();
        a(rect);
        sb.append("; boundsInParent: " + rect);
        b(rect);
        sb.append("; boundsInScreen: " + rect);
        sb.append("; packageName: ");
        sb.append(h());
        sb.append("; className: ");
        sb.append(d());
        sb.append("; text: ");
        sb.append(i());
        sb.append("; contentDescription: ");
        sb.append(e());
        sb.append("; viewId: ");
        sb.append(j());
        sb.append("; checkable: ");
        sb.append(l());
        sb.append("; checked: ");
        sb.append(m());
        sb.append("; focusable: ");
        sb.append(p());
        sb.append("; focused: ");
        sb.append(q());
        sb.append("; selected: ");
        sb.append(u());
        sb.append("; clickable: ");
        sb.append(n());
        sb.append("; longClickable: ");
        sb.append(r());
        sb.append("; enabled: ");
        sb.append(o());
        sb.append("; password: ");
        sb.append(s());
        sb.append("; scrollable: " + t());
        sb.append("; [");
        if (Build.VERSION.SDK_INT >= 21) {
            List<a> a2 = a();
            for (int i2 = 0; i2 < a2.size(); i2++) {
                a aVar = a2.get(i2);
                String c2 = c(aVar.a());
                if (c2.equals("ACTION_UNKNOWN") && aVar.b() != null) {
                    c2 = aVar.b().toString();
                }
                sb.append(c2);
                if (i2 != a2.size() - 1) {
                    sb.append(", ");
                }
            }
        } else {
            int b2 = b();
            while (b2 != 0) {
                int numberOfTrailingZeros = 1 << Integer.numberOfTrailingZeros(b2);
                b2 &= numberOfTrailingZeros ^ (-1);
                sb.append(c(numberOfTrailingZeros));
                if (b2 != 0) {
                    sb.append(", ");
                }
            }
        }
        sb.append("]");
        return sb.toString();
    }

    public boolean u() {
        return this.f1961a.isSelected();
    }

    public boolean v() {
        if (Build.VERSION.SDK_INT >= 16) {
            return this.f1961a.isVisibleToUser();
        }
        return false;
    }

    public void w() {
        this.f1961a.recycle();
    }

    public AccessibilityNodeInfo x() {
        return this.f1961a;
    }

    public static d a(d dVar) {
        return a(AccessibilityNodeInfo.obtain(dVar.f1961a));
    }

    public boolean b(a aVar) {
        if (Build.VERSION.SDK_INT >= 21) {
            return this.f1961a.removeAction((AccessibilityNodeInfo.AccessibilityAction) aVar.f1971a);
        }
        return false;
    }

    public void d(boolean z) {
        this.f1961a.setChecked(z);
    }

    public void e(CharSequence charSequence) {
        this.f1961a.setPackageName(charSequence);
    }

    public void f(boolean z) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f1961a.setContentInvalid(z);
        }
    }

    public CharSequence h() {
        return this.f1961a.getPackageName();
    }

    public CharSequence i() {
        if (z()) {
            List<Integer> a2 = a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY");
            List<Integer> a3 = a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY");
            List<Integer> a4 = a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY");
            List<Integer> a5 = a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY");
            SpannableString spannableString = new SpannableString(TextUtils.substring(this.f1961a.getText(), 0, this.f1961a.getText().length()));
            for (int i2 = 0; i2 < a2.size(); i2++) {
                spannableString.setSpan(new androidx.core.view.f0.a(a5.get(i2).intValue(), this, f().getInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ACTION_ID_KEY")), a2.get(i2).intValue(), a3.get(i2).intValue(), a4.get(i2).intValue());
            }
            return spannableString;
        }
        return this.f1961a.getText();
    }

    public void l(boolean z) {
        if (Build.VERSION.SDK_INT >= 28) {
            this.f1961a.setScreenReaderFocusable(z);
        } else {
            a(1, z);
        }
    }

    public void m(boolean z) {
        this.f1961a.setScrollable(z);
    }

    public boolean n() {
        return this.f1961a.isClickable();
    }

    public void o(boolean z) {
        if (Build.VERSION.SDK_INT >= 26) {
            this.f1961a.setShowingHintText(z);
        } else {
            a(4, z);
        }
    }

    public void p(boolean z) {
        if (Build.VERSION.SDK_INT >= 16) {
            this.f1961a.setVisibleToUser(z);
        }
    }

    private SparseArray<WeakReference<ClickableSpan>> e(View view) {
        return (SparseArray) view.getTag(a.i.d.tag_accessibility_clickable_spans);
    }

    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public static ClickableSpan[] h(CharSequence charSequence) {
        if (charSequence instanceof Spanned) {
            return (ClickableSpan[]) ((Spanned) charSequence).getSpans(0, charSequence.length(), ClickableSpan.class);
        }
        return null;
    }

    public void a(View view) {
        this.f1961a.addChild(view);
    }

    public void c(View view, int i2) {
        this.f1963c = i2;
        if (Build.VERSION.SDK_INT >= 16) {
            this.f1961a.setSource(view, i2);
        }
    }

    public CharSequence d() {
        return this.f1961a.getClassName();
    }

    public void g(boolean z) {
        this.f1961a.setEnabled(z);
    }

    public void j(boolean z) {
        if (Build.VERSION.SDK_INT >= 28) {
            this.f1961a.setHeading(z);
        } else {
            a(2, z);
        }
    }

    public void k(boolean z) {
        this.f1961a.setLongClickable(z);
    }

    private SparseArray<WeakReference<ClickableSpan>> d(View view) {
        SparseArray<WeakReference<ClickableSpan>> e2 = e(view);
        if (e2 != null) {
            return e2;
        }
        SparseArray<WeakReference<ClickableSpan>> sparseArray = new SparseArray<>();
        view.setTag(a.i.d.tag_accessibility_clickable_spans, sparseArray);
        return sparseArray;
    }

    public void a(View view, int i2) {
        if (Build.VERSION.SDK_INT >= 16) {
            this.f1961a.addChild(view, i2);
        }
    }

    public void b(int i2) {
        if (Build.VERSION.SDK_INT >= 16) {
            this.f1961a.setMovementGranularities(i2);
        }
    }

    public CharSequence e() {
        return this.f1961a.getContentDescription();
    }

    public Bundle f() {
        if (Build.VERSION.SDK_INT >= 19) {
            return this.f1961a.getExtras();
        }
        return new Bundle();
    }

    public void g(CharSequence charSequence) {
        this.f1961a.setText(charSequence);
    }

    private void g(View view) {
        SparseArray<WeakReference<ClickableSpan>> e2 = e(view);
        if (e2 != null) {
            ArrayList arrayList = new ArrayList();
            for (int i2 = 0; i2 < e2.size(); i2++) {
                if (e2.valueAt(i2).get() == null) {
                    arrayList.add(Integer.valueOf(i2));
                }
            }
            for (int i3 = 0; i3 < arrayList.size(); i3++) {
                e2.remove(((Integer) arrayList.get(i3)).intValue());
            }
        }
    }

    public void a(int i2) {
        this.f1961a.addAction(i2);
    }

    public void b(View view) {
        this.f1962b = -1;
        this.f1961a.setParent(view);
    }

    public int c() {
        return this.f1961a.getChildCount();
    }

    private List<Integer> a(String str) {
        if (Build.VERSION.SDK_INT < 19) {
            return new ArrayList();
        }
        ArrayList<Integer> integerArrayList = this.f1961a.getExtras().getIntegerArrayList(str);
        if (integerArrayList != null) {
            return integerArrayList;
        }
        ArrayList<Integer> arrayList = new ArrayList<>();
        this.f1961a.getExtras().putIntegerArrayList(str, arrayList);
        return arrayList;
    }

    @Deprecated
    public void c(Rect rect) {
        this.f1961a.setBoundsInParent(rect);
    }

    public void d(@Nullable CharSequence charSequence) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 26) {
            this.f1961a.setHintText(charSequence);
        } else if (i2 >= 19) {
            this.f1961a.getExtras().putCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.HINT_TEXT_KEY", charSequence);
        }
    }

    public void f(@Nullable CharSequence charSequence) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 28) {
            this.f1961a.setPaneTitle(charSequence);
        } else if (i2 >= 19) {
            this.f1961a.getExtras().putCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.PANE_TITLE_KEY", charSequence);
        }
    }

    public void b(View view, int i2) {
        this.f1962b = i2;
        if (Build.VERSION.SDK_INT >= 16) {
            this.f1961a.setParent(view, i2);
        }
    }

    public void c(boolean z) {
        this.f1961a.setCheckable(z);
    }

    public void c(CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 21) {
            this.f1961a.setError(charSequence);
        }
    }

    public void b(Rect rect) {
        this.f1961a.getBoundsInScreen(rect);
    }

    public void b(CharSequence charSequence) {
        this.f1961a.setContentDescription(charSequence);
    }

    public void a(a aVar) {
        if (Build.VERSION.SDK_INT >= 21) {
            this.f1961a.addAction((AccessibilityNodeInfo.AccessibilityAction) aVar.f1971a);
        }
    }

    public void b(Object obj) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f1961a.setCollectionItemInfo(obj == null ? null : (AccessibilityNodeInfo.CollectionItemInfo) ((c) obj).f1975a);
        }
    }

    public boolean a(int i2, Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 16) {
            return this.f1961a.performAction(i2, bundle);
        }
        return false;
    }

    @Deprecated
    public void a(Rect rect) {
        this.f1961a.getBoundsInParent(rect);
    }

    public void b(boolean z) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f1961a.setCanOpenPopup(z);
        }
    }

    public void a(boolean z) {
        if (Build.VERSION.SDK_INT >= 16) {
            this.f1961a.setAccessibilityFocused(z);
        }
    }

    public void a(CharSequence charSequence) {
        this.f1961a.setClassName(charSequence);
    }

    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public void a(CharSequence charSequence, View view) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 < 19 || i2 >= 26) {
            return;
        }
        y();
        g(view);
        ClickableSpan[] h2 = h(charSequence);
        if (h2 == null || h2.length <= 0) {
            return;
        }
        f().putInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ACTION_ID_KEY", a.i.d.accessibility_action_clickable_span);
        SparseArray<WeakReference<ClickableSpan>> d2 = d(view);
        for (int i3 = 0; h2 != null && i3 < h2.length; i3++) {
            int a2 = a(h2[i3], d2);
            d2.put(a2, new WeakReference<>(h2[i3]));
            a(h2[i3], (Spanned) charSequence, a2);
        }
    }

    private int a(ClickableSpan clickableSpan, SparseArray<WeakReference<ClickableSpan>> sparseArray) {
        if (sparseArray != null) {
            for (int i2 = 0; i2 < sparseArray.size(); i2++) {
                if (clickableSpan.equals(sparseArray.valueAt(i2).get())) {
                    return sparseArray.keyAt(i2);
                }
            }
        }
        int i3 = f1960d;
        f1960d = i3 + 1;
        return i3;
    }

    private void a(ClickableSpan clickableSpan, Spanned spanned, int i2) {
        a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY").add(Integer.valueOf(spanned.getSpanStart(clickableSpan)));
        a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY").add(Integer.valueOf(spanned.getSpanEnd(clickableSpan)));
        a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY").add(Integer.valueOf(spanned.getSpanFlags(clickableSpan)));
        a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY").add(Integer.valueOf(i2));
    }

    public void a(Object obj) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f1961a.setCollectionInfo(obj == null ? null : (AccessibilityNodeInfo.CollectionInfo) ((b) obj).f1974a);
        }
    }

    public List<a> a() {
        List<AccessibilityNodeInfo.AccessibilityAction> actionList = Build.VERSION.SDK_INT >= 21 ? this.f1961a.getActionList() : null;
        if (actionList != null) {
            ArrayList arrayList = new ArrayList();
            int size = actionList.size();
            for (int i2 = 0; i2 < size; i2++) {
                arrayList.add(new a(actionList.get(i2)));
            }
            return arrayList;
        }
        return Collections.emptyList();
    }

    private void a(int i2, boolean z) {
        Bundle f2 = f();
        if (f2 != null) {
            int i3 = f2.getInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY", 0) & (i2 ^ (-1));
            if (!z) {
                i2 = 0;
            }
            f2.putInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY", i2 | i3);
        }
    }
}
