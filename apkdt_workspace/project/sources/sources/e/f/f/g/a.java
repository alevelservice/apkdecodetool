package e.f.f.g;

import android.content.res.Resources;
import android.graphics.ColorFilter;
import android.graphics.PointF;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import e.f.f.f.g;
import e.f.f.f.h;
import e.f.f.f.q;
import java.util.Iterator;
import javax.annotation.Nullable;

/* compiled from: GenericDraweeHierarchy.java */
/* loaded from: classes.dex */
public class a implements e.f.f.i.c {

    /* renamed from: a, reason: collision with root package name */
    private final Drawable f17380a = new ColorDrawable(0);

    /* renamed from: b, reason: collision with root package name */
    private final Resources f17381b;

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    private e f17382c;

    /* renamed from: d, reason: collision with root package name */
    private final d f17383d;

    /* renamed from: e, reason: collision with root package name */
    private final g f17384e;

    /* renamed from: f, reason: collision with root package name */
    private final h f17385f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(b bVar) {
        if (e.f.i.j.b.c()) {
            e.f.i.j.b.a("GenericDraweeHierarchy()");
        }
        this.f17381b = bVar.p();
        this.f17382c = bVar.s();
        this.f17385f = new h(this.f17380a);
        int i2 = 1;
        int size = (bVar.j() != null ? bVar.j().size() : 1) + (bVar.m() != null ? 1 : 0);
        Drawable[] drawableArr = new Drawable[size + 6];
        drawableArr[0] = a(bVar.e(), (q.b) null);
        drawableArr[1] = a(bVar.k(), bVar.l());
        drawableArr[2] = a(this.f17385f, bVar.d(), bVar.c(), bVar.b());
        drawableArr[3] = a(bVar.n(), bVar.o());
        drawableArr[4] = a(bVar.q(), bVar.r());
        drawableArr[5] = a(bVar.h(), bVar.i());
        if (size > 0) {
            if (bVar.j() != null) {
                Iterator<Drawable> it = bVar.j().iterator();
                i2 = 0;
                while (it.hasNext()) {
                    drawableArr[i2 + 6] = a(it.next(), (q.b) null);
                    i2++;
                }
            }
            if (bVar.m() != null) {
                drawableArr[i2 + 6] = a(bVar.m(), (q.b) null);
            }
        }
        this.f17384e = new g(drawableArr);
        this.f17384e.d(bVar.g());
        this.f17383d = new d(f.a(this.f17384e, this.f17382c));
        this.f17383d.mutate();
        e();
        if (e.f.i.j.b.c()) {
            e.f.i.j.b.a();
        }
    }

    @Nullable
    private Drawable a(Drawable drawable, @Nullable q.b bVar, @Nullable PointF pointF, @Nullable ColorFilter colorFilter) {
        drawable.setColorFilter(colorFilter);
        return f.a(drawable, bVar, pointF);
    }

    private void b(int i2) {
        if (i2 >= 0) {
            this.f17384e.c(i2);
        }
    }

    private void c() {
        b(1);
        b(2);
        b(3);
        b(4);
        b(5);
    }

    private void d() {
        this.f17385f.a(this.f17380a);
    }

    private void e() {
        g gVar = this.f17384e;
        if (gVar != null) {
            gVar.b();
            this.f17384e.d();
            c();
            a(1);
            this.f17384e.e();
            this.f17384e.c();
        }
    }

    @Override // e.f.f.i.b
    public Drawable b() {
        return this.f17383d;
    }

    @Nullable
    private Drawable a(@Nullable Drawable drawable, @Nullable q.b bVar) {
        return f.a(f.b(drawable, this.f17382c, this.f17381b), bVar);
    }

    @Override // e.f.f.i.c
    public void b(Throwable th) {
        this.f17384e.b();
        c();
        if (this.f17384e.a(5) != null) {
            a(5);
        } else {
            a(1);
        }
        this.f17384e.c();
    }

    private void a(int i2) {
        if (i2 >= 0) {
            this.f17384e.b(i2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void a(float f2) {
        Drawable a2 = this.f17384e.a(3);
        if (a2 == 0) {
            return;
        }
        if (f2 >= 0.999f) {
            if (a2 instanceof Animatable) {
                ((Animatable) a2).stop();
            }
            b(3);
        } else {
            if (a2 instanceof Animatable) {
                ((Animatable) a2).start();
            }
            a(3);
        }
        a2.setLevel(Math.round(f2 * 10000.0f));
    }

    @Override // e.f.f.i.c
    public void a() {
        d();
        e();
    }

    @Override // e.f.f.i.c
    public void a(Drawable drawable, float f2, boolean z) {
        Drawable b2 = f.b(drawable, this.f17382c, this.f17381b);
        b2.mutate();
        this.f17385f.a(b2);
        this.f17384e.b();
        c();
        a(2);
        a(f2);
        if (z) {
            this.f17384e.e();
        }
        this.f17384e.c();
    }

    @Override // e.f.f.i.c
    public void a(float f2, boolean z) {
        if (this.f17384e.a(3) == null) {
            return;
        }
        this.f17384e.b();
        a(f2);
        if (z) {
            this.f17384e.e();
        }
        this.f17384e.c();
    }

    @Override // e.f.f.i.c
    public void a(Throwable th) {
        this.f17384e.b();
        c();
        if (this.f17384e.a(4) != null) {
            a(4);
        } else {
            a(1);
        }
        this.f17384e.c();
    }

    @Override // e.f.f.i.c
    public void a(@Nullable Drawable drawable) {
        this.f17383d.d(drawable);
    }
}
