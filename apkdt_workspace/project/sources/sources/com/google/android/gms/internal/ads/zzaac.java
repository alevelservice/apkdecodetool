package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Typeface;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.text.TextUtils;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.Iterator;
import java.util.List;
import javax.annotation.ParametersAreNonnullByDefault;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@ParametersAreNonnullByDefault
/* loaded from: classes.dex */
public final class zzaac extends RelativeLayout {

    /* renamed from: f, reason: collision with root package name */
    private static final float[] f10877f = {5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f};

    /* renamed from: e, reason: collision with root package name */
    @Nullable
    private AnimationDrawable f10878e;

    public zzaac(Context context, zzzz zzzzVar, RelativeLayout.LayoutParams layoutParams) {
        super(context);
        com.google.android.gms.common.internal.m.a(zzzzVar);
        ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(f10877f, null, null));
        shapeDrawable.getPaint().setColor(zzzzVar.getBackgroundColor());
        setLayoutParams(layoutParams);
        com.google.android.gms.ads.internal.n.e();
        setBackground(shapeDrawable);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        if (!TextUtils.isEmpty(zzzzVar.getText())) {
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
            TextView textView = new TextView(context);
            textView.setLayoutParams(layoutParams3);
            textView.setId(1195835393);
            textView.setTypeface(Typeface.DEFAULT);
            textView.setText(zzzzVar.getText());
            textView.setTextColor(zzzzVar.getTextColor());
            textView.setTextSize(zzzzVar.getTextSize());
            mu1.a();
            int b2 = gd.b(context, 4);
            mu1.a();
            textView.setPadding(b2, 0, gd.b(context, 4), 0);
            addView(textView);
            layoutParams2.addRule(1, textView.getId());
        }
        ImageView imageView = new ImageView(context);
        imageView.setLayoutParams(layoutParams2);
        imageView.setId(1195835394);
        List<zzaae> zzqb = zzzzVar.zzqb();
        if (zzqb != null && zzqb.size() > 1) {
            this.f10878e = new AnimationDrawable();
            Iterator<zzaae> it = zzqb.iterator();
            while (it.hasNext()) {
                try {
                    this.f10878e.addFrame((Drawable) ObjectWrapper.unwrap(it.next().zzqf()), zzzzVar.zzqc());
                } catch (Exception e2) {
                    qd.b("Error while getting drawable.", e2);
                }
            }
            com.google.android.gms.ads.internal.n.e();
            imageView.setBackground(this.f10878e);
        } else if (zzqb.size() == 1) {
            try {
                imageView.setImageDrawable((Drawable) ObjectWrapper.unwrap(zzqb.get(0).zzqf()));
            } catch (Exception e3) {
                qd.b("Error while getting drawable.", e3);
            }
        }
        addView(imageView);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        AnimationDrawable animationDrawable = this.f10878e;
        if (animationDrawable != null) {
            animationDrawable.start();
        }
        super.onAttachedToWindow();
    }
}
