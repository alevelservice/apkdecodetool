package androidx.appcompat.graphics.drawable;

import android.annotation.SuppressLint;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.StateSet;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.appcompat.graphics.drawable.b;

/* compiled from: StateListDrawable.java */
@SuppressLint({"RestrictedAPI"})
@RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
class d extends b {
    private a q;
    private boolean r;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: StateListDrawable.java */
    /* loaded from: classes.dex */
    public static class a extends b.c {
        int[][] J;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(a aVar, d dVar, Resources resources) {
            super(aVar, dVar, resources);
            if (aVar != null) {
                this.J = aVar.J;
            } else {
                this.J = new int[c()];
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public int a(int[] iArr, Drawable drawable) {
            int a2 = a(drawable);
            this.J[a2] = iArr;
            return a2;
        }

        @Override // androidx.appcompat.graphics.drawable.b.c
        void m() {
            int[][] iArr = this.J;
            int[][] iArr2 = new int[iArr.length];
            for (int length = iArr.length - 1; length >= 0; length--) {
                int[][] iArr3 = this.J;
                iArr2[length] = iArr3[length] != null ? (int[]) iArr3[length].clone() : null;
            }
            this.J = iArr2;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @NonNull
        public Drawable newDrawable() {
            return new d(this, null);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @NonNull
        public Drawable newDrawable(Resources resources) {
            return new d(this, resources);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public int a(int[] iArr) {
            int[][] iArr2 = this.J;
            int d2 = d();
            for (int i2 = 0; i2 < d2; i2++) {
                if (StateSet.stateSetMatches(iArr2[i2], iArr)) {
                    return i2;
                }
            }
            return -1;
        }

        @Override // androidx.appcompat.graphics.drawable.b.c
        public void a(int i2, int i3) {
            super.a(i2, i3);
            int[][] iArr = new int[i3];
            System.arraycopy(this.J, 0, iArr, 0, i2);
            this.J = iArr;
        }
    }

    d(a aVar, Resources resources) {
        a(new a(aVar, this, resources));
        onStateChange(getState());
    }

    @Override // androidx.appcompat.graphics.drawable.b, android.graphics.drawable.Drawable
    @RequiresApi(21)
    public void applyTheme(@NonNull Resources.Theme theme) {
        super.applyTheme(theme);
        onStateChange(getState());
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return true;
    }

    @Override // androidx.appcompat.graphics.drawable.b, android.graphics.drawable.Drawable
    @NonNull
    public Drawable mutate() {
        if (!this.r) {
            super.mutate();
            if (this == this) {
                this.q.m();
                this.r = true;
            }
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.graphics.drawable.b, android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        boolean onStateChange = super.onStateChange(iArr);
        int a2 = this.q.a(iArr);
        if (a2 < 0) {
            a2 = this.q.a(StateSet.WILD_CARD);
        }
        return a(a2) || onStateChange;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int[] a(AttributeSet attributeSet) {
        int attributeCount = attributeSet.getAttributeCount();
        int[] iArr = new int[attributeCount];
        int i2 = 0;
        for (int i3 = 0; i3 < attributeCount; i3++) {
            int attributeNameResource = attributeSet.getAttributeNameResource(i3);
            if (attributeNameResource != 0 && attributeNameResource != 16842960 && attributeNameResource != 16843161) {
                int i4 = i2 + 1;
                if (!attributeSet.getAttributeBooleanValue(i3, false)) {
                    attributeNameResource = -attributeNameResource;
                }
                iArr[i2] = attributeNameResource;
                i2 = i4;
            }
        }
        return StateSet.trimStateSet(iArr, i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(@Nullable a aVar) {
        if (aVar != null) {
            a(aVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.appcompat.graphics.drawable.b
    public a a() {
        return new a(this.q, this, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.appcompat.graphics.drawable.b
    public void a(@NonNull b.c cVar) {
        super.a(cVar);
        if (cVar instanceof a) {
            this.q = (a) cVar;
        }
    }
}
