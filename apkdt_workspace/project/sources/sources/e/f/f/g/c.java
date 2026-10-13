package e.f.f.g;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import e.f.f.f.q;
import javax.annotation.Nullable;

/* compiled from: GenericDraweeHierarchyInflater.java */
/* loaded from: classes.dex */
public class c {
    public static b a(Context context, @Nullable AttributeSet attributeSet) {
        if (e.f.i.j.b.c()) {
            e.f.i.j.b.a("GenericDraweeHierarchyBuilder#inflateBuilder");
        }
        b bVar = new b(context.getResources());
        a(bVar, context, attributeSet);
        if (e.f.i.j.b.c()) {
            e.f.i.j.b.a();
        }
        return bVar;
    }

    public static b a(b bVar, Context context, @Nullable AttributeSet attributeSet) {
        boolean z;
        int i2;
        boolean z2;
        boolean z3;
        int i3;
        boolean z4;
        Context context2 = context;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, e.f.f.a.GenericDraweeHierarchy);
            try {
                int indexCount = obtainStyledAttributes.getIndexCount();
                boolean z5 = true;
                i3 = 0;
                int i4 = 0;
                boolean z6 = true;
                boolean z7 = true;
                boolean z8 = true;
                boolean z9 = true;
                boolean z10 = true;
                boolean z11 = true;
                boolean z12 = true;
                int i5 = 0;
                while (i4 < indexCount) {
                    try {
                        int index = obtainStyledAttributes.getIndex(i4);
                        if (index == e.f.f.a.GenericDraweeHierarchy_actualImageScaleType) {
                            bVar.a(a(obtainStyledAttributes, index));
                        } else if (index == e.f.f.a.GenericDraweeHierarchy_placeholderImage) {
                            bVar.d(a(context2, obtainStyledAttributes, index));
                        } else if (index == e.f.f.a.GenericDraweeHierarchy_pressedStateOverlayImage) {
                            bVar.e(a(context2, obtainStyledAttributes, index));
                        } else if (index == e.f.f.a.GenericDraweeHierarchy_progressBarImage) {
                            bVar.f(a(context2, obtainStyledAttributes, index));
                        } else if (index == e.f.f.a.GenericDraweeHierarchy_fadeDuration) {
                            bVar.a(obtainStyledAttributes.getInt(index, 0));
                        } else if (index == e.f.f.a.GenericDraweeHierarchy_viewAspectRatio) {
                            bVar.a(obtainStyledAttributes.getFloat(index, 0.0f));
                        } else if (index == e.f.f.a.GenericDraweeHierarchy_placeholderImageScaleType) {
                            bVar.c(a(obtainStyledAttributes, index));
                        } else if (index == e.f.f.a.GenericDraweeHierarchy_retryImage) {
                            bVar.g(a(context2, obtainStyledAttributes, index));
                        } else if (index == e.f.f.a.GenericDraweeHierarchy_retryImageScaleType) {
                            bVar.e(a(obtainStyledAttributes, index));
                        } else if (index == e.f.f.a.GenericDraweeHierarchy_failureImage) {
                            bVar.b(a(context2, obtainStyledAttributes, index));
                        } else if (index == e.f.f.a.GenericDraweeHierarchy_failureImageScaleType) {
                            bVar.b(a(obtainStyledAttributes, index));
                        } else if (index == e.f.f.a.GenericDraweeHierarchy_progressBarImageScaleType) {
                            bVar.d(a(obtainStyledAttributes, index));
                        } else if (index == e.f.f.a.GenericDraweeHierarchy_progressBarAutoRotateInterval) {
                            i3 = obtainStyledAttributes.getInteger(index, i3);
                        } else if (index == e.f.f.a.GenericDraweeHierarchy_backgroundImage) {
                            bVar.a(a(context2, obtainStyledAttributes, index));
                        } else if (index == e.f.f.a.GenericDraweeHierarchy_overlayImage) {
                            bVar.c(a(context2, obtainStyledAttributes, index));
                        } else if (index == e.f.f.a.GenericDraweeHierarchy_roundAsCircle) {
                            a(bVar).a(obtainStyledAttributes.getBoolean(index, false));
                        } else if (index == e.f.f.a.GenericDraweeHierarchy_roundedCornerRadius) {
                            i5 = obtainStyledAttributes.getDimensionPixelSize(index, i5);
                        } else {
                            int i6 = i5;
                            if (index == e.f.f.a.GenericDraweeHierarchy_roundTopLeft) {
                                z6 = obtainStyledAttributes.getBoolean(index, z6);
                            } else if (index == e.f.f.a.GenericDraweeHierarchy_roundTopRight) {
                                z8 = obtainStyledAttributes.getBoolean(index, z8);
                            } else if (index == e.f.f.a.GenericDraweeHierarchy_roundBottomLeft) {
                                z12 = obtainStyledAttributes.getBoolean(index, z12);
                            } else if (index == e.f.f.a.GenericDraweeHierarchy_roundBottomRight) {
                                z10 = obtainStyledAttributes.getBoolean(index, z10);
                            } else if (index == e.f.f.a.GenericDraweeHierarchy_roundTopStart) {
                                z7 = obtainStyledAttributes.getBoolean(index, z7);
                            } else if (index == e.f.f.a.GenericDraweeHierarchy_roundTopEnd) {
                                z9 = obtainStyledAttributes.getBoolean(index, z9);
                            } else if (index == e.f.f.a.GenericDraweeHierarchy_roundBottomStart) {
                                z5 = obtainStyledAttributes.getBoolean(index, z5);
                            } else if (index == e.f.f.a.GenericDraweeHierarchy_roundBottomEnd) {
                                z11 = obtainStyledAttributes.getBoolean(index, z11);
                            } else if (index == e.f.f.a.GenericDraweeHierarchy_roundWithOverlayColor) {
                                i5 = i6;
                                a(bVar).b(obtainStyledAttributes.getColor(index, 0));
                            } else {
                                i5 = i6;
                                if (index == e.f.f.a.GenericDraweeHierarchy_roundingBorderWidth) {
                                    a(bVar).a(obtainStyledAttributes.getDimensionPixelSize(index, 0));
                                } else if (index == e.f.f.a.GenericDraweeHierarchy_roundingBorderColor) {
                                    a(bVar).a(obtainStyledAttributes.getColor(index, 0));
                                } else if (index == e.f.f.a.GenericDraweeHierarchy_roundingBorderPadding) {
                                    a(bVar).b(obtainStyledAttributes.getDimensionPixelSize(index, 0));
                                    i4++;
                                    context2 = context;
                                }
                            }
                            i5 = i6;
                        }
                        i4++;
                        context2 = context;
                    } catch (Throwable th) {
                        th = th;
                        obtainStyledAttributes.recycle();
                        if (Build.VERSION.SDK_INT >= 17) {
                            context.getResources().getConfiguration().getLayoutDirection();
                        }
                        throw th;
                    }
                }
                obtainStyledAttributes.recycle();
                if (Build.VERSION.SDK_INT < 17 || context.getResources().getConfiguration().getLayoutDirection() != 1) {
                    z2 = z6 && z7;
                    z = z8 && z9;
                    z3 = z10 && z11;
                    z4 = z12 && z5;
                } else {
                    z2 = z6 && z9;
                    z = z8 && z7;
                    boolean z13 = z10 && z5;
                    z4 = z12 && z11;
                    z3 = z13;
                }
                i2 = i5;
            } catch (Throwable th2) {
                th = th2;
            }
        } else {
            z = true;
            i2 = 0;
            z2 = true;
            z3 = true;
            i3 = 0;
            z4 = true;
        }
        if (bVar.n() != null && i3 > 0) {
            bVar.f(new e.f.f.f.b(bVar.n(), i3));
        }
        if (i2 > 0) {
            a(bVar).a(z2 ? i2 : 0.0f, z ? i2 : 0.0f, z3 ? i2 : 0.0f, z4 ? i2 : 0.0f);
        }
        return bVar;
    }

    private static e a(b bVar) {
        if (bVar.s() == null) {
            bVar.a(new e());
        }
        return bVar.s();
    }

    @Nullable
    private static Drawable a(Context context, TypedArray typedArray, int i2) {
        int resourceId = typedArray.getResourceId(i2, 0);
        if (resourceId == 0) {
            return null;
        }
        return context.getResources().getDrawable(resourceId);
    }

    @Nullable
    private static q.b a(TypedArray typedArray, int i2) {
        switch (typedArray.getInt(i2, -2)) {
            case -1:
                return null;
            case 0:
                return q.b.f17362a;
            case 1:
                return q.b.f17363b;
            case 2:
                return q.b.f17364c;
            case 3:
                return q.b.f17365d;
            case 4:
                return q.b.f17366e;
            case 5:
                return q.b.f17367f;
            case 6:
                return q.b.f17368g;
            case 7:
                return q.b.f17369h;
            case 8:
                return q.b.f17370i;
            default:
                throw new RuntimeException("XML attribute not specified!");
        }
    }
}
