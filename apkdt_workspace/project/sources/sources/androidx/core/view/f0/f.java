package androidx.core.view.f0;

import android.os.Build;
import android.view.View;
import android.view.accessibility.AccessibilityRecord;
import androidx.annotation.NonNull;

/* compiled from: AccessibilityRecordCompat.java */
/* loaded from: classes.dex */
public class f {
    public static void a(@NonNull AccessibilityRecord accessibilityRecord, View view, int i2) {
        if (Build.VERSION.SDK_INT >= 16) {
            accessibilityRecord.setSource(view, i2);
        }
    }

    public static void b(AccessibilityRecord accessibilityRecord, int i2) {
        if (Build.VERSION.SDK_INT >= 15) {
            accessibilityRecord.setMaxScrollY(i2);
        }
    }

    public static void a(AccessibilityRecord accessibilityRecord, int i2) {
        if (Build.VERSION.SDK_INT >= 15) {
            accessibilityRecord.setMaxScrollX(i2);
        }
    }
}
