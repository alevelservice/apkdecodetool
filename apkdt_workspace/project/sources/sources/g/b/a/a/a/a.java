package g.b.a.a.a;

import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.Toast;
import com.ap.zoloz.hummer.biz.HummerConstants;
import g.a.c.a.j;
import g.a.c.a.k;
import g.a.c.a.m;

/* compiled from: FluttertoastPlugin.java */
/* loaded from: classes2.dex */
public class a implements k.c {

    /* renamed from: e, reason: collision with root package name */
    private Context f18247e;

    /* renamed from: f, reason: collision with root package name */
    private Toast f18248f;

    private a(Context context) {
        this.f18247e = context;
    }

    public static void a(m.d dVar) {
        new k(dVar.d(), "PonnamKarthik/fluttertoast").a(new a(dVar.a()));
    }

    @Override // g.a.c.a.k.c
    public void onMethodCall(j jVar, k.d dVar) {
        char c2;
        String str = jVar.f18223a;
        int hashCode = str.hashCode();
        char c3 = 65535;
        if (hashCode != -1913642710) {
            if (hashCode == -1367724422 && str.equals(HummerConstants.TASK_CANCEL)) {
                c2 = 1;
            }
            c2 = 65535;
        } else {
            if (str.equals("showToast")) {
                c2 = 0;
            }
            c2 = 65535;
        }
        if (c2 != 0) {
            if (c2 != 1) {
                dVar.a();
                return;
            }
            Toast toast = this.f18248f;
            if (toast != null) {
                toast.cancel();
            }
            dVar.a(true);
            return;
        }
        CharSequence obj = jVar.a("msg").toString();
        String obj2 = jVar.a("length").toString();
        String obj3 = jVar.a("gravity").toString();
        Number number = (Number) jVar.a("bgcolor");
        Number number2 = (Number) jVar.a("textcolor");
        Number number3 = (Number) jVar.a("fontSize");
        int hashCode2 = obj3.hashCode();
        if (hashCode2 != -1364013995) {
            if (hashCode2 == 115029 && obj3.equals("top")) {
                c3 = 0;
            }
        } else if (obj3.equals("center")) {
            c3 = 1;
        }
        int i2 = c3 != 0 ? c3 != 1 ? 80 : 17 : 48;
        boolean equals = obj2.equals("long");
        if (number != null && number2 != null && number3 != null) {
            View inflate = ((LayoutInflater) this.f18247e.getSystemService("layout_inflater")).inflate(c.toast_custom, (ViewGroup) null);
            TextView textView = (TextView) inflate.findViewById(b.text);
            textView.setText(obj);
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setColor(number.intValue());
            gradientDrawable.setCornerRadius(a(4.0f));
            textView.setBackground(gradientDrawable);
            textView.setTextSize(number3.floatValue());
            textView.setTextColor(number2.intValue());
            this.f18248f = new Toast(this.f18247e);
            this.f18248f.setDuration(equals ? 1 : 0);
            this.f18248f.setView(inflate);
        } else {
            this.f18248f = Toast.makeText(this.f18247e, obj, equals ? 1 : 0);
        }
        if (i2 == 17) {
            this.f18248f.setGravity(i2, 0, 0);
        } else if (i2 == 48) {
            this.f18248f.setGravity(i2, 0, 100);
        } else {
            this.f18248f.setGravity(i2, 0, 100);
        }
        this.f18248f.show();
        dVar.a(true);
    }

    private float a(float f2) {
        return (f2 * this.f18247e.getResources().getDisplayMetrics().density) + 0.5f;
    }
}
