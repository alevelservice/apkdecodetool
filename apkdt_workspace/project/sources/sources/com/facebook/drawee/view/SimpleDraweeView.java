package com.facebook.drawee.view;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.net.Uri;
import android.util.AttributeSet;
import androidx.annotation.DrawableRes;
import com.facebook.common.internal.h;
import com.facebook.common.internal.j;
import e.f.c.j.f;
import e.f.f.i.d;
import javax.annotation.Nullable;

/* loaded from: classes.dex */
public class SimpleDraweeView extends GenericDraweeView {

    /* renamed from: l, reason: collision with root package name */
    private static j<? extends e.f.f.d.b> f3579l;

    /* renamed from: k, reason: collision with root package name */
    private e.f.f.d.b f3580k;

    public SimpleDraweeView(Context context, e.f.f.g.a aVar) {
        super(context, aVar);
        a(context, null);
    }

    private void a(Context context, @Nullable AttributeSet attributeSet) {
        int resourceId;
        try {
            if (e.f.i.j.b.c()) {
                e.f.i.j.b.a("SimpleDraweeView#init");
            }
            if (isInEditMode()) {
                getTopLevelDrawable().setVisible(true, false);
                getTopLevelDrawable().invalidateSelf();
            } else {
                h.a(f3579l, "SimpleDraweeView was not initialized!");
                this.f3580k = f3579l.get();
            }
            if (attributeSet != null) {
                TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, e.f.f.a.SimpleDraweeView);
                try {
                    if (obtainStyledAttributes.hasValue(e.f.f.a.SimpleDraweeView_actualImageUri)) {
                        setImageURI(Uri.parse(obtainStyledAttributes.getString(e.f.f.a.SimpleDraweeView_actualImageUri)), (Object) null);
                    } else if (obtainStyledAttributes.hasValue(e.f.f.a.SimpleDraweeView_actualImageResource) && (resourceId = obtainStyledAttributes.getResourceId(e.f.f.a.SimpleDraweeView_actualImageResource, -1)) != -1) {
                        if (isInEditMode()) {
                            setImageResource(resourceId);
                        } else {
                            setActualImageResource(resourceId);
                        }
                    }
                    obtainStyledAttributes.recycle();
                } catch (Throwable th) {
                    obtainStyledAttributes.recycle();
                    throw th;
                }
            }
        } finally {
            if (e.f.i.j.b.c()) {
                e.f.i.j.b.a();
            }
        }
    }

    public static void initialize(j<? extends e.f.f.d.b> jVar) {
        f3579l = jVar;
    }

    public static void shutDown() {
        f3579l = null;
    }

    protected e.f.f.d.b getControllerBuilder() {
        return this.f3580k;
    }

    public void setActualImageResource(@DrawableRes int i2) {
        setActualImageResource(i2, null);
    }

    public void setImageRequest(e.f.i.i.b bVar) {
        e.f.f.d.b bVar2 = this.f3580k;
        bVar2.b((e.f.f.d.b) bVar);
        bVar2.a(getController());
        setController(bVar2.a());
    }

    @Override // com.facebook.drawee.view.DraweeView, android.widget.ImageView
    public void setImageResource(int i2) {
        super.setImageResource(i2);
    }

    @Override // com.facebook.drawee.view.DraweeView, android.widget.ImageView
    public void setImageURI(Uri uri) {
        setImageURI(uri, (Object) null);
    }

    public void setActualImageResource(@DrawableRes int i2, @Nullable Object obj) {
        setImageURI(f.a(i2), obj);
    }

    public void setImageURI(@Nullable String str) {
        setImageURI(str, (Object) null);
    }

    public SimpleDraweeView(Context context) {
        super(context);
        a(context, null);
    }

    public void setImageURI(Uri uri, @Nullable Object obj) {
        e.f.f.d.b bVar = this.f3580k;
        bVar.a(obj);
        d a2 = bVar.a(uri);
        a2.a(getController());
        setController(a2.a());
    }

    public SimpleDraweeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context, attributeSet);
    }

    public SimpleDraweeView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        a(context, attributeSet);
    }

    @TargetApi(21)
    public SimpleDraweeView(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        a(context, attributeSet);
    }

    public void setImageURI(@Nullable String str, @Nullable Object obj) {
        setImageURI(str != null ? Uri.parse(str) : null, obj);
    }
}
