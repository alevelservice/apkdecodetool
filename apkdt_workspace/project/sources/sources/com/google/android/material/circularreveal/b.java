package com.google.android.material.circularreveal;

import android.animation.TypeEvaluator;
import android.graphics.drawable.Drawable;
import android.util.Property;
import androidx.annotation.ColorInt;
import androidx.annotation.Nullable;
import com.google.android.material.circularreveal.CircularRevealHelper;

/* compiled from: CircularRevealWidget.java */
/* loaded from: classes.dex */
public interface b extends CircularRevealHelper.a {

    /* compiled from: CircularRevealWidget.java */
    /* renamed from: com.google.android.material.circularreveal.b$b, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0101b implements TypeEvaluator<e> {

        /* renamed from: b, reason: collision with root package name */
        public static final TypeEvaluator<e> f13782b = new C0101b();

        /* renamed from: a, reason: collision with root package name */
        private final e f13783a = new e();

        @Override // android.animation.TypeEvaluator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public e evaluate(float f2, e eVar, e eVar2) {
            this.f13783a.a(e.i.b.c.p.a.b(eVar.f13786a, eVar2.f13786a, f2), e.i.b.c.p.a.b(eVar.f13787b, eVar2.f13787b, f2), e.i.b.c.p.a.b(eVar.f13788c, eVar2.f13788c, f2));
            return this.f13783a;
        }
    }

    /* compiled from: CircularRevealWidget.java */
    /* loaded from: classes.dex */
    public static class c extends Property<b, e> {

        /* renamed from: a, reason: collision with root package name */
        public static final Property<b, e> f13784a = new c("circularReveal");

        private c(String str) {
            super(e.class, str);
        }

        @Override // android.util.Property
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public e get(b bVar) {
            return bVar.getRevealInfo();
        }

        @Override // android.util.Property
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void set(b bVar, e eVar) {
            bVar.setRevealInfo(eVar);
        }
    }

    /* compiled from: CircularRevealWidget.java */
    /* loaded from: classes.dex */
    public static class d extends Property<b, Integer> {

        /* renamed from: a, reason: collision with root package name */
        public static final Property<b, Integer> f13785a = new d("circularRevealScrimColor");

        private d(String str) {
            super(Integer.class, str);
        }

        @Override // android.util.Property
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Integer get(b bVar) {
            return Integer.valueOf(bVar.getCircularRevealScrimColor());
        }

        @Override // android.util.Property
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void set(b bVar, Integer num) {
            bVar.setCircularRevealScrimColor(num.intValue());
        }
    }

    /* compiled from: CircularRevealWidget.java */
    /* loaded from: classes.dex */
    public static class e {

        /* renamed from: a, reason: collision with root package name */
        public float f13786a;

        /* renamed from: b, reason: collision with root package name */
        public float f13787b;

        /* renamed from: c, reason: collision with root package name */
        public float f13788c;

        public void a(float f2, float f3, float f4) {
            this.f13786a = f2;
            this.f13787b = f3;
            this.f13788c = f4;
        }

        private e() {
        }

        public e(float f2, float f3, float f4) {
            this.f13786a = f2;
            this.f13787b = f3;
            this.f13788c = f4;
        }

        public void a(e eVar) {
            a(eVar.f13786a, eVar.f13787b, eVar.f13788c);
        }

        public boolean a() {
            return this.f13788c == Float.MAX_VALUE;
        }

        public e(e eVar) {
            this(eVar.f13786a, eVar.f13787b, eVar.f13788c);
        }
    }

    void buildCircularRevealCache();

    void destroyCircularRevealCache();

    @ColorInt
    int getCircularRevealScrimColor();

    @Nullable
    e getRevealInfo();

    void setCircularRevealOverlayDrawable(@Nullable Drawable drawable);

    void setCircularRevealScrimColor(@ColorInt int i2);

    void setRevealInfo(@Nullable e eVar);
}
