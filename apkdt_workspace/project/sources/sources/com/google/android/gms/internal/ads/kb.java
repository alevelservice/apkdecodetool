package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.app.Activity;
import android.graphics.Rect;
import android.text.TextUtils;
import android.view.DisplayCutout;
import android.view.View;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowManager;
import java.util.Locale;
import javax.annotation.ParametersAreNonnullByDefault;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@ParametersAreNonnullByDefault
@TargetApi(28)
/* loaded from: classes.dex */
public final class kb extends lb {
    @Override // com.google.android.gms.internal.ads.db
    public final void a(final Activity activity) {
        if (((Boolean) mu1.e().a(aw1.S0)).booleanValue() && com.google.android.gms.ads.internal.n.g().i().a() == null && !activity.isInMultiWindowMode()) {
            a(true, activity);
            activity.getWindow().getDecorView().setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener(this, activity) { // from class: com.google.android.gms.internal.ads.nb

                /* renamed from: a, reason: collision with root package name */
                private final Activity f8309a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f8309a = activity;
                }

                @Override // android.view.View.OnApplyWindowInsetsListener
                public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                    return kb.a(this.f8309a, view, windowInsets);
                }
            });
        }
    }

    private static void a(boolean z, Activity activity) {
        Window window = activity.getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        int i2 = attributes.layoutInDisplayCutoutMode;
        int i3 = z ? 1 : 2;
        if (i3 != i2) {
            attributes.layoutInDisplayCutoutMode = i3;
            window.setAttributes(attributes);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ WindowInsets a(Activity activity, View view, WindowInsets windowInsets) {
        if (com.google.android.gms.ads.internal.n.g().i().a() == null) {
            DisplayCutout displayCutout = windowInsets.getDisplayCutout();
            String str = "";
            if (displayCutout != null) {
                pa i2 = com.google.android.gms.ads.internal.n.g().i();
                for (Rect rect : displayCutout.getBoundingRects()) {
                    String format = String.format(Locale.US, "%d,%d,%d,%d", Integer.valueOf(rect.left), Integer.valueOf(rect.top), Integer.valueOf(rect.right), Integer.valueOf(rect.bottom));
                    if (!TextUtils.isEmpty(str)) {
                        str = String.valueOf(str).concat("|");
                    }
                    String valueOf = String.valueOf(str);
                    String valueOf2 = String.valueOf(format);
                    str = valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
                }
                i2.a(str);
            } else {
                com.google.android.gms.ads.internal.n.g().i().a("");
            }
        }
        a(false, activity);
        return view.onApplyWindowInsets(windowInsets);
    }
}
