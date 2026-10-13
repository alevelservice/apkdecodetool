package androidx.core.widget;

import a.i.l.c;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.ColorStateList;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.icu.text.DecimalFormatSymbols;
import android.os.Build;
import android.text.Editable;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.method.PasswordTransformationMethod;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.TextView;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class TextViewCompat {

    /* renamed from: a, reason: collision with root package name */
    private static Field f2005a;

    /* renamed from: b, reason: collision with root package name */
    private static boolean f2006b;

    /* renamed from: c, reason: collision with root package name */
    private static Field f2007c;

    /* renamed from: d, reason: collision with root package name */
    private static boolean f2008d;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public @interface AutoSizeTextType {
    }

    private static Field a(String str) {
        Field field = null;
        try {
            field = TextView.class.getDeclaredField(str);
            field.setAccessible(true);
            return field;
        } catch (NoSuchFieldException unused) {
            String str2 = "Could not retrieve " + str + " field.";
            return field;
        }
    }

    public static void b(@NonNull TextView textView, @IntRange(from = 0) @Px int i2) {
        int i3;
        a.i.m.i.a(i2);
        Paint.FontMetricsInt fontMetricsInt = textView.getPaint().getFontMetricsInt();
        if (Build.VERSION.SDK_INT >= 16 && !textView.getIncludeFontPadding()) {
            i3 = fontMetricsInt.descent;
        } else {
            i3 = fontMetricsInt.bottom;
        }
        if (i2 > Math.abs(i3)) {
            textView.setPadding(textView.getPaddingLeft(), textView.getPaddingTop(), textView.getPaddingRight(), i2 - i3);
        }
    }

    public static int c(@NonNull TextView textView) {
        return textView.getPaddingBottom() + textView.getPaint().getFontMetricsInt().bottom;
    }

    public static int d(@NonNull TextView textView) {
        if (Build.VERSION.SDK_INT >= 16) {
            return textView.getMaxLines();
        }
        if (!f2008d) {
            f2007c = a("mMaxMode");
            f2008d = true;
        }
        Field field = f2007c;
        if (field == null || a(field, textView) != 1) {
            return -1;
        }
        if (!f2006b) {
            f2005a = a("mMaximum");
            f2006b = true;
        }
        Field field2 = f2005a;
        if (field2 != null) {
            return a(field2, textView);
        }
        return -1;
    }

    @RequiresApi(18)
    private static TextDirectionHeuristic e(@NonNull TextView textView) {
        if (textView.getTransformationMethod() instanceof PasswordTransformationMethod) {
            return TextDirectionHeuristics.LTR;
        }
        if (Build.VERSION.SDK_INT >= 28 && (textView.getInputType() & 15) == 3) {
            byte directionality = Character.getDirectionality(DecimalFormatSymbols.getInstance(textView.getTextLocale()).getDigitStrings()[0].codePointAt(0));
            if (directionality != 1 && directionality != 2) {
                return TextDirectionHeuristics.LTR;
            }
            return TextDirectionHeuristics.RTL;
        }
        boolean z = textView.getLayoutDirection() == 1;
        switch (textView.getTextDirection()) {
            case 2:
                return TextDirectionHeuristics.ANYRTL_LTR;
            case 3:
                return TextDirectionHeuristics.LTR;
            case 4:
                return TextDirectionHeuristics.RTL;
            case 5:
                return TextDirectionHeuristics.LOCALE;
            case 6:
                return TextDirectionHeuristics.FIRSTSTRONG_LTR;
            case 7:
                return TextDirectionHeuristics.FIRSTSTRONG_RTL;
            default:
                if (z) {
                    return TextDirectionHeuristics.FIRSTSTRONG_RTL;
                }
                return TextDirectionHeuristics.FIRSTSTRONG_LTR;
        }
    }

    @NonNull
    public static c.a f(@NonNull TextView textView) {
        if (Build.VERSION.SDK_INT >= 28) {
            return new c.a(textView.getTextMetricsParams());
        }
        c.a.C0007a c0007a = new c.a.C0007a(new TextPaint(textView.getPaint()));
        if (Build.VERSION.SDK_INT >= 23) {
            c0007a.a(textView.getBreakStrategy());
            c0007a.b(textView.getHyphenationFrequency());
        }
        if (Build.VERSION.SDK_INT >= 18) {
            c0007a.a(e(textView));
        }
        return c0007a.a();
    }

    public static void c(@NonNull TextView textView, @IntRange(from = 0) @Px int i2) {
        a.i.m.i.a(i2);
        if (i2 != textView.getPaint().getFontMetricsInt(null)) {
            textView.setLineSpacing(i2 - r0, 1.0f);
        }
    }

    private static int a(Field field, TextView textView) {
        try {
            return field.getInt(textView);
        } catch (IllegalAccessException unused) {
            String str = "Could not retrieve value of " + field.getName() + " field.";
            return -1;
        }
    }

    public static void a(@NonNull TextView textView, @Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 18) {
            textView.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
            return;
        }
        if (i2 >= 17) {
            boolean z = textView.getLayoutDirection() == 1;
            Drawable drawable5 = z ? drawable3 : drawable;
            if (!z) {
                drawable = drawable3;
            }
            textView.setCompoundDrawables(drawable5, drawable2, drawable, drawable4);
            return;
        }
        textView.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
    }

    @NonNull
    public static Drawable[] a(@NonNull TextView textView) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 18) {
            return textView.getCompoundDrawablesRelative();
        }
        if (i2 >= 17) {
            boolean z = textView.getLayoutDirection() == 1;
            Drawable[] compoundDrawables = textView.getCompoundDrawables();
            if (z) {
                Drawable drawable = compoundDrawables[2];
                Drawable drawable2 = compoundDrawables[0];
                compoundDrawables[0] = drawable;
                compoundDrawables[2] = drawable2;
            }
            return compoundDrawables;
        }
        return textView.getCompoundDrawables();
    }

    public static int b(@NonNull TextView textView) {
        return textView.getPaddingTop() - textView.getPaint().getFontMetricsInt().top;
    }

    public static void d(@NonNull TextView textView, @StyleRes int i2) {
        if (Build.VERSION.SDK_INT >= 23) {
            textView.setTextAppearance(i2);
        } else {
            textView.setTextAppearance(textView.getContext(), i2);
        }
    }

    @NonNull
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public static ActionMode.Callback a(@NonNull TextView textView, @NonNull ActionMode.Callback callback) {
        int i2 = Build.VERSION.SDK_INT;
        return (i2 < 26 || i2 > 27 || (callback instanceof a)) ? callback : new a(callback, textView);
    }

    public static void a(@NonNull TextView textView, @IntRange(from = 0) @Px int i2) {
        int i3;
        a.i.m.i.a(i2);
        if (Build.VERSION.SDK_INT >= 28) {
            textView.setFirstBaselineToTopHeight(i2);
            return;
        }
        Paint.FontMetricsInt fontMetricsInt = textView.getPaint().getFontMetricsInt();
        if (Build.VERSION.SDK_INT >= 16 && !textView.getIncludeFontPadding()) {
            i3 = fontMetricsInt.ascent;
        } else {
            i3 = fontMetricsInt.top;
        }
        if (i2 > Math.abs(i3)) {
            textView.setPadding(textView.getPaddingLeft(), i2 + i3, textView.getPaddingRight(), textView.getPaddingBottom());
        }
    }

    @RequiresApi(26)
    /* loaded from: classes.dex */
    private static class a implements ActionMode.Callback {

        /* renamed from: a, reason: collision with root package name */
        private final ActionMode.Callback f2009a;

        /* renamed from: b, reason: collision with root package name */
        private final TextView f2010b;

        /* renamed from: c, reason: collision with root package name */
        private Class<?> f2011c;

        /* renamed from: d, reason: collision with root package name */
        private Method f2012d;

        /* renamed from: e, reason: collision with root package name */
        private boolean f2013e;

        /* renamed from: f, reason: collision with root package name */
        private boolean f2014f = false;

        a(ActionMode.Callback callback, TextView textView) {
            this.f2009a = callback;
            this.f2010b = textView;
        }

        private void a(Menu menu) {
            Method declaredMethod;
            Context context = this.f2010b.getContext();
            PackageManager packageManager = context.getPackageManager();
            if (!this.f2014f) {
                this.f2014f = true;
                try {
                    this.f2011c = Class.forName("com.android.internal.view.menu.MenuBuilder");
                    this.f2012d = this.f2011c.getDeclaredMethod("removeItemAt", Integer.TYPE);
                    this.f2013e = true;
                } catch (ClassNotFoundException | NoSuchMethodException unused) {
                    this.f2011c = null;
                    this.f2012d = null;
                    this.f2013e = false;
                }
            }
            try {
                if (this.f2013e && this.f2011c.isInstance(menu)) {
                    declaredMethod = this.f2012d;
                } else {
                    declaredMethod = menu.getClass().getDeclaredMethod("removeItemAt", Integer.TYPE);
                }
                for (int size = menu.size() - 1; size >= 0; size--) {
                    MenuItem item = menu.getItem(size);
                    if (item.getIntent() != null && "android.intent.action.PROCESS_TEXT".equals(item.getIntent().getAction())) {
                        declaredMethod.invoke(menu, Integer.valueOf(size));
                    }
                }
                List<ResolveInfo> a2 = a(context, packageManager);
                for (int i2 = 0; i2 < a2.size(); i2++) {
                    ResolveInfo resolveInfo = a2.get(i2);
                    menu.add(0, 0, i2 + 100, resolveInfo.loadLabel(packageManager)).setIntent(a(resolveInfo, this.f2010b)).setShowAsAction(1);
                }
            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused2) {
            }
        }

        @Override // android.view.ActionMode.Callback
        public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
            return this.f2009a.onActionItemClicked(actionMode, menuItem);
        }

        @Override // android.view.ActionMode.Callback
        public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
            return this.f2009a.onCreateActionMode(actionMode, menu);
        }

        @Override // android.view.ActionMode.Callback
        public void onDestroyActionMode(ActionMode actionMode) {
            this.f2009a.onDestroyActionMode(actionMode);
        }

        @Override // android.view.ActionMode.Callback
        public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
            a(menu);
            return this.f2009a.onPrepareActionMode(actionMode, menu);
        }

        private List<ResolveInfo> a(Context context, PackageManager packageManager) {
            ArrayList arrayList = new ArrayList();
            if (!(context instanceof Activity)) {
                return arrayList;
            }
            for (ResolveInfo resolveInfo : packageManager.queryIntentActivities(a(), 0)) {
                if (a(resolveInfo, context)) {
                    arrayList.add(resolveInfo);
                }
            }
            return arrayList;
        }

        private boolean a(ResolveInfo resolveInfo, Context context) {
            if (context.getPackageName().equals(resolveInfo.activityInfo.packageName)) {
                return true;
            }
            if (!resolveInfo.activityInfo.exported) {
                return false;
            }
            String str = resolveInfo.activityInfo.permission;
            return str == null || context.checkSelfPermission(str) == 0;
        }

        private Intent a(ResolveInfo resolveInfo, TextView textView) {
            return a().putExtra("android.intent.extra.PROCESS_TEXT_READONLY", !a(textView)).setClassName(resolveInfo.activityInfo.packageName, resolveInfo.activityInfo.name);
        }

        private boolean a(TextView textView) {
            return (textView instanceof Editable) && textView.onCheckIsTextEditor() && textView.isEnabled();
        }

        private Intent a() {
            return new Intent().setAction("android.intent.action.PROCESS_TEXT").setType("text/plain");
        }
    }

    public static void a(@NonNull TextView textView, @NonNull c.a aVar) {
        if (Build.VERSION.SDK_INT >= 18) {
            textView.setTextDirection(a(aVar.c()));
        }
        if (Build.VERSION.SDK_INT < 23) {
            float textScaleX = aVar.d().getTextScaleX();
            textView.getPaint().set(aVar.d());
            if (textScaleX == textView.getTextScaleX()) {
                textView.setTextScaleX((textScaleX / 2.0f) + 1.0f);
            }
            textView.setTextScaleX(textScaleX);
            return;
        }
        textView.getPaint().set(aVar.d());
        textView.setBreakStrategy(aVar.a());
        textView.setHyphenationFrequency(aVar.b());
    }

    public static void a(@NonNull TextView textView, @NonNull a.i.l.c cVar) {
        if (Build.VERSION.SDK_INT >= 29) {
            textView.setText(cVar.b());
        } else {
            if (f(textView).a(cVar.a())) {
                textView.setText(cVar);
                return;
            }
            throw new IllegalArgumentException("Given text can not be applied to TextView.");
        }
    }

    @RequiresApi(18)
    private static int a(@NonNull TextDirectionHeuristic textDirectionHeuristic) {
        if (textDirectionHeuristic == TextDirectionHeuristics.FIRSTSTRONG_RTL || textDirectionHeuristic == TextDirectionHeuristics.FIRSTSTRONG_LTR) {
            return 1;
        }
        if (textDirectionHeuristic == TextDirectionHeuristics.ANYRTL_LTR) {
            return 2;
        }
        if (textDirectionHeuristic == TextDirectionHeuristics.LTR) {
            return 3;
        }
        if (textDirectionHeuristic == TextDirectionHeuristics.RTL) {
            return 4;
        }
        if (textDirectionHeuristic == TextDirectionHeuristics.LOCALE) {
            return 5;
        }
        if (textDirectionHeuristic == TextDirectionHeuristics.FIRSTSTRONG_LTR) {
            return 6;
        }
        return textDirectionHeuristic == TextDirectionHeuristics.FIRSTSTRONG_RTL ? 7 : 1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void a(@NonNull TextView textView, @Nullable ColorStateList colorStateList) {
        a.i.m.i.a(textView);
        if (Build.VERSION.SDK_INT >= 24) {
            textView.setCompoundDrawableTintList(colorStateList);
        } else if (textView instanceof j) {
            ((j) textView).setSupportCompoundDrawablesTintList(colorStateList);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void a(@NonNull TextView textView, @Nullable PorterDuff.Mode mode) {
        a.i.m.i.a(textView);
        if (Build.VERSION.SDK_INT >= 24) {
            textView.setCompoundDrawableTintMode(mode);
        } else if (textView instanceof j) {
            ((j) textView).setSupportCompoundDrawablesTintMode(mode);
        }
    }
}
