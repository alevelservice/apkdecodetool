package androidx.core.view;

import android.graphics.Rect;
import android.os.Build;
import android.view.DisplayCutout;
import androidx.core.graphics.Insets;
import androidx.core.os.BuildCompat;
import androidx.core.os.TraceCompat$$ExternalSyntheticApiModelOutline0;
import androidx.core.util.ObjectsCompat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class DisplayCutoutCompat {
    private final Object mDisplayCutout;

    public DisplayCutoutCompat(Rect rect, List<Rect> list) {
        this(Build.VERSION.SDK_INT >= 28 ? TraceCompat$$ExternalSyntheticApiModelOutline0.m(rect, list) : null);
    }

    public DisplayCutoutCompat(Insets insets, Rect rect, Rect rect2, Rect rect3, Rect rect4, Insets insets2) {
        this(constructDisplayCutout(insets, rect, rect2, rect3, rect4, insets2));
    }

    private static DisplayCutout constructDisplayCutout(Insets insets, Rect rect, Rect rect2, Rect rect3, Rect rect4, Insets insets2) {
        if (BuildCompat.isAtLeastR()) {
            TraceCompat$$ExternalSyntheticApiModelOutline0.m$2();
            return TraceCompat$$ExternalSyntheticApiModelOutline0.m(insets.toPlatformInsets(), rect, rect2, rect3, rect4, insets2.toPlatformInsets());
        }
        if (Build.VERSION.SDK_INT >= 29) {
            TraceCompat$$ExternalSyntheticApiModelOutline0.m$2();
            return TraceCompat$$ExternalSyntheticApiModelOutline0.m(insets.toPlatformInsets(), rect, rect2, rect3, rect4);
        }
        if (Build.VERSION.SDK_INT < 28) {
            return null;
        }
        Rect rect5 = new Rect(insets.left, insets.f11top, insets.right, insets.bottom);
        ArrayList arrayList = new ArrayList();
        if (rect != null) {
            arrayList.add(rect);
        }
        if (rect2 != null) {
            arrayList.add(rect2);
        }
        if (rect3 != null) {
            arrayList.add(rect3);
        }
        if (rect4 != null) {
            arrayList.add(rect4);
        }
        return TraceCompat$$ExternalSyntheticApiModelOutline0.m(rect5, arrayList);
    }

    private DisplayCutoutCompat(Object obj) {
        this.mDisplayCutout = obj;
    }

    public int getSafeInsetTop() {
        int safeInsetTop;
        if (Build.VERSION.SDK_INT < 28) {
            return 0;
        }
        safeInsetTop = TraceCompat$$ExternalSyntheticApiModelOutline0.m136m(this.mDisplayCutout).getSafeInsetTop();
        return safeInsetTop;
    }

    public int getSafeInsetBottom() {
        int safeInsetBottom;
        if (Build.VERSION.SDK_INT < 28) {
            return 0;
        }
        safeInsetBottom = TraceCompat$$ExternalSyntheticApiModelOutline0.m136m(this.mDisplayCutout).getSafeInsetBottom();
        return safeInsetBottom;
    }

    public int getSafeInsetLeft() {
        int safeInsetLeft;
        if (Build.VERSION.SDK_INT < 28) {
            return 0;
        }
        safeInsetLeft = TraceCompat$$ExternalSyntheticApiModelOutline0.m136m(this.mDisplayCutout).getSafeInsetLeft();
        return safeInsetLeft;
    }

    public int getSafeInsetRight() {
        int safeInsetRight;
        if (Build.VERSION.SDK_INT < 28) {
            return 0;
        }
        safeInsetRight = TraceCompat$$ExternalSyntheticApiModelOutline0.m136m(this.mDisplayCutout).getSafeInsetRight();
        return safeInsetRight;
    }

    public List<Rect> getBoundingRects() {
        List<Rect> boundingRects;
        if (Build.VERSION.SDK_INT >= 28) {
            boundingRects = TraceCompat$$ExternalSyntheticApiModelOutline0.m136m(this.mDisplayCutout).getBoundingRects();
            return boundingRects;
        }
        return Collections.emptyList();
    }

    public Insets getWaterfallInsets() {
        android.graphics.Insets waterfallInsets;
        if (BuildCompat.isAtLeastR()) {
            waterfallInsets = TraceCompat$$ExternalSyntheticApiModelOutline0.m136m(this.mDisplayCutout).getWaterfallInsets();
            return Insets.toCompatInsets(waterfallInsets);
        }
        return Insets.NONE;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return ObjectsCompat.equals(this.mDisplayCutout, ((DisplayCutoutCompat) obj).mDisplayCutout);
    }

    public int hashCode() {
        Object obj = this.mDisplayCutout;
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    public String toString() {
        return "DisplayCutoutCompat{" + this.mDisplayCutout + "}";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static DisplayCutoutCompat wrap(Object obj) {
        if (obj == null) {
            return null;
        }
        return new DisplayCutoutCompat(obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DisplayCutout unwrap() {
        return TraceCompat$$ExternalSyntheticApiModelOutline0.m136m(this.mDisplayCutout);
    }
}
