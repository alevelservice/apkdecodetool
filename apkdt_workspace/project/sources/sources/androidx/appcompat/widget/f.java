package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import androidx.annotation.ColorInt;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.appcompat.widget.u;

/* compiled from: AppCompatDrawableManager.java */
@RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public final class f {

    /* renamed from: b, reason: collision with root package name */
    private static final PorterDuff.Mode f1338b = PorterDuff.Mode.SRC_IN;

    /* renamed from: c, reason: collision with root package name */
    private static f f1339c;

    /* renamed from: a, reason: collision with root package name */
    private u f1340a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AppCompatDrawableManager.java */
    /* loaded from: classes.dex */
    public class a implements u.e {

        /* renamed from: a, reason: collision with root package name */
        private final int[] f1341a = {a.a.e.abc_textfield_search_default_mtrl_alpha, a.a.e.abc_textfield_default_mtrl_alpha, a.a.e.abc_ab_share_pack_mtrl_alpha};

        /* renamed from: b, reason: collision with root package name */
        private final int[] f1342b = {a.a.e.abc_ic_commit_search_api_mtrl_alpha, a.a.e.abc_seekbar_tick_mark_material, a.a.e.abc_ic_menu_share_mtrl_alpha, a.a.e.abc_ic_menu_copy_mtrl_am_alpha, a.a.e.abc_ic_menu_cut_mtrl_alpha, a.a.e.abc_ic_menu_selectall_mtrl_alpha, a.a.e.abc_ic_menu_paste_mtrl_am_alpha};

        /* renamed from: c, reason: collision with root package name */
        private final int[] f1343c = {a.a.e.abc_textfield_activated_mtrl_alpha, a.a.e.abc_textfield_search_activated_mtrl_alpha, a.a.e.abc_cab_background_top_mtrl_alpha, a.a.e.abc_text_cursor_material, a.a.e.abc_text_select_handle_left_mtrl_dark, a.a.e.abc_text_select_handle_middle_mtrl_dark, a.a.e.abc_text_select_handle_right_mtrl_dark, a.a.e.abc_text_select_handle_left_mtrl_light, a.a.e.abc_text_select_handle_middle_mtrl_light, a.a.e.abc_text_select_handle_right_mtrl_light};

        /* renamed from: d, reason: collision with root package name */
        private final int[] f1344d = {a.a.e.abc_popup_background_mtrl_mult, a.a.e.abc_cab_background_internal_bg, a.a.e.abc_menu_hardkey_panel_mtrl_mult};

        /* renamed from: e, reason: collision with root package name */
        private final int[] f1345e = {a.a.e.abc_tab_indicator_material, a.a.e.abc_textfield_search_material};

        /* renamed from: f, reason: collision with root package name */
        private final int[] f1346f = {a.a.e.abc_btn_check_material, a.a.e.abc_btn_radio_material, a.a.e.abc_btn_check_material_anim, a.a.e.abc_btn_radio_material_anim};

        a() {
        }

        private ColorStateList a(@NonNull Context context) {
            return b(context, 0);
        }

        private ColorStateList b(@NonNull Context context) {
            return b(context, y.b(context, a.a.a.colorAccent));
        }

        private ColorStateList c(@NonNull Context context) {
            return b(context, y.b(context, a.a.a.colorButtonNormal));
        }

        private ColorStateList d(Context context) {
            int[][] iArr = new int[3];
            int[] iArr2 = new int[3];
            ColorStateList c2 = y.c(context, a.a.a.colorSwitchThumbNormal);
            if (c2 != null && c2.isStateful()) {
                iArr[0] = y.f1459b;
                iArr2[0] = c2.getColorForState(iArr[0], 0);
                iArr[1] = y.f1462e;
                iArr2[1] = y.b(context, a.a.a.colorControlActivated);
                iArr[2] = y.f1463f;
                iArr2[2] = c2.getDefaultColor();
            } else {
                iArr[0] = y.f1459b;
                iArr2[0] = y.a(context, a.a.a.colorSwitchThumbNormal);
                iArr[1] = y.f1462e;
                iArr2[1] = y.b(context, a.a.a.colorControlActivated);
                iArr[2] = y.f1463f;
                iArr2[2] = y.b(context, a.a.a.colorSwitchThumbNormal);
            }
            return new ColorStateList(iArr, iArr2);
        }

        @Override // androidx.appcompat.widget.u.e
        public Drawable a(@NonNull u uVar, @NonNull Context context, int i2) {
            if (i2 == a.a.e.abc_cab_background_top_material) {
                return new LayerDrawable(new Drawable[]{uVar.a(context, a.a.e.abc_cab_background_internal_bg), uVar.a(context, a.a.e.abc_cab_background_top_mtrl_alpha)});
            }
            return null;
        }

        private ColorStateList b(@NonNull Context context, @ColorInt int i2) {
            int b2 = y.b(context, a.a.a.colorControlHighlight);
            return new ColorStateList(new int[][]{y.f1459b, y.f1461d, y.f1460c, y.f1463f}, new int[]{y.a(context, a.a.a.colorButtonNormal), a.i.h.a.b(b2, i2), a.i.h.a.b(b2, i2), i2});
        }

        private void a(Drawable drawable, int i2, PorterDuff.Mode mode) {
            if (p.a(drawable)) {
                drawable = drawable.mutate();
            }
            if (mode == null) {
                mode = f.f1338b;
            }
            drawable.setColorFilter(f.a(i2, mode));
        }

        private boolean a(int[] iArr, int i2) {
            for (int i3 : iArr) {
                if (i3 == i2) {
                    return true;
                }
            }
            return false;
        }

        @Override // androidx.appcompat.widget.u.e
        public ColorStateList a(@NonNull Context context, int i2) {
            if (i2 == a.a.e.abc_edit_text_material) {
                return a.a.k.a.a.b(context, a.a.c.abc_tint_edittext);
            }
            if (i2 == a.a.e.abc_switch_track_mtrl_alpha) {
                return a.a.k.a.a.b(context, a.a.c.abc_tint_switch_track);
            }
            if (i2 == a.a.e.abc_switch_thumb_material) {
                return d(context);
            }
            if (i2 == a.a.e.abc_btn_default_mtrl_shape) {
                return c(context);
            }
            if (i2 == a.a.e.abc_btn_borderless_material) {
                return a(context);
            }
            if (i2 == a.a.e.abc_btn_colored_material) {
                return b(context);
            }
            if (i2 != a.a.e.abc_spinner_mtrl_am_alpha && i2 != a.a.e.abc_spinner_textfield_background_material) {
                if (a(this.f1342b, i2)) {
                    return y.c(context, a.a.a.colorControlNormal);
                }
                if (a(this.f1345e, i2)) {
                    return a.a.k.a.a.b(context, a.a.c.abc_tint_default);
                }
                if (a(this.f1346f, i2)) {
                    return a.a.k.a.a.b(context, a.a.c.abc_tint_btn_checkable);
                }
                if (i2 == a.a.e.abc_seekbar_thumb_material) {
                    return a.a.k.a.a.b(context, a.a.c.abc_tint_seek_thumb);
                }
                return null;
            }
            return a.a.k.a.a.b(context, a.a.c.abc_tint_spinner);
        }

        @Override // androidx.appcompat.widget.u.e
        public boolean b(@NonNull Context context, int i2, @NonNull Drawable drawable) {
            if (i2 == a.a.e.abc_seekbar_track_material) {
                LayerDrawable layerDrawable = (LayerDrawable) drawable;
                a(layerDrawable.findDrawableByLayerId(R.id.background), y.b(context, a.a.a.colorControlNormal), f.f1338b);
                a(layerDrawable.findDrawableByLayerId(R.id.secondaryProgress), y.b(context, a.a.a.colorControlNormal), f.f1338b);
                a(layerDrawable.findDrawableByLayerId(R.id.progress), y.b(context, a.a.a.colorControlActivated), f.f1338b);
                return true;
            }
            if (i2 != a.a.e.abc_ratingbar_material && i2 != a.a.e.abc_ratingbar_indicator_material && i2 != a.a.e.abc_ratingbar_small_material) {
                return false;
            }
            LayerDrawable layerDrawable2 = (LayerDrawable) drawable;
            a(layerDrawable2.findDrawableByLayerId(R.id.background), y.a(context, a.a.a.colorControlNormal), f.f1338b);
            a(layerDrawable2.findDrawableByLayerId(R.id.secondaryProgress), y.b(context, a.a.a.colorControlActivated), f.f1338b);
            a(layerDrawable2.findDrawableByLayerId(R.id.progress), y.b(context, a.a.a.colorControlActivated), f.f1338b);
            return true;
        }

        /* JADX WARN: Removed duplicated region for block: B:14:0x0066 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:6:0x004b  */
        @Override // androidx.appcompat.widget.u.e
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean a(@androidx.annotation.NonNull android.content.Context r7, int r8, @androidx.annotation.NonNull android.graphics.drawable.Drawable r9) {
            /*
                r6 = this;
                android.graphics.PorterDuff$Mode r0 = androidx.appcompat.widget.f.a()
                int[] r1 = r6.f1341a
                boolean r1 = r6.a(r1, r8)
                r2 = 16842801(0x1010031, float:2.3693695E-38)
                r3 = -1
                r4 = 0
                r5 = 1
                if (r1 == 0) goto L18
                int r2 = a.a.a.colorControlNormal
            L14:
                r1 = r0
                r8 = 1
                r0 = -1
                goto L49
            L18:
                int[] r1 = r6.f1343c
                boolean r1 = r6.a(r1, r8)
                if (r1 == 0) goto L23
                int r2 = a.a.a.colorControlActivated
                goto L14
            L23:
                int[] r1 = r6.f1344d
                boolean r1 = r6.a(r1, r8)
                if (r1 == 0) goto L2e
                android.graphics.PorterDuff$Mode r0 = android.graphics.PorterDuff.Mode.MULTIPLY
                goto L14
            L2e:
                int r1 = a.a.e.abc_list_divider_mtrl_alpha
                if (r8 != r1) goto L40
                r2 = 16842800(0x1010030, float:2.3693693E-38)
                r8 = 1109603123(0x42233333, float:40.8)
                int r8 = java.lang.Math.round(r8)
                r1 = r0
                r0 = r8
                r8 = 1
                goto L49
            L40:
                int r1 = a.a.e.abc_dialog_material_background
                if (r8 != r1) goto L45
                goto L14
            L45:
                r1 = r0
                r8 = 0
                r0 = -1
                r2 = 0
            L49:
                if (r8 == 0) goto L66
                boolean r8 = androidx.appcompat.widget.p.a(r9)
                if (r8 == 0) goto L55
                android.graphics.drawable.Drawable r9 = r9.mutate()
            L55:
                int r7 = androidx.appcompat.widget.y.b(r7, r2)
                android.graphics.PorterDuffColorFilter r7 = androidx.appcompat.widget.f.a(r7, r1)
                r9.setColorFilter(r7)
                if (r0 == r3) goto L65
                r9.setAlpha(r0)
            L65:
                return r5
            L66:
                return r4
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.f.a.a(android.content.Context, int, android.graphics.drawable.Drawable):boolean");
        }

        @Override // androidx.appcompat.widget.u.e
        public PorterDuff.Mode a(int i2) {
            if (i2 == a.a.e.abc_switch_thumb_material) {
                return PorterDuff.Mode.MULTIPLY;
            }
            return null;
        }
    }

    public static synchronized f b() {
        f fVar;
        synchronized (f.class) {
            if (f1339c == null) {
                c();
            }
            fVar = f1339c;
        }
        return fVar;
    }

    public static synchronized void c() {
        synchronized (f.class) {
            if (f1339c == null) {
                f1339c = new f();
                f1339c.f1340a = u.a();
                f1339c.f1340a.a(new a());
            }
        }
    }

    public synchronized Drawable a(@NonNull Context context, @DrawableRes int i2) {
        return this.f1340a.a(context, i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized Drawable a(@NonNull Context context, @DrawableRes int i2, boolean z) {
        return this.f1340a.a(context, i2, z);
    }

    public synchronized void a(@NonNull Context context) {
        this.f1340a.a(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized ColorStateList b(@NonNull Context context, @DrawableRes int i2) {
        return this.f1340a.b(context, i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Drawable drawable, b0 b0Var, int[] iArr) {
        u.a(drawable, b0Var, iArr);
    }

    public static synchronized PorterDuffColorFilter a(int i2, PorterDuff.Mode mode) {
        PorterDuffColorFilter a2;
        synchronized (f.class) {
            a2 = u.a(i2, mode);
        }
        return a2;
    }
}
