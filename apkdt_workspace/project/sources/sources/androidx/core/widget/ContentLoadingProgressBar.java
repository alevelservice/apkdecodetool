package androidx.core.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ProgressBar;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public class ContentLoadingProgressBar extends ProgressBar {

    /* renamed from: e, reason: collision with root package name */
    private final Runnable f1992e;

    /* renamed from: f, reason: collision with root package name */
    private final Runnable f1993f;
    boolean mDismissed;
    boolean mPostedHide;
    boolean mPostedShow;
    long mStartTime;

    /* loaded from: classes.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ContentLoadingProgressBar contentLoadingProgressBar = ContentLoadingProgressBar.this;
            contentLoadingProgressBar.mPostedHide = false;
            contentLoadingProgressBar.mStartTime = -1L;
            contentLoadingProgressBar.setVisibility(8);
        }
    }

    /* loaded from: classes.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ContentLoadingProgressBar contentLoadingProgressBar = ContentLoadingProgressBar.this;
            contentLoadingProgressBar.mPostedShow = false;
            if (contentLoadingProgressBar.mDismissed) {
                return;
            }
            contentLoadingProgressBar.mStartTime = System.currentTimeMillis();
            ContentLoadingProgressBar.this.setVisibility(0);
        }
    }

    public ContentLoadingProgressBar(@NonNull Context context) {
        this(context, null);
    }

    private void a() {
        removeCallbacks(this.f1992e);
        removeCallbacks(this.f1993f);
    }

    public synchronized void hide() {
        this.mDismissed = true;
        removeCallbacks(this.f1993f);
        this.mPostedShow = false;
        long currentTimeMillis = System.currentTimeMillis() - this.mStartTime;
        if (currentTimeMillis < 500 && this.mStartTime != -1) {
            if (!this.mPostedHide) {
                postDelayed(this.f1992e, 500 - currentTimeMillis);
                this.mPostedHide = true;
            }
        }
        setVisibility(8);
    }

    @Override // android.widget.ProgressBar, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        a();
    }

    @Override // android.widget.ProgressBar, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        a();
    }

    public synchronized void show() {
        this.mStartTime = -1L;
        this.mDismissed = false;
        removeCallbacks(this.f1992e);
        this.mPostedHide = false;
        if (!this.mPostedShow) {
            postDelayed(this.f1993f, 500L);
            this.mPostedShow = true;
        }
    }

    public ContentLoadingProgressBar(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.mStartTime = -1L;
        this.mPostedHide = false;
        this.mPostedShow = false;
        this.mDismissed = false;
        this.f1992e = new a();
        this.f1993f = new b();
    }
}
