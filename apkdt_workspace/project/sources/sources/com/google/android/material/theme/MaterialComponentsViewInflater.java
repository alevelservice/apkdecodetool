package com.google.android.material.theme;

import android.content.Context;
import android.util.AttributeSet;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.appcompat.app.f;
import androidx.appcompat.widget.AppCompatButton;
import com.google.android.material.button.MaterialButton;

@Keep
/* loaded from: classes.dex */
public class MaterialComponentsViewInflater extends f {
    @Override // androidx.appcompat.app.f
    @NonNull
    protected AppCompatButton createButton(Context context, AttributeSet attributeSet) {
        return new MaterialButton(context, attributeSet);
    }
}
