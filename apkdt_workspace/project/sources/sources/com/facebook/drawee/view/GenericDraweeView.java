package com.facebook.drawee.view;

import android.annotation.TargetApi;
import android.content.Context;
import android.util.AttributeSet;
import e.f.f.g.c;
import javax.annotation.Nullable;

/* loaded from: classes.dex */
public class GenericDraweeView extends DraweeView<e.f.f.g.a> {
    public GenericDraweeView(Context context, e.f.f.g.a aVar) {
        super(context);
        setHierarchy(aVar);
    }

    protected void inflateHierarchy(Context context, @Nullable AttributeSet attributeSet) {
        if (e.f.i.j.b.c()) {
            e.f.i.j.b.a("GenericDraweeView#inflateHierarchy");
        }
        e.f.f.g.b a2 = c.a(context, attributeSet);
        setAspectRatio(a2.f());
        setHierarchy(a2.a());
        if (e.f.i.j.b.c()) {
            e.f.i.j.b.a();
        }
    }

    public GenericDraweeView(Context context) {
        super(context);
        inflateHierarchy(context, null);
    }

    public GenericDraweeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        inflateHierarchy(context, attributeSet);
    }

    public GenericDraweeView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        inflateHierarchy(context, attributeSet);
    }

    @TargetApi(21)
    public GenericDraweeView(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        inflateHierarchy(context, attributeSet);
    }
}
