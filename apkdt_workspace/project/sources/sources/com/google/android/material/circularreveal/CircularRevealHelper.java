package com.google.android.material.circularreveal;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.View;
import androidx.annotation.ColorInt;
import androidx.annotation.Nullable;
import com.google.android.material.circularreveal.b;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes.dex */
public class CircularRevealHelper {

    /* renamed from: j, reason: collision with root package name */
    public static final int f13769j;

    /* renamed from: a, reason: collision with root package name */
    private final a f13770a;

    /* renamed from: b, reason: collision with root package name */
    private final View f13771b;

    /* renamed from: c, reason: collision with root package name */
    private final Path f13772c;

    /* renamed from: d, reason: collision with root package name */
    private final Paint f13773d;

    /* renamed from: e, reason: collision with root package name */
    private final Paint f13774e;

    /* renamed from: f, reason: collision with root package name */
    @Nullable
    private b.e f13775f;

    /* renamed from: g, reason: collision with root package name */
    @Nullable
    private Drawable f13776g;

    /* renamed from: h, reason: collision with root package name */
    private boolean f13777h;

    /* renamed from: i, reason: collision with root package name */
    private boolean f13778i;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface Strategy {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public interface a {
        void actualDraw(Canvas canvas);

        boolean actualIsOpaque();
    }

    static {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 21) {
            f13769j = 2;
        } else if (i2 >= 18) {
            f13769j = 1;
        } else {
            f13769j = 0;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public CircularRevealHelper(a aVar) {
        this.f13770a = aVar;
        this.f13771b = (View) aVar;
        this.f13771b.setWillNotDraw(false);
        this.f13772c = new Path();
        this.f13773d = new Paint(7);
        this.f13774e = new Paint(1);
        this.f13774e.setColor(0);
    }

    private void g() {
        if (f13769j == 1) {
            this.f13772c.rewind();
            b.e eVar = this.f13775f;
            if (eVar != null) {
                this.f13772c.addCircle(eVar.f13786a, eVar.f13787b, eVar.f13788c, Path.Direction.CW);
            }
        }
        this.f13771b.invalidate();
    }

    private boolean h() {
        b.e eVar = this.f13775f;
        boolean z = eVar == null || eVar.a();
        return f13769j == 0 ? !z && this.f13778i : !z;
    }

    private boolean i() {
        return (this.f13777h || this.f13776g == null || this.f13775f == null) ? false : true;
    }

    private boolean j() {
        return (this.f13777h || Color.alpha(this.f13774e.getColor()) == 0) ? false : true;
    }

    public void a() {
        if (f13769j == 0) {
            this.f13777h = true;
            this.f13778i = false;
            this.f13771b.buildDrawingCache();
            Bitmap drawingCache = this.f13771b.getDrawingCache();
            if (drawingCache == null && this.f13771b.getWidth() != 0 && this.f13771b.getHeight() != 0) {
                drawingCache = Bitmap.createBitmap(this.f13771b.getWidth(), this.f13771b.getHeight(), Bitmap.Config.ARGB_8888);
                this.f13771b.draw(new Canvas(drawingCache));
            }
            if (drawingCache != null) {
                Paint paint = this.f13773d;
                Shader.TileMode tileMode = Shader.TileMode.CLAMP;
                paint.setShader(new BitmapShader(drawingCache, tileMode, tileMode));
            }
            this.f13777h = false;
            this.f13778i = true;
        }
    }

    public void b() {
        if (f13769j == 0) {
            this.f13778i = false;
            this.f13771b.destroyDrawingCache();
            this.f13773d.setShader(null);
            this.f13771b.invalidate();
        }
    }

    @Nullable
    public Drawable c() {
        return this.f13776g;
    }

    @ColorInt
    public int d() {
        return this.f13774e.getColor();
    }

    @Nullable
    public b.e e() {
        b.e eVar = this.f13775f;
        if (eVar == null) {
            return null;
        }
        b.e eVar2 = new b.e(eVar);
        if (eVar2.a()) {
            eVar2.f13788c = b(eVar2);
        }
        return eVar2;
    }

    public boolean f() {
        return this.f13770a.actualIsOpaque() && !h();
    }

    private float b(b.e eVar) {
        return e.i.b.c.p.a.a(eVar.f13786a, eVar.f13787b, 0.0f, 0.0f, this.f13771b.getWidth(), this.f13771b.getHeight());
    }

    private void b(Canvas canvas) {
        if (i()) {
            Rect bounds = this.f13776g.getBounds();
            float width = this.f13775f.f13786a - (bounds.width() / 2.0f);
            float height = this.f13775f.f13787b - (bounds.height() / 2.0f);
            canvas.translate(width, height);
            this.f13776g.draw(canvas);
            canvas.translate(-width, -height);
        }
    }

    public void a(@Nullable b.e eVar) {
        if (eVar == null) {
            this.f13775f = null;
        } else {
            b.e eVar2 = this.f13775f;
            if (eVar2 == null) {
                this.f13775f = new b.e(eVar);
            } else {
                eVar2.a(eVar);
            }
            if (e.i.b.c.p.a.a(eVar.f13788c, b(eVar), 1.0E-4f)) {
                this.f13775f.f13788c = Float.MAX_VALUE;
            }
        }
        g();
    }

    public void a(@ColorInt int i2) {
        this.f13774e.setColor(i2);
        this.f13771b.invalidate();
    }

    public void a(@Nullable Drawable drawable) {
        this.f13776g = drawable;
        this.f13771b.invalidate();
    }

    public void a(Canvas canvas) {
        if (h()) {
            int i2 = f13769j;
            if (i2 == 0) {
                b.e eVar = this.f13775f;
                canvas.drawCircle(eVar.f13786a, eVar.f13787b, eVar.f13788c, this.f13773d);
                if (j()) {
                    b.e eVar2 = this.f13775f;
                    canvas.drawCircle(eVar2.f13786a, eVar2.f13787b, eVar2.f13788c, this.f13774e);
                }
            } else if (i2 == 1) {
                int save = canvas.save();
                canvas.clipPath(this.f13772c);
                this.f13770a.actualDraw(canvas);
                if (j()) {
                    canvas.drawRect(0.0f, 0.0f, this.f13771b.getWidth(), this.f13771b.getHeight(), this.f13774e);
                }
                canvas.restoreToCount(save);
            } else if (i2 == 2) {
                this.f13770a.actualDraw(canvas);
                if (j()) {
                    canvas.drawRect(0.0f, 0.0f, this.f13771b.getWidth(), this.f13771b.getHeight(), this.f13774e);
                }
            } else {
                throw new IllegalStateException("Unsupported strategy " + f13769j);
            }
        } else {
            this.f13770a.actualDraw(canvas);
            if (j()) {
                canvas.drawRect(0.0f, 0.0f, this.f13771b.getWidth(), this.f13771b.getHeight(), this.f13774e);
            }
        }
        b(canvas);
    }
}
