package androidx.appcompat.widget;

import android.R;
import android.annotation.SuppressLint;
import android.app.SearchableInfo;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.TextAppearanceSpan;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.alipay.mobile.security.zim.biz.ZimPlatform;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.WeakHashMap;

/* compiled from: SuggestionsAdapter.java */
@SuppressLint({"RestrictedAPI"})
/* loaded from: classes.dex */
class x extends a.j.a.c implements View.OnClickListener {
    private int A;
    private int B;
    private int C;
    private final SearchView p;
    private final SearchableInfo q;
    private final Context r;
    private final WeakHashMap<String, Drawable.ConstantState> s;
    private final int t;
    private boolean u;
    private int v;
    private ColorStateList w;
    private int x;
    private int y;
    private int z;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SuggestionsAdapter.java */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final TextView f1453a;

        /* renamed from: b, reason: collision with root package name */
        public final TextView f1454b;

        /* renamed from: c, reason: collision with root package name */
        public final ImageView f1455c;

        /* renamed from: d, reason: collision with root package name */
        public final ImageView f1456d;

        /* renamed from: e, reason: collision with root package name */
        public final ImageView f1457e;

        public a(View view) {
            this.f1453a = (TextView) view.findViewById(R.id.text1);
            this.f1454b = (TextView) view.findViewById(R.id.text2);
            this.f1455c = (ImageView) view.findViewById(R.id.icon1);
            this.f1456d = (ImageView) view.findViewById(R.id.icon2);
            this.f1457e = (ImageView) view.findViewById(a.a.f.edit_query);
        }
    }

    public x(Context context, SearchView searchView, SearchableInfo searchableInfo, WeakHashMap<String, Drawable.ConstantState> weakHashMap) {
        super(context, searchView.getSuggestionRowLayout(), null, true);
        this.u = false;
        this.v = 1;
        this.x = -1;
        this.y = -1;
        this.z = -1;
        this.A = -1;
        this.B = -1;
        this.C = -1;
        this.p = searchView;
        this.q = searchableInfo;
        this.t = searchView.getSuggestionCommitIconResId();
        this.r = context;
        this.s = weakHashMap;
    }

    private Drawable c() {
        Drawable b2 = b(this.q.getSearchActivity());
        return b2 != null ? b2 : this.f373h.getPackageManager().getDefaultActivityIcon();
    }

    private Drawable d(Cursor cursor) {
        int i2 = this.A;
        if (i2 == -1) {
            return null;
        }
        Drawable b2 = b(cursor.getString(i2));
        return b2 != null ? b2 : c();
    }

    private Drawable e(Cursor cursor) {
        int i2 = this.B;
        if (i2 == -1) {
            return null;
        }
        return b(cursor.getString(i2));
    }

    private void f(Cursor cursor) {
        Bundle extras = cursor != null ? cursor.getExtras() : null;
        if (extras == null || extras.getBoolean("in_progress")) {
        }
    }

    public void a(int i2) {
        this.v = i2;
    }

    @Override // a.j.a.c, a.j.a.a
    public View b(Context context, Cursor cursor, ViewGroup viewGroup) {
        View b2 = super.b(context, cursor, viewGroup);
        b2.setTag(new a(b2));
        ((ImageView) b2.findViewById(a.a.f.edit_query)).setImageResource(this.t);
        return b2;
    }

    @Override // a.j.a.a, android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public View getDropDownView(int i2, View view, ViewGroup viewGroup) {
        try {
            return super.getDropDownView(i2, view, viewGroup);
        } catch (RuntimeException e2) {
            View a2 = a(this.f373h, this.f372g, viewGroup);
            if (a2 != null) {
                ((a) a2.getTag()).f1453a.setText(e2.toString());
            }
            return a2;
        }
    }

    @Override // a.j.a.a, android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        try {
            return super.getView(i2, view, viewGroup);
        } catch (RuntimeException e2) {
            View b2 = b(this.f373h, this.f372g, viewGroup);
            if (b2 != null) {
                ((a) b2.getTag()).f1453a.setText(e2.toString());
            }
            return b2;
        }
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return false;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
        f(a());
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetInvalidated() {
        super.notifyDataSetInvalidated();
        f(a());
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Object tag = view.getTag();
        if (tag instanceof CharSequence) {
            this.p.onQueryRefine((CharSequence) tag);
        }
    }

    @Override // a.j.a.b.a
    public Cursor a(CharSequence charSequence) {
        String charSequence2 = charSequence == null ? "" : charSequence.toString();
        if (this.p.getVisibility() == 0 && this.p.getWindowVisibility() == 0) {
            try {
                Cursor a2 = a(this.q, charSequence2, 50);
                if (a2 != null) {
                    a2.getCount();
                    return a2;
                }
            } catch (RuntimeException unused) {
            }
        }
        return null;
    }

    private CharSequence b(CharSequence charSequence) {
        if (this.w == null) {
            TypedValue typedValue = new TypedValue();
            this.f373h.getTheme().resolveAttribute(a.a.a.textColorSearchUrl, typedValue, true);
            this.w = this.f373h.getResources().getColorStateList(typedValue.resourceId);
        }
        SpannableString spannableString = new SpannableString(charSequence);
        spannableString.setSpan(new TextAppearanceSpan(null, 0, 0, this.w, null), 0, charSequence.length(), 33);
        return spannableString;
    }

    @Override // a.j.a.a, a.j.a.b.a
    public void a(Cursor cursor) {
        if (this.u) {
            if (cursor != null) {
                cursor.close();
                return;
            }
            return;
        }
        try {
            super.a(cursor);
            if (cursor != null) {
                this.x = cursor.getColumnIndex("suggest_text_1");
                this.y = cursor.getColumnIndex("suggest_text_2");
                this.z = cursor.getColumnIndex("suggest_text_2_url");
                this.A = cursor.getColumnIndex("suggest_icon_1");
                this.B = cursor.getColumnIndex("suggest_icon_2");
                this.C = cursor.getColumnIndex("suggest_flags");
            }
        } catch (Exception unused) {
        }
    }

    @Override // a.j.a.a, a.j.a.b.a
    public CharSequence b(Cursor cursor) {
        String a2;
        String a3;
        if (cursor == null) {
            return null;
        }
        String a4 = a(cursor, "suggest_intent_query");
        if (a4 != null) {
            return a4;
        }
        if (this.q.shouldRewriteQueryFromData() && (a3 = a(cursor, "suggest_intent_data")) != null) {
            return a3;
        }
        if (!this.q.shouldRewriteQueryFromText() || (a2 = a(cursor, "suggest_text_1")) == null) {
            return null;
        }
        return a2;
    }

    @Override // a.j.a.a
    public void a(View view, Context context, Cursor cursor) {
        CharSequence a2;
        a aVar = (a) view.getTag();
        int i2 = this.C;
        int i3 = i2 != -1 ? cursor.getInt(i2) : 0;
        if (aVar.f1453a != null) {
            a(aVar.f1453a, a(cursor, this.x));
        }
        if (aVar.f1454b != null) {
            String a3 = a(cursor, this.z);
            if (a3 != null) {
                a2 = b((CharSequence) a3);
            } else {
                a2 = a(cursor, this.y);
            }
            if (TextUtils.isEmpty(a2)) {
                TextView textView = aVar.f1453a;
                if (textView != null) {
                    textView.setSingleLine(false);
                    aVar.f1453a.setMaxLines(2);
                }
            } else {
                TextView textView2 = aVar.f1453a;
                if (textView2 != null) {
                    textView2.setSingleLine(true);
                    aVar.f1453a.setMaxLines(1);
                }
            }
            a(aVar.f1454b, a2);
        }
        ImageView imageView = aVar.f1455c;
        if (imageView != null) {
            a(imageView, d(cursor), 4);
        }
        ImageView imageView2 = aVar.f1456d;
        if (imageView2 != null) {
            a(imageView2, e(cursor), 8);
        }
        int i4 = this.v;
        if (i4 != 2 && (i4 != 1 || (i3 & 1) == 0)) {
            aVar.f1457e.setVisibility(8);
            return;
        }
        aVar.f1457e.setVisibility(0);
        aVar.f1457e.setTag(aVar.f1453a.getText());
        aVar.f1457e.setOnClickListener(this);
    }

    private Drawable b(String str) {
        if (str == null || str.isEmpty() || ZimPlatform.REASON_0.equals(str)) {
            return null;
        }
        try {
            int parseInt = Integer.parseInt(str);
            String str2 = "android.resource://" + this.r.getPackageName() + "/" + parseInt;
            Drawable a2 = a(str2);
            if (a2 != null) {
                return a2;
            }
            Drawable c2 = androidx.core.content.a.c(this.r, parseInt);
            a(str2, c2);
            return c2;
        } catch (Resources.NotFoundException unused) {
            String str3 = "Icon resource not found: " + str;
            return null;
        } catch (NumberFormatException unused2) {
            Drawable a3 = a(str);
            if (a3 != null) {
                return a3;
            }
            Drawable b2 = b(Uri.parse(str));
            a(str, b2);
            return b2;
        }
    }

    private Drawable b(Uri uri) {
        try {
            if ("android.resource".equals(uri.getScheme())) {
                try {
                    return a(uri);
                } catch (Resources.NotFoundException unused) {
                    throw new FileNotFoundException("Resource does not exist: " + uri);
                }
            }
            InputStream openInputStream = this.r.getContentResolver().openInputStream(uri);
            if (openInputStream != null) {
                try {
                    return Drawable.createFromStream(openInputStream, null);
                } finally {
                    try {
                        openInputStream.close();
                    } catch (IOException unused2) {
                        String str = "Error closing icon stream for " + uri;
                    }
                }
            }
            throw new FileNotFoundException("Failed to open " + uri);
        } catch (FileNotFoundException e2) {
            String str2 = "Icon not found: " + uri + ", " + e2.getMessage();
            return null;
        }
        String str22 = "Icon not found: " + uri + ", " + e2.getMessage();
        return null;
    }

    private void a(TextView textView, CharSequence charSequence) {
        textView.setText(charSequence);
        if (TextUtils.isEmpty(charSequence)) {
            textView.setVisibility(8);
        } else {
            textView.setVisibility(0);
        }
    }

    private Drawable b(ComponentName componentName) {
        String flattenToShortString = componentName.flattenToShortString();
        if (this.s.containsKey(flattenToShortString)) {
            Drawable.ConstantState constantState = this.s.get(flattenToShortString);
            if (constantState == null) {
                return null;
            }
            return constantState.newDrawable(this.r.getResources());
        }
        Drawable a2 = a(componentName);
        this.s.put(flattenToShortString, a2 != null ? a2.getConstantState() : null);
        return a2;
    }

    private void a(ImageView imageView, Drawable drawable, int i2) {
        imageView.setImageDrawable(drawable);
        if (drawable == null) {
            imageView.setVisibility(i2);
            return;
        }
        imageView.setVisibility(0);
        drawable.setVisible(false, false);
        drawable.setVisible(true, false);
    }

    private Drawable a(String str) {
        Drawable.ConstantState constantState = this.s.get(str);
        if (constantState == null) {
            return null;
        }
        return constantState.newDrawable();
    }

    private void a(String str, Drawable drawable) {
        if (drawable != null) {
            this.s.put(str, drawable.getConstantState());
        }
    }

    private Drawable a(ComponentName componentName) {
        PackageManager packageManager = this.f373h.getPackageManager();
        try {
            ActivityInfo activityInfo = packageManager.getActivityInfo(componentName, 128);
            int iconResource = activityInfo.getIconResource();
            if (iconResource == 0) {
                return null;
            }
            Drawable drawable = packageManager.getDrawable(componentName.getPackageName(), iconResource, activityInfo.applicationInfo);
            if (drawable != null) {
                return drawable;
            }
            String str = "Invalid icon resource " + iconResource + " for " + componentName.flattenToShortString();
            return null;
        } catch (PackageManager.NameNotFoundException e2) {
            e2.toString();
            return null;
        }
    }

    public static String a(Cursor cursor, String str) {
        return a(cursor, cursor.getColumnIndex(str));
    }

    private static String a(Cursor cursor, int i2) {
        if (i2 == -1) {
            return null;
        }
        try {
            return cursor.getString(i2);
        } catch (Exception unused) {
            return null;
        }
    }

    Drawable a(Uri uri) {
        int parseInt;
        String authority = uri.getAuthority();
        if (!TextUtils.isEmpty(authority)) {
            try {
                Resources resourcesForApplication = this.f373h.getPackageManager().getResourcesForApplication(authority);
                List<String> pathSegments = uri.getPathSegments();
                if (pathSegments != null) {
                    int size = pathSegments.size();
                    if (size == 1) {
                        try {
                            parseInt = Integer.parseInt(pathSegments.get(0));
                        } catch (NumberFormatException unused) {
                            throw new FileNotFoundException("Single path segment is not a resource ID: " + uri);
                        }
                    } else if (size == 2) {
                        parseInt = resourcesForApplication.getIdentifier(pathSegments.get(1), pathSegments.get(0), authority);
                    } else {
                        throw new FileNotFoundException("More than two path segments: " + uri);
                    }
                    if (parseInt != 0) {
                        return resourcesForApplication.getDrawable(parseInt);
                    }
                    throw new FileNotFoundException("No resource found for: " + uri);
                }
                throw new FileNotFoundException("No path: " + uri);
            } catch (PackageManager.NameNotFoundException unused2) {
                throw new FileNotFoundException("No package found for authority: " + uri);
            }
        }
        throw new FileNotFoundException("No authority: " + uri);
    }

    Cursor a(SearchableInfo searchableInfo, String str, int i2) {
        String suggestAuthority;
        String[] strArr = null;
        if (searchableInfo == null || (suggestAuthority = searchableInfo.getSuggestAuthority()) == null) {
            return null;
        }
        Uri.Builder fragment = new Uri.Builder().scheme("content").authority(suggestAuthority).query("").fragment("");
        String suggestPath = searchableInfo.getSuggestPath();
        if (suggestPath != null) {
            fragment.appendEncodedPath(suggestPath);
        }
        fragment.appendPath("search_suggest_query");
        String suggestSelection = searchableInfo.getSuggestSelection();
        if (suggestSelection != null) {
            strArr = new String[]{str};
        } else {
            fragment.appendPath(str);
        }
        String[] strArr2 = strArr;
        if (i2 > 0) {
            fragment.appendQueryParameter("limit", String.valueOf(i2));
        }
        return this.f373h.getContentResolver().query(fragment.build(), null, suggestSelection, strArr2, null);
    }
}
