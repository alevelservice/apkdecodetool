package e.f.g.a.a;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import androidx.annotation.IntRange;
import javax.annotation.Nullable;

/* compiled from: AnimationBackend.java */
/* loaded from: classes.dex */
public interface a extends d {
    void a(@Nullable ColorFilter colorFilter);

    void a(Rect rect);

    boolean a(Drawable drawable, Canvas canvas, int i2);

    void b(@IntRange(from = 0, to = 255) int i2);

    int c();

    void clear();

    int d();
}
