package io.flutter.plugin.editing;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.graphics.Insets;
import android.view.View;
import android.view.WindowInsets;
import android.view.WindowInsetsAnimation;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import java.util.Iterator;
import java.util.List;

@Keep
@SuppressLint({"NewApi", "Override"})
@VisibleForTesting
@RequiresApi(30)
@TargetApi(30)
/* loaded from: classes2.dex */
class ImeSyncDeferringInsetsCallback extends WindowInsetsAnimation.Callback implements View.OnApplyWindowInsetsListener {
    private boolean animating;
    private int deferredInsetTypes;
    private WindowInsets lastWindowInsets;
    private boolean needsSave;
    private int overlayInsetTypes;
    private View view;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ImeSyncDeferringInsetsCallback(@NonNull View view, int i2, int i3) {
        super(1);
        this.animating = false;
        this.needsSave = false;
        this.overlayInsetTypes = i2;
        this.deferredInsetTypes = i3;
        this.view = view;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void install() {
        this.view.setWindowInsetsAnimationCallback(this);
        this.view.setOnApplyWindowInsetsListener(this);
    }

    @Override // android.view.View.OnApplyWindowInsetsListener
    public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
        this.view = view;
        if (this.needsSave) {
            this.lastWindowInsets = windowInsets;
            this.needsSave = false;
        }
        if (this.animating) {
            return WindowInsets.CONSUMED;
        }
        return view.onApplyWindowInsets(windowInsets);
    }

    @Override // android.view.WindowInsetsAnimation.Callback
    public void onEnd(WindowInsetsAnimation windowInsetsAnimation) {
        View view;
        if (!this.animating || (windowInsetsAnimation.getTypeMask() & this.deferredInsetTypes) == 0) {
            return;
        }
        this.animating = false;
        WindowInsets windowInsets = this.lastWindowInsets;
        if (windowInsets == null || (view = this.view) == null) {
            return;
        }
        view.dispatchApplyWindowInsets(windowInsets);
    }

    @Override // android.view.WindowInsetsAnimation.Callback
    public void onPrepare(WindowInsetsAnimation windowInsetsAnimation) {
        if ((windowInsetsAnimation.getTypeMask() & this.deferredInsetTypes) != 0) {
            this.animating = true;
            this.needsSave = true;
        }
    }

    @Override // android.view.WindowInsetsAnimation.Callback
    public WindowInsets onProgress(WindowInsets windowInsets, List<WindowInsetsAnimation> list) {
        if (this.animating && !this.needsSave) {
            Iterator<WindowInsetsAnimation> it = list.iterator();
            boolean z = false;
            while (it.hasNext()) {
                if ((it.next().getTypeMask() & this.deferredInsetTypes) != 0) {
                    z = true;
                }
            }
            if (!z) {
                return windowInsets;
            }
            WindowInsets.Builder builder = new WindowInsets.Builder(this.lastWindowInsets);
            builder.setInsets(this.deferredInsetTypes, Insets.of(0, 0, 0, Math.max(windowInsets.getInsets(this.deferredInsetTypes).bottom - windowInsets.getInsets(this.overlayInsetTypes).bottom, 0)));
            this.view.onApplyWindowInsets(builder.build());
        }
        return windowInsets;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void remove() {
        this.view.setWindowInsetsAnimationCallback(null);
        this.view.setOnApplyWindowInsetsListener(null);
    }
}
