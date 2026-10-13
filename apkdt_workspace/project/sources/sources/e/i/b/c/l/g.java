package e.i.b.c.l;

import android.animation.TypeEvaluator;
import android.graphics.Matrix;

/* compiled from: MatrixEvaluator.java */
/* loaded from: classes.dex */
public class g implements TypeEvaluator<Matrix> {

    /* renamed from: a, reason: collision with root package name */
    private final float[] f17906a = new float[9];

    /* renamed from: b, reason: collision with root package name */
    private final float[] f17907b = new float[9];

    /* renamed from: c, reason: collision with root package name */
    private final Matrix f17908c = new Matrix();

    @Override // android.animation.TypeEvaluator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public Matrix evaluate(float f2, Matrix matrix, Matrix matrix2) {
        matrix.getValues(this.f17906a);
        matrix2.getValues(this.f17907b);
        for (int i2 = 0; i2 < 9; i2++) {
            float[] fArr = this.f17907b;
            float f3 = fArr[i2];
            float[] fArr2 = this.f17906a;
            fArr[i2] = fArr2[i2] + ((f3 - fArr2[i2]) * f2);
        }
        this.f17908c.setValues(this.f17907b);
        return this.f17908c;
    }
}
