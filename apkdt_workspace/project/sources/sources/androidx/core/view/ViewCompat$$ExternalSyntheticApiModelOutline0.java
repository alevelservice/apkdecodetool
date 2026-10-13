package androidx.core.view;

import android.graphics.Insets;
import android.view.PointerIcon;
import android.view.WindowInsets;
import android.view.WindowInsetsAnimation;
import android.view.WindowInsetsAnimationController;
import android.view.WindowInsetsController$OnControllableInsetsChangedListener;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.Interpolator;

/* compiled from: D8$$SyntheticClass */
/* loaded from: classes.dex */
public final /* synthetic */ class ViewCompat$$ExternalSyntheticApiModelOutline0 {
    public static /* bridge */ /* synthetic */ int m(AccessibilityNodeInfo accessibilityNodeInfo) {
        return accessibilityNodeInfo.getDrawingOrder();
    }

    public static /* bridge */ /* synthetic */ PointerIcon m(Object obj) {
        return (PointerIcon) obj;
    }

    /* renamed from: m, reason: collision with other method in class */
    public static /* synthetic */ WindowInsets.Builder m158m() {
        return new WindowInsets.Builder();
    }

    /* renamed from: m, reason: collision with other method in class */
    public static /* synthetic */ WindowInsets.Builder m159m(WindowInsets windowInsets) {
        return new WindowInsets.Builder(windowInsets);
    }

    public static /* synthetic */ WindowInsetsAnimation.Bounds m(Insets insets, Insets insets2) {
        return new WindowInsetsAnimation.Bounds(insets, insets2);
    }

    public static /* synthetic */ WindowInsetsAnimation m(int i, Interpolator interpolator, long j) {
        return new WindowInsetsAnimation(i, interpolator, j);
    }

    /* renamed from: m, reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ WindowInsetsAnimation m162m(Object obj) {
        return (WindowInsetsAnimation) obj;
    }

    /* renamed from: m, reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ WindowInsetsController$OnControllableInsetsChangedListener m163m(Object obj) {
        return (WindowInsetsController$OnControllableInsetsChangedListener) obj;
    }

    /* renamed from: m, reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ AccessibilityNodeInfo.TouchDelegateInfo m164m(AccessibilityNodeInfo accessibilityNodeInfo) {
        return accessibilityNodeInfo.getTouchDelegateInfo();
    }

    /* renamed from: m, reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ CharSequence m167m(AccessibilityNodeInfo accessibilityNodeInfo) {
        return accessibilityNodeInfo.getHintText();
    }

    /* renamed from: m, reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ Class m168m() {
        return WindowInsetsAnimationController.class;
    }

    /* renamed from: m, reason: collision with other method in class */
    public static /* synthetic */ void m169m() {
    }

    public static /* bridge */ /* synthetic */ void m(AccessibilityNodeInfo accessibilityNodeInfo, int i) {
        accessibilityNodeInfo.setDrawingOrder(i);
    }

    public static /* bridge */ /* synthetic */ void m(AccessibilityNodeInfo accessibilityNodeInfo, AccessibilityNodeInfo.TouchDelegateInfo touchDelegateInfo) {
        accessibilityNodeInfo.setTouchDelegateInfo(touchDelegateInfo);
    }

    public static /* bridge */ /* synthetic */ void m(AccessibilityNodeInfo accessibilityNodeInfo, CharSequence charSequence) {
        accessibilityNodeInfo.setHintText(charSequence);
    }

    public static /* bridge */ /* synthetic */ void m(AccessibilityNodeInfo accessibilityNodeInfo, boolean z) {
        accessibilityNodeInfo.setShowingHintText(z);
    }

    /* renamed from: m, reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ boolean m173m(AccessibilityNodeInfo accessibilityNodeInfo) {
        return accessibilityNodeInfo.isImportantForAccessibility();
    }

    public static /* bridge */ /* synthetic */ CharSequence m$1(AccessibilityNodeInfo accessibilityNodeInfo) {
        return accessibilityNodeInfo.getStateDescription();
    }

    public static /* bridge */ /* synthetic */ void m$1(AccessibilityNodeInfo accessibilityNodeInfo, CharSequence charSequence) {
        accessibilityNodeInfo.setTooltipText(charSequence);
    }

    public static /* bridge */ /* synthetic */ void m$1(AccessibilityNodeInfo accessibilityNodeInfo, boolean z) {
        accessibilityNodeInfo.setHeading(z);
    }

    /* renamed from: m$1, reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ boolean m176m$1(AccessibilityNodeInfo accessibilityNodeInfo) {
        return accessibilityNodeInfo.isScreenReaderFocusable();
    }

    public static /* bridge */ /* synthetic */ void m$2(AccessibilityNodeInfo accessibilityNodeInfo, boolean z) {
        accessibilityNodeInfo.setTextEntryKey(z);
    }

    public static /* bridge */ /* synthetic */ boolean m$2(AccessibilityNodeInfo accessibilityNodeInfo) {
        return accessibilityNodeInfo.isShowingHintText();
    }

    public static /* bridge */ /* synthetic */ void m$3(AccessibilityNodeInfo accessibilityNodeInfo, boolean z) {
        accessibilityNodeInfo.setScreenReaderFocusable(z);
    }

    public static /* bridge */ /* synthetic */ boolean m$3(AccessibilityNodeInfo accessibilityNodeInfo) {
        return accessibilityNodeInfo.isHeading();
    }

    public static /* bridge */ /* synthetic */ boolean m$4(AccessibilityNodeInfo accessibilityNodeInfo) {
        return accessibilityNodeInfo.isTextEntryKey();
    }

    public static /* bridge */ /* synthetic */ boolean m$5(AccessibilityNodeInfo accessibilityNodeInfo) {
        return accessibilityNodeInfo.isContextClickable();
    }
}
