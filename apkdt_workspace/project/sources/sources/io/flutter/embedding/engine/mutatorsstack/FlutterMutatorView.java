package io.flutter.embedding.engine.mutatorsstack;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Path;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import io.flutter.embedding.android.AndroidTouchProcessor;
import java.util.Iterator;

/* loaded from: classes2.dex */
public class FlutterMutatorView extends FrameLayout {

    /* renamed from: e, reason: collision with root package name */
    private FlutterMutatorsStack f19226e;

    /* renamed from: f, reason: collision with root package name */
    private float f19227f;

    /* renamed from: g, reason: collision with root package name */
    private int f19228g;

    /* renamed from: h, reason: collision with root package name */
    private int f19229h;

    /* renamed from: i, reason: collision with root package name */
    private int f19230i;

    /* renamed from: j, reason: collision with root package name */
    private int f19231j;

    /* renamed from: k, reason: collision with root package name */
    private final AndroidTouchProcessor f19232k;

    public FlutterMutatorView(@NonNull Context context, float f2, @NonNull AndroidTouchProcessor androidTouchProcessor) {
        super(context, null);
        this.f19227f = f2;
        this.f19232k = androidTouchProcessor;
    }

    private Matrix getPlatformViewMatrix() {
        Matrix matrix = new Matrix(this.f19226e.getFinalMatrix());
        float f2 = this.f19227f;
        matrix.preScale(1.0f / f2, 1.0f / f2);
        matrix.postTranslate(-this.f19228g, -this.f19229h);
        return matrix;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        canvas.save();
        canvas.concat(getPlatformViewMatrix());
        super.dispatchDraw(canvas);
        canvas.restore();
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        canvas.save();
        Iterator<Path> it = this.f19226e.getFinalClippingPaths().iterator();
        while (it.hasNext()) {
            Path path = new Path(it.next());
            path.offset(-this.f19228g, -this.f19229h);
            canvas.clipPath(path);
        }
        super.draw(canvas);
        canvas.restore();
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return true;
    }

    @Override // android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.f19232k == null) {
            return super.onTouchEvent(motionEvent);
        }
        Matrix matrix = new Matrix();
        int action = motionEvent.getAction();
        if (action == 0) {
            int i2 = this.f19228g;
            this.f19230i = i2;
            int i3 = this.f19229h;
            this.f19231j = i3;
            matrix.postTranslate(i2, i3);
        } else if (action != 2) {
            matrix.postTranslate(this.f19228g, this.f19229h);
        } else {
            matrix.postTranslate(this.f19230i, this.f19231j);
            this.f19230i = this.f19228g;
            this.f19231j = this.f19229h;
        }
        return this.f19232k.a(motionEvent, matrix);
    }

    public void readyToDisplay(@NonNull FlutterMutatorsStack flutterMutatorsStack, int i2, int i3, int i4, int i5) {
        this.f19226e = flutterMutatorsStack;
        this.f19228g = i2;
        this.f19229h = i3;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i4, i5);
        layoutParams.leftMargin = i2;
        layoutParams.topMargin = i3;
        setLayoutParams(layoutParams);
        setWillNotDraw(false);
    }

    public FlutterMutatorView(@NonNull Context context) {
        super(context, null);
        this.f19227f = 1.0f;
        this.f19232k = null;
    }
}
