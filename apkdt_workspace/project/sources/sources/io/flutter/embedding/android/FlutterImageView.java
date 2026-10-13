package io.flutter.embedding.android;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorSpace;
import android.graphics.Paint;
import android.hardware.HardwareBuffer;
import android.media.Image;
import android.media.ImageReader;
import android.os.Build;
import android.util.AttributeSet;
import android.view.Surface;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Queue;

@TargetApi(19)
/* loaded from: classes2.dex */
public class FlutterImageView extends View implements io.flutter.embedding.engine.h.c {

    /* renamed from: e, reason: collision with root package name */
    @NonNull
    private ImageReader f18915e;

    /* renamed from: f, reason: collision with root package name */
    @Nullable
    private Queue<Image> f18916f;

    /* renamed from: g, reason: collision with root package name */
    @Nullable
    private Image f18917g;

    /* renamed from: h, reason: collision with root package name */
    @Nullable
    private Bitmap f18918h;

    /* renamed from: i, reason: collision with root package name */
    @Nullable
    private io.flutter.embedding.engine.h.a f18919i;

    /* renamed from: j, reason: collision with root package name */
    private b f18920j;

    /* renamed from: k, reason: collision with root package name */
    private boolean f18921k;

    /* loaded from: classes2.dex */
    static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f18922a = new int[b.values().length];

        static {
            try {
                f18922a[b.background.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18922a[b.overlay.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* loaded from: classes2.dex */
    public enum b {
        background,
        overlay
    }

    public FlutterImageView(@NonNull Context context, int i2, int i3, b bVar) {
        this(context, a(i2, i3), bVar);
    }

    private void a() {
        setAlpha(0.0f);
    }

    @TargetApi(29)
    private void b() {
        if (Build.VERSION.SDK_INT >= 29) {
            HardwareBuffer hardwareBuffer = this.f18917g.getHardwareBuffer();
            this.f18918h = Bitmap.wrapHardwareBuffer(hardwareBuffer, ColorSpace.get(ColorSpace.Named.SRGB));
            hardwareBuffer.close();
            return;
        }
        Image.Plane[] planes = this.f18917g.getPlanes();
        if (planes.length != 1) {
            return;
        }
        Image.Plane plane = planes[0];
        int rowStride = plane.getRowStride() / plane.getPixelStride();
        int height = this.f18917g.getHeight();
        Bitmap bitmap = this.f18918h;
        if (bitmap == null || bitmap.getWidth() != rowStride || this.f18918h.getHeight() != height) {
            this.f18918h = Bitmap.createBitmap(rowStride, height, Bitmap.Config.ARGB_8888);
        }
        this.f18918h.copyPixelsFromBuffer(plane.getBuffer());
    }

    @TargetApi(19)
    public boolean acquireLatestImage() {
        Image acquireLatestImage;
        if (!this.f18921k) {
            return false;
        }
        int size = this.f18916f.size();
        if (this.f18917g != null) {
            size++;
        }
        if (size < this.f18915e.getMaxImages() && (acquireLatestImage = this.f18915e.acquireLatestImage()) != null) {
            this.f18916f.add(acquireLatestImage);
        }
        invalidate();
        return !this.f18916f.isEmpty();
    }

    @Override // io.flutter.embedding.engine.h.c
    public void attachToRenderer(@NonNull io.flutter.embedding.engine.h.a aVar) {
        if (this.f18921k) {
            return;
        }
        if (a.f18922a[this.f18920j.ordinal()] == 1) {
            aVar.b(this.f18915e.getSurface());
        }
        setAlpha(1.0f);
        this.f18919i = aVar;
        this.f18921k = true;
    }

    @Override // io.flutter.embedding.engine.h.c
    public void detachFromRenderer() {
        if (this.f18921k) {
            setAlpha(0.0f);
            acquireLatestImage();
            this.f18918h = null;
            Iterator<Image> it = this.f18916f.iterator();
            while (it.hasNext()) {
                it.next().close();
            }
            this.f18916f.clear();
            Image image = this.f18917g;
            if (image != null) {
                image.close();
                this.f18917g = null;
            }
            invalidate();
            this.f18921k = false;
        }
    }

    @Override // io.flutter.embedding.engine.h.c
    @Nullable
    public io.flutter.embedding.engine.h.a getAttachedRenderer() {
        return this.f18919i;
    }

    @NonNull
    public Surface getSurface() {
        return this.f18915e.getSurface();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (!this.f18916f.isEmpty()) {
            Image image = this.f18917g;
            if (image != null) {
                image.close();
            }
            this.f18917g = this.f18916f.poll();
            b();
        }
        Bitmap bitmap = this.f18918h;
        if (bitmap != null) {
            canvas.drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i2, int i3, int i4, int i5) {
        if (!(i2 == this.f18915e.getWidth() && i3 == this.f18915e.getHeight()) && this.f18920j == b.background && this.f18921k) {
            resizeIfNeeded(i2, i3);
            this.f18919i.b(this.f18915e.getSurface());
        }
    }

    @Override // io.flutter.embedding.engine.h.c
    public void pause() {
    }

    public void resizeIfNeeded(int i2, int i3) {
        if (this.f18919i == null) {
            return;
        }
        if (i2 == this.f18915e.getWidth() && i3 == this.f18915e.getHeight()) {
            return;
        }
        this.f18916f.clear();
        this.f18917g = null;
        this.f18915e.close();
        this.f18915e = a(i2, i3);
    }

    public FlutterImageView(@NonNull Context context) {
        this(context, 1, 1, b.background);
    }

    @NonNull
    @TargetApi(19)
    private static ImageReader a(int i2, int i3) {
        if (Build.VERSION.SDK_INT >= 29) {
            return ImageReader.newInstance(i2, i3, 1, 3, 768L);
        }
        return ImageReader.newInstance(i2, i3, 1, 3);
    }

    public FlutterImageView(@NonNull Context context, @NonNull AttributeSet attributeSet) {
        this(context, 1, 1, b.background);
    }

    @VisibleForTesting
    FlutterImageView(@NonNull Context context, @NonNull ImageReader imageReader, b bVar) {
        super(context, null);
        this.f18921k = false;
        this.f18915e = imageReader;
        this.f18920j = bVar;
        this.f18916f = new LinkedList();
        a();
    }
}
