package e.f.f.f;

import android.graphics.Canvas;
import android.graphics.drawable.NinePatchDrawable;

/* compiled from: RoundedNinePatchDrawable.java */
/* loaded from: classes.dex */
public class o extends n {
    public o(NinePatchDrawable ninePatchDrawable) {
        super(ninePatchDrawable);
    }

    @Override // e.f.f.f.n, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (e.f.i.j.b.c()) {
            e.f.i.j.b.a("RoundedNinePatchDrawable#draw");
        }
        if (!a()) {
            super.draw(canvas);
            if (e.f.i.j.b.c()) {
                e.f.i.j.b.a();
                return;
            }
            return;
        }
        c();
        b();
        canvas.clipPath(this.f17353i);
        super.draw(canvas);
        if (e.f.i.j.b.c()) {
            e.f.i.j.b.a();
        }
    }
}
