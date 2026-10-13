package com.dexterous.flutterlocalnotifications.models.styles;

import androidx.annotation.Keep;
import com.dexterous.flutterlocalnotifications.BitmapSource;

@Keep
/* loaded from: classes.dex */
public class BigPictureStyleInformation extends DefaultStyleInformation {
    public String bigPicture;
    public BitmapSource bigPictureBitmapSource;
    public String contentTitle;
    public Boolean hideExpandedLargeIcon;
    public Boolean htmlFormatContentTitle;
    public Boolean htmlFormatSummaryText;
    public String largeIcon;
    public BitmapSource largeIconBitmapSource;
    public String summaryText;

    public BigPictureStyleInformation(Boolean bool, Boolean bool2, String str, Boolean bool3, String str2, Boolean bool4, String str3, BitmapSource bitmapSource, String str4, BitmapSource bitmapSource2, Boolean bool5) {
        super(bool, bool2);
        this.contentTitle = str;
        this.htmlFormatContentTitle = bool3;
        this.summaryText = str2;
        this.htmlFormatSummaryText = bool4;
        this.largeIcon = str3;
        this.largeIconBitmapSource = bitmapSource;
        this.bigPicture = str4;
        this.bigPictureBitmapSource = bitmapSource2;
        this.hideExpandedLargeIcon = bool5;
    }
}
