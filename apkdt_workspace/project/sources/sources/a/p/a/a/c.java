package a.p.a.a;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ArgbEvaluator;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;

/* compiled from: AnimatedVectorDrawableCompat.java */
/* loaded from: classes.dex */
public class c extends h implements a.p.a.a.b {

    /* renamed from: f, reason: collision with root package name */
    private b f478f;

    /* renamed from: g, reason: collision with root package name */
    private Context f479g;

    /* renamed from: h, reason: collision with root package name */
    private ArgbEvaluator f480h;

    /* renamed from: i, reason: collision with root package name */
    final Drawable.Callback f481i;

    /* compiled from: AnimatedVectorDrawableCompat.java */
    /* loaded from: classes.dex */
    class a implements Drawable.Callback {
        a() {
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void invalidateDrawable(Drawable drawable) {
            c.this.invalidateSelf();
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void scheduleDrawable(Drawable drawable, Runnable runnable, long j2) {
            c.this.scheduleSelf(runnable, j2);
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
            c.this.unscheduleSelf(runnable);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AnimatedVectorDrawableCompat.java */
    /* loaded from: classes.dex */
    public static class b extends Drawable.ConstantState {

        /* renamed from: a, reason: collision with root package name */
        int f483a;

        /* renamed from: b, reason: collision with root package name */
        i f484b;

        /* renamed from: c, reason: collision with root package name */
        AnimatorSet f485c;

        /* renamed from: d, reason: collision with root package name */
        ArrayList<Animator> f486d;

        /* renamed from: e, reason: collision with root package name */
        a.e.a<Animator, String> f487e;

        public b(Context context, b bVar, Drawable.Callback callback, Resources resources) {
            if (bVar != null) {
                this.f483a = bVar.f483a;
                i iVar = bVar.f484b;
                if (iVar != null) {
                    Drawable.ConstantState constantState = iVar.getConstantState();
                    if (resources != null) {
                        this.f484b = (i) constantState.newDrawable(resources);
                    } else {
                        this.f484b = (i) constantState.newDrawable();
                    }
                    i iVar2 = this.f484b;
                    iVar2.mutate();
                    this.f484b = iVar2;
                    this.f484b.setCallback(callback);
                    this.f484b.setBounds(bVar.f484b.getBounds());
                    this.f484b.a(false);
                }
                ArrayList<Animator> arrayList = bVar.f486d;
                if (arrayList != null) {
                    int size = arrayList.size();
                    this.f486d = new ArrayList<>(size);
                    this.f487e = new a.e.a<>(size);
                    for (int i2 = 0; i2 < size; i2++) {
                        Animator animator = bVar.f486d.get(i2);
                        Animator clone = animator.clone();
                        String str = bVar.f487e.get(animator);
                        clone.setTarget(this.f484b.a(str));
                        this.f486d.add(clone);
                        this.f487e.put(clone, str);
                    }
                    a();
                }
            }
        }

        public void a() {
            if (this.f485c == null) {
                this.f485c = new AnimatorSet();
            }
            this.f485c.playTogether(this.f486d);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f483a;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            throw new IllegalStateException("No constant state support for SDK < 24.");
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            throw new IllegalStateException("No constant state support for SDK < 24.");
        }
    }

    c() {
        this(null, null, null);
    }

    public static c a(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        c cVar = new c(context);
        cVar.inflate(resources, xmlPullParser, attributeSet, theme);
        return cVar;
    }

    @Override // a.p.a.a.h, android.graphics.drawable.Drawable
    public void applyTheme(Resources.Theme theme) {
        Drawable drawable = this.f493e;
        if (drawable != null) {
            androidx.core.graphics.drawable.a.a(drawable, theme);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean canApplyTheme() {
        Drawable drawable = this.f493e;
        if (drawable != null) {
            return androidx.core.graphics.drawable.a.a(drawable);
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Drawable drawable = this.f493e;
        if (drawable != null) {
            drawable.draw(canvas);
            return;
        }
        this.f478f.f484b.draw(canvas);
        if (this.f478f.f485c.isStarted()) {
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        Drawable drawable = this.f493e;
        if (drawable != null) {
            return androidx.core.graphics.drawable.a.c(drawable);
        }
        return this.f478f.f484b.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        Drawable drawable = this.f493e;
        if (drawable != null) {
            return drawable.getChangingConfigurations();
        }
        return super.getChangingConfigurations() | this.f478f.f483a;
    }

    @Override // android.graphics.drawable.Drawable
    public ColorFilter getColorFilter() {
        Drawable drawable = this.f493e;
        if (drawable != null) {
            return androidx.core.graphics.drawable.a.d(drawable);
        }
        return this.f478f.f484b.getColorFilter();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        Drawable drawable = this.f493e;
        if (drawable == null || Build.VERSION.SDK_INT < 24) {
            return null;
        }
        return new C0019c(drawable.getConstantState());
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        Drawable drawable = this.f493e;
        if (drawable != null) {
            return drawable.getIntrinsicHeight();
        }
        return this.f478f.f484b.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        Drawable drawable = this.f493e;
        if (drawable != null) {
            return drawable.getIntrinsicWidth();
        }
        return this.f478f.f484b.getIntrinsicWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        Drawable drawable = this.f493e;
        if (drawable != null) {
            return drawable.getOpacity();
        }
        return this.f478f.f484b.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        Drawable drawable = this.f493e;
        if (drawable != null) {
            androidx.core.graphics.drawable.a.a(drawable, resources, xmlPullParser, attributeSet, theme);
            return;
        }
        int eventType = xmlPullParser.getEventType();
        int depth = xmlPullParser.getDepth() + 1;
        while (eventType != 1 && (xmlPullParser.getDepth() >= depth || eventType != 3)) {
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                if ("animated-vector".equals(name)) {
                    TypedArray a2 = androidx.core.content.res.f.a(resources, theme, attributeSet, a.p.a.a.a.f470e);
                    int resourceId = a2.getResourceId(0, 0);
                    if (resourceId != 0) {
                        i a3 = i.a(resources, resourceId, theme);
                        a3.a(false);
                        a3.setCallback(this.f481i);
                        i iVar = this.f478f.f484b;
                        if (iVar != null) {
                            iVar.setCallback(null);
                        }
                        this.f478f.f484b = a3;
                    }
                    a2.recycle();
                } else if ("target".equals(name)) {
                    TypedArray obtainAttributes = resources.obtainAttributes(attributeSet, a.p.a.a.a.f471f);
                    String string = obtainAttributes.getString(0);
                    int resourceId2 = obtainAttributes.getResourceId(1, 0);
                    if (resourceId2 != 0) {
                        Context context = this.f479g;
                        if (context != null) {
                            a(string, e.a(context, resourceId2));
                        } else {
                            obtainAttributes.recycle();
                            throw new IllegalStateException("Context can't be null when inflating animators");
                        }
                    }
                    obtainAttributes.recycle();
                } else {
                    continue;
                }
            }
            eventType = xmlPullParser.next();
        }
        this.f478f.a();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        Drawable drawable = this.f493e;
        if (drawable != null) {
            return androidx.core.graphics.drawable.a.f(drawable);
        }
        return this.f478f.f484b.isAutoMirrored();
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        Drawable drawable = this.f493e;
        if (drawable != null) {
            return ((AnimatedVectorDrawable) drawable).isRunning();
        }
        return this.f478f.f485c.isRunning();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        Drawable drawable = this.f493e;
        if (drawable != null) {
            return drawable.isStateful();
        }
        return this.f478f.f484b.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        Drawable drawable = this.f493e;
        if (drawable != null) {
            drawable.mutate();
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        Drawable drawable = this.f493e;
        if (drawable != null) {
            drawable.setBounds(rect);
        } else {
            this.f478f.f484b.setBounds(rect);
        }
    }

    @Override // a.p.a.a.h, android.graphics.drawable.Drawable
    protected boolean onLevelChange(int i2) {
        Drawable drawable = this.f493e;
        if (drawable != null) {
            return drawable.setLevel(i2);
        }
        return this.f478f.f484b.setLevel(i2);
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        Drawable drawable = this.f493e;
        if (drawable != null) {
            return drawable.setState(iArr);
        }
        return this.f478f.f484b.setState(iArr);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        Drawable drawable = this.f493e;
        if (drawable != null) {
            drawable.setAlpha(i2);
        } else {
            this.f478f.f484b.setAlpha(i2);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z) {
        Drawable drawable = this.f493e;
        if (drawable != null) {
            androidx.core.graphics.drawable.a.a(drawable, z);
        } else {
            this.f478f.f484b.setAutoMirrored(z);
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.b
    public void setTint(int i2) {
        Drawable drawable = this.f493e;
        if (drawable != null) {
            androidx.core.graphics.drawable.a.b(drawable, i2);
        } else {
            this.f478f.f484b.setTint(i2);
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.b
    public void setTintList(ColorStateList colorStateList) {
        Drawable drawable = this.f493e;
        if (drawable != null) {
            androidx.core.graphics.drawable.a.a(drawable, colorStateList);
        } else {
            this.f478f.f484b.setTintList(colorStateList);
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.b
    public void setTintMode(PorterDuff.Mode mode) {
        Drawable drawable = this.f493e;
        if (drawable != null) {
            androidx.core.graphics.drawable.a.a(drawable, mode);
        } else {
            this.f478f.f484b.setTintMode(mode);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        Drawable drawable = this.f493e;
        if (drawable != null) {
            return drawable.setVisible(z, z2);
        }
        this.f478f.f484b.setVisible(z, z2);
        return super.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        Drawable drawable = this.f493e;
        if (drawable != null) {
            ((AnimatedVectorDrawable) drawable).start();
        } else {
            if (this.f478f.f485c.isStarted()) {
                return;
            }
            this.f478f.f485c.start();
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        Drawable drawable = this.f493e;
        if (drawable != null) {
            ((AnimatedVectorDrawable) drawable).stop();
        } else {
            this.f478f.f485c.end();
        }
    }

    private c(@Nullable Context context) {
        this(context, null, null);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.f493e;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
        } else {
            this.f478f.f484b.setColorFilter(colorFilter);
        }
    }

    /* compiled from: AnimatedVectorDrawableCompat.java */
    @RequiresApi(24)
    /* renamed from: a.p.a.a.c$c, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    private static class C0019c extends Drawable.ConstantState {

        /* renamed from: a, reason: collision with root package name */
        private final Drawable.ConstantState f488a;

        public C0019c(Drawable.ConstantState constantState) {
            this.f488a = constantState;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public boolean canApplyTheme() {
            return this.f488a.canApplyTheme();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f488a.getChangingConfigurations();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            c cVar = new c();
            cVar.f493e = this.f488a.newDrawable();
            cVar.f493e.setCallback(cVar.f481i);
            return cVar;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            c cVar = new c();
            cVar.f493e = this.f488a.newDrawable(resources);
            cVar.f493e.setCallback(cVar.f481i);
            return cVar;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources, Resources.Theme theme) {
            c cVar = new c();
            cVar.f493e = this.f488a.newDrawable(resources, theme);
            cVar.f493e.setCallback(cVar.f481i);
            return cVar;
        }
    }

    private c(@Nullable Context context, @Nullable b bVar, @Nullable Resources resources) {
        this.f480h = null;
        this.f481i = new a();
        this.f479g = context;
        if (bVar != null) {
            this.f478f = bVar;
        } else {
            this.f478f = new b(context, bVar, this.f481i, resources);
        }
    }

    private void a(Animator animator) {
        ArrayList<Animator> childAnimations;
        if ((animator instanceof AnimatorSet) && (childAnimations = ((AnimatorSet) animator).getChildAnimations()) != null) {
            for (int i2 = 0; i2 < childAnimations.size(); i2++) {
                a(childAnimations.get(i2));
            }
        }
        if (animator instanceof ObjectAnimator) {
            ObjectAnimator objectAnimator = (ObjectAnimator) animator;
            String propertyName = objectAnimator.getPropertyName();
            if ("fillColor".equals(propertyName) || "strokeColor".equals(propertyName)) {
                if (this.f480h == null) {
                    this.f480h = new ArgbEvaluator();
                }
                objectAnimator.setEvaluator(this.f480h);
            }
        }
    }

    private void a(String str, Animator animator) {
        animator.setTarget(this.f478f.f484b.a(str));
        if (Build.VERSION.SDK_INT < 21) {
            a(animator);
        }
        b bVar = this.f478f;
        if (bVar.f486d == null) {
            bVar.f486d = new ArrayList<>();
            this.f478f.f487e = new a.e.a<>();
        }
        this.f478f.f486d.add(animator);
        this.f478f.f487e.put(animator, str);
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) {
        inflate(resources, xmlPullParser, attributeSet, null);
    }
}
