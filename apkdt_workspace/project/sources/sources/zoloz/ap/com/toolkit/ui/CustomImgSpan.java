package zoloz.ap.com.toolkit.ui;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.text.style.DynamicDrawableSpan;
import java.lang.ref.WeakReference;

/* loaded from: classes2.dex */
public class CustomImgSpan extends DynamicDrawableSpan {
    private final Context mContext;
    private Drawable mDrawable;
    private WeakReference<Drawable> mDrawableRef;
    private int mHeight;
    private int mResourceId;
    private String mResourcePath;
    private final int mSize;
    private final int mTextSize;
    private int mTop;
    private int mWidth;
    private final int maxHeight;
    private final int maxWidth;

    public CustomImgSpan(Context context, int i2, int i3, int i4) {
        super(1);
        this.mResourceId = -1;
        this.mResourcePath = null;
        this.maxWidth = 300;
        this.maxHeight = 300;
        this.mContext = context;
        this.mResourceId = i2;
        this.mSize = i3;
        this.mHeight = i3;
        this.mWidth = i3;
        this.mTextSize = i4;
    }

    private Drawable getCachedDrawable() {
        WeakReference<Drawable> weakReference = this.mDrawableRef;
        if (weakReference == null || weakReference.get() == null) {
            this.mDrawableRef = new WeakReference<>(getDrawable());
        }
        return this.mDrawableRef.get();
    }

    @Override // android.text.style.DynamicDrawableSpan, android.text.style.ReplacementSpan
    public void draw(Canvas canvas, CharSequence charSequence, int i2, int i3, float f2, int i4, int i5, int i6, Paint paint) {
        Drawable cachedDrawable = getCachedDrawable();
        canvas.save();
        int i7 = i6 - cachedDrawable.getBounds().bottom;
        if (((DynamicDrawableSpan) this).mVerticalAlignment == 1) {
            i7 = ((i4 + ((i6 - i4) / 2)) - ((cachedDrawable.getBounds().bottom - cachedDrawable.getBounds().top) / 2)) - this.mTop;
        }
        canvas.translate(f2, i7);
        cachedDrawable.draw(canvas);
        canvas.restore();
    }

    @Override // android.text.style.DynamicDrawableSpan
    public Drawable getDrawable() {
        int intrinsicWidth;
        int intrinsicHeight;
        if (this.mDrawable == null) {
            try {
                if (this.mResourceId <= 0) {
                    BitmapFactory.Options options = new BitmapFactory.Options();
                    int i2 = 1;
                    options.inJustDecodeBounds = true;
                    BitmapFactory.decodeFile(this.mResourcePath, options);
                    int min = Math.min(Math.round((options.outWidth * 1.0f) / 300.0f), Math.round((options.outHeight * 1.0f) / 300.0f));
                    if (min >= 1) {
                        i2 = min;
                    }
                    options.inSampleSize = i2;
                    options.inJustDecodeBounds = false;
                    Bitmap decodeFile = BitmapFactory.decodeFile(this.mResourcePath, options);
                    intrinsicWidth = decodeFile.getWidth();
                    intrinsicHeight = decodeFile.getHeight();
                    this.mDrawable = new BitmapDrawable(decodeFile);
                } else {
                    this.mDrawable = this.mContext.getResources().getDrawable(this.mResourceId);
                    intrinsicWidth = this.mDrawable.getIntrinsicWidth();
                    intrinsicHeight = this.mDrawable.getIntrinsicHeight();
                }
                if (intrinsicWidth < intrinsicHeight) {
                    this.mHeight = this.mSize;
                    this.mWidth = (this.mHeight * intrinsicWidth) / intrinsicHeight;
                } else {
                    this.mWidth = this.mSize;
                    this.mHeight = (this.mWidth * intrinsicHeight) / intrinsicWidth;
                }
                this.mTop = (this.mTextSize - this.mHeight) / 2;
                this.mDrawable.setBounds(0, this.mTop, this.mWidth, this.mTop + this.mHeight);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return this.mDrawable;
    }

    public CustomImgSpan(Context context, String str, int i2, int i3) {
        super(1);
        this.mResourceId = -1;
        this.mResourcePath = null;
        this.maxWidth = 300;
        this.maxHeight = 300;
        this.mContext = context;
        this.mResourcePath = str;
        this.mSize = i2;
        this.mTextSize = i3;
    }
}
