package com.google.android.gms.ads.internal.overlay;

import android.R;
import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import androidx.annotation.Nullable;
import com.google.android.gms.internal.ads.gd;
import com.google.android.gms.internal.ads.mu1;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class zzo extends FrameLayout implements View.OnClickListener {

    /* renamed from: e, reason: collision with root package name */
    private final ImageButton f4589e;

    /* renamed from: f, reason: collision with root package name */
    private final q f4590f;

    public zzo(Context context, n nVar, @Nullable q qVar) {
        super(context);
        this.f4590f = qVar;
        setOnClickListener(this);
        this.f4589e = new ImageButton(context);
        this.f4589e.setImageResource(R.drawable.btn_dialog);
        this.f4589e.setBackgroundColor(0);
        this.f4589e.setOnClickListener(this);
        ImageButton imageButton = this.f4589e;
        mu1.a();
        int b2 = gd.b(context, nVar.f4569a);
        mu1.a();
        int b3 = gd.b(context, 0);
        mu1.a();
        int b4 = gd.b(context, nVar.f4570b);
        mu1.a();
        imageButton.setPadding(b2, b3, b4, gd.b(context, nVar.f4571c));
        this.f4589e.setContentDescription("Interstitial close button");
        ImageButton imageButton2 = this.f4589e;
        mu1.a();
        int b5 = gd.b(context, nVar.f4572d + nVar.f4569a + nVar.f4570b);
        mu1.a();
        addView(imageButton2, new FrameLayout.LayoutParams(b5, gd.b(context, nVar.f4572d + nVar.f4571c), 17));
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        q qVar = this.f4590f;
        if (qVar != null) {
            qVar.zzsk();
        }
    }

    public final void zzae(boolean z) {
        if (z) {
            this.f4589e.setVisibility(8);
        } else {
            this.f4589e.setVisibility(0);
        }
    }
}
