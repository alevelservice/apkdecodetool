package io.flutter.embedding.android;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.flutter.embedding.android.FlutterView;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class FlutterSplashView extends FrameLayout {
    private static String n = "FlutterSplashView";

    /* renamed from: e, reason: collision with root package name */
    @Nullable
    private i f18924e;

    /* renamed from: f, reason: collision with root package name */
    @Nullable
    private FlutterView f18925f;

    /* renamed from: g, reason: collision with root package name */
    @Nullable
    private View f18926g;

    /* renamed from: h, reason: collision with root package name */
    @Nullable
    private Bundle f18927h;

    /* renamed from: i, reason: collision with root package name */
    @Nullable
    private String f18928i;

    /* renamed from: j, reason: collision with root package name */
    @Nullable
    private String f18929j;

    /* renamed from: k, reason: collision with root package name */
    @NonNull
    private final FlutterView.d f18930k;

    /* renamed from: l, reason: collision with root package name */
    @NonNull
    private final io.flutter.embedding.engine.h.b f18931l;

    @NonNull
    private final Runnable m;

    @Keep
    /* loaded from: classes2.dex */
    public static class SavedState extends View.BaseSavedState {
        public static Parcelable.Creator<SavedState> CREATOR = new a();
        private String previousCompletedSplashIsolate;
        private Bundle splashScreenState;

        /* loaded from: classes2.dex */
        static class a implements Parcelable.Creator<SavedState> {
            a() {
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i2) {
                return new SavedState[i2];
            }
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeString(this.previousCompletedSplashIsolate);
            parcel.writeBundle(this.splashScreenState);
        }

        SavedState(Parcel parcel) {
            super(parcel);
            this.previousCompletedSplashIsolate = parcel.readString();
            this.splashScreenState = parcel.readBundle(SavedState.class.getClassLoader());
        }
    }

    /* loaded from: classes2.dex */
    class a implements FlutterView.d {
        a() {
        }

        @Override // io.flutter.embedding.android.FlutterView.d
        public void a() {
        }

        @Override // io.flutter.embedding.android.FlutterView.d
        public void a(@NonNull io.flutter.embedding.engine.a aVar) {
            FlutterSplashView.this.f18925f.removeFlutterEngineAttachmentListener(this);
            FlutterSplashView flutterSplashView = FlutterSplashView.this;
            flutterSplashView.a(flutterSplashView.f18925f, FlutterSplashView.this.f18924e);
        }
    }

    /* loaded from: classes2.dex */
    class b implements io.flutter.embedding.engine.h.b {
        b() {
        }

        @Override // io.flutter.embedding.engine.h.b
        public void onFlutterUiDisplayed() {
            if (FlutterSplashView.this.f18924e != null) {
                FlutterSplashView.this.d();
            }
        }

        @Override // io.flutter.embedding.engine.h.b
        public void onFlutterUiNoLongerDisplayed() {
        }
    }

    /* loaded from: classes2.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            FlutterSplashView flutterSplashView = FlutterSplashView.this;
            flutterSplashView.removeView(flutterSplashView.f18926g);
            FlutterSplashView flutterSplashView2 = FlutterSplashView.this;
            flutterSplashView2.f18929j = flutterSplashView2.f18928i;
        }
    }

    public FlutterSplashView(@NonNull Context context) {
        this(context, null, 0);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.f18929j = savedState.previousCompletedSplashIsolate;
        this.f18927h = savedState.splashScreenState;
    }

    @Override // android.view.View
    @Nullable
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.previousCompletedSplashIsolate = this.f18929j;
        i iVar = this.f18924e;
        savedState.splashScreenState = iVar != null ? iVar.b() : null;
        return savedState;
    }

    public FlutterSplashView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f18930k = new a();
        this.f18931l = new b();
        this.m = new c();
        setSaveEnabled(true);
    }

    private boolean b() {
        FlutterView flutterView = this.f18925f;
        return (flutterView == null || !flutterView.isAttachedToFlutterEngine() || this.f18925f.hasRenderedFirstFrame() || a()) ? false : true;
    }

    private boolean c() {
        i iVar;
        FlutterView flutterView = this.f18925f;
        return flutterView != null && flutterView.isAttachedToFlutterEngine() && (iVar = this.f18924e) != null && iVar.a() && e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        this.f18928i = this.f18925f.getAttachedFlutterEngine().d().b();
        g.a.b.c(n, "Transitioning splash screen to a Flutter UI. Isolate: " + this.f18928i);
        this.f18924e.a(this.m);
    }

    private boolean e() {
        FlutterView flutterView = this.f18925f;
        if (flutterView != null) {
            if (flutterView.isAttachedToFlutterEngine()) {
                return this.f18925f.hasRenderedFirstFrame() && !a();
            }
            throw new IllegalStateException("Cannot determine if previous splash transition was interrupted when no FlutterEngine is attached to our FlutterView. This question depends on an isolate ID to differentiate Flutter experiences.");
        }
        throw new IllegalStateException("Cannot determine if previous splash transition was interrupted when no FlutterView is set.");
    }

    public void a(@NonNull FlutterView flutterView, @Nullable i iVar) {
        FlutterView flutterView2 = this.f18925f;
        if (flutterView2 != null) {
            flutterView2.removeOnFirstFrameRenderedListener(this.f18931l);
            removeView(this.f18925f);
        }
        View view = this.f18926g;
        if (view != null) {
            removeView(view);
        }
        this.f18925f = flutterView;
        addView(flutterView);
        this.f18924e = iVar;
        if (iVar != null) {
            if (b()) {
                g.a.b.c(n, "Showing splash screen UI.");
                this.f18926g = iVar.a(getContext(), this.f18927h);
                addView(this.f18926g);
                flutterView.addOnFirstFrameRenderedListener(this.f18931l);
                return;
            }
            if (c()) {
                g.a.b.c(n, "Showing an immediate splash transition to Flutter due to previously interrupted transition.");
                this.f18926g = iVar.a(getContext(), this.f18927h);
                addView(this.f18926g);
                d();
                return;
            }
            if (flutterView.isAttachedToFlutterEngine()) {
                return;
            }
            g.a.b.c(n, "FlutterView is not yet attached to a FlutterEngine. Showing nothing until a FlutterEngine is attached.");
            flutterView.addFlutterEngineAttachmentListener(this.f18930k);
        }
    }

    private boolean a() {
        FlutterView flutterView = this.f18925f;
        if (flutterView != null) {
            if (flutterView.isAttachedToFlutterEngine()) {
                return this.f18925f.getAttachedFlutterEngine().d().b() != null && this.f18925f.getAttachedFlutterEngine().d().b().equals(this.f18929j);
            }
            throw new IllegalStateException("Cannot determine if splash has completed when no FlutterEngine is attached to our FlutterView. This question depends on an isolate ID to differentiate Flutter experiences.");
        }
        throw new IllegalStateException("Cannot determine if splash has completed when no FlutterView is set.");
    }
}
