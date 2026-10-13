package com.google.android.gms.internal.ads;

import java.util.Arrays;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class qw0 {

    /* renamed from: a, reason: collision with root package name */
    private final String f9012a;

    /* renamed from: b, reason: collision with root package name */
    private final tw0 f9013b;

    /* renamed from: c, reason: collision with root package name */
    private tw0 f9014c;

    private qw0(String str) {
        this.f9013b = new tw0();
        this.f9014c = this.f9013b;
        uw0.a(str);
        this.f9012a = str;
    }

    public final qw0 a(@NullableDecl Object obj) {
        tw0 tw0Var = new tw0();
        this.f9014c.f9644b = tw0Var;
        this.f9014c = tw0Var;
        tw0Var.f9643a = obj;
        return this;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(32);
        sb.append(this.f9012a);
        sb.append('{');
        tw0 tw0Var = this.f9013b.f9644b;
        String str = "";
        while (tw0Var != null) {
            Object obj = tw0Var.f9643a;
            sb.append(str);
            if (obj != null && obj.getClass().isArray()) {
                String deepToString = Arrays.deepToString(new Object[]{obj});
                sb.append((CharSequence) deepToString, 1, deepToString.length() - 1);
            } else {
                sb.append(obj);
            }
            tw0Var = tw0Var.f9644b;
            str = ", ";
        }
        sb.append('}');
        return sb.toString();
    }
}
