package e.f.i.a.c;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import e.f.i.a.a.b;

/* compiled from: AnimatedImageCompositor.java */
/* loaded from: classes.dex */
public class d {

    /* renamed from: a, reason: collision with root package name */
    private final e.f.i.a.a.a f17506a;

    /* renamed from: b, reason: collision with root package name */
    private final b f17507b;

    /* renamed from: c, reason: collision with root package name */
    private final Paint f17508c = new Paint();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AnimatedImageCompositor.java */
    /* loaded from: classes.dex */
    public static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f17509a = new int[c.values().length];

        static {
            try {
                f17509a[c.REQUIRED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17509a[c.NOT_REQUIRED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17509a[c.ABORT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f17509a[c.SKIP.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* compiled from: AnimatedImageCompositor.java */
    /* loaded from: classes.dex */
    public interface b {
        e.f.c.g.a<Bitmap> a(int i2);

        void a(int i2, Bitmap bitmap);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AnimatedImageCompositor.java */
    /* loaded from: classes.dex */
    public enum c {
        REQUIRED,
        NOT_REQUIRED,
        SKIP,
        ABORT
    }

    public d(e.f.i.a.a.a aVar, b bVar) {
        this.f17506a = aVar;
        this.f17507b = bVar;
        this.f17508c.setColor(0);
        this.f17508c.setStyle(Paint.Style.FILL);
        this.f17508c.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC));
    }

    private boolean b(int i2) {
        if (i2 == 0) {
            return true;
        }
        e.f.i.a.a.b a2 = this.f17506a.a(i2);
        e.f.i.a.a.b a3 = this.f17506a.a(i2 - 1);
        if (a2.f17471e == b.a.NO_BLEND && a(a2)) {
            return true;
        }
        return a3.f17472f == b.EnumC0193b.DISPOSE_TO_BACKGROUND && a(a3);
    }

    public void a(int i2, Bitmap bitmap) {
        Canvas canvas = new Canvas(bitmap);
        canvas.drawColor(0, PorterDuff.Mode.SRC);
        for (int a2 = !b(i2) ? a(i2 - 1, canvas) : i2; a2 < i2; a2++) {
            e.f.i.a.a.b a3 = this.f17506a.a(a2);
            b.EnumC0193b enumC0193b = a3.f17472f;
            if (enumC0193b != b.EnumC0193b.DISPOSE_TO_PREVIOUS) {
                if (a3.f17471e == b.a.NO_BLEND) {
                    a(canvas, a3);
                }
                this.f17506a.a(a2, canvas);
                this.f17507b.a(a2, bitmap);
                if (enumC0193b == b.EnumC0193b.DISPOSE_TO_BACKGROUND) {
                    a(canvas, a3);
                }
            }
        }
        e.f.i.a.a.b a4 = this.f17506a.a(i2);
        if (a4.f17471e == b.a.NO_BLEND) {
            a(canvas, a4);
        }
        this.f17506a.a(i2, canvas);
    }

    private int a(int i2, Canvas canvas) {
        while (i2 >= 0) {
            int i3 = a.f17509a[a(i2).ordinal()];
            if (i3 == 1) {
                e.f.i.a.a.b a2 = this.f17506a.a(i2);
                e.f.c.g.a<Bitmap> a3 = this.f17507b.a(i2);
                if (a3 != null) {
                    try {
                        canvas.drawBitmap(a3.A(), 0.0f, 0.0f, (Paint) null);
                        if (a2.f17472f == b.EnumC0193b.DISPOSE_TO_BACKGROUND) {
                            a(canvas, a2);
                        }
                        return i2 + 1;
                    } finally {
                        a3.close();
                    }
                }
                if (b(i2)) {
                    return i2;
                }
            } else {
                if (i3 == 2) {
                    return i2 + 1;
                }
                if (i3 == 3) {
                    return i2;
                }
            }
            i2--;
        }
        return 0;
    }

    private void a(Canvas canvas, e.f.i.a.a.b bVar) {
        canvas.drawRect(bVar.f17467a, bVar.f17468b, r0 + bVar.f17469c, r1 + bVar.f17470d, this.f17508c);
    }

    private c a(int i2) {
        e.f.i.a.a.b a2 = this.f17506a.a(i2);
        b.EnumC0193b enumC0193b = a2.f17472f;
        if (enumC0193b == b.EnumC0193b.DISPOSE_DO_NOT) {
            return c.REQUIRED;
        }
        if (enumC0193b == b.EnumC0193b.DISPOSE_TO_BACKGROUND) {
            if (a(a2)) {
                return c.NOT_REQUIRED;
            }
            return c.REQUIRED;
        }
        if (enumC0193b == b.EnumC0193b.DISPOSE_TO_PREVIOUS) {
            return c.SKIP;
        }
        return c.ABORT;
    }

    private boolean a(e.f.i.a.a.b bVar) {
        return bVar.f17467a == 0 && bVar.f17468b == 0 && bVar.f17469c == this.f17506a.d() && bVar.f17470d == this.f17506a.c();
    }
}
