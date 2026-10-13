.class public Lcom/dexterous/flutterlocalnotifications/models/styles/BigPictureStyleInformation;
.super Lcom/dexterous/flutterlocalnotifications/models/styles/DefaultStyleInformation;
.source "BigPictureStyleInformation.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field public bigPicture:Ljava/lang/String;

.field public bigPictureBitmapSource:Lcom/dexterous/flutterlocalnotifications/BitmapSource;

.field public contentTitle:Ljava/lang/String;

.field public hideExpandedLargeIcon:Ljava/lang/Boolean;

.field public htmlFormatContentTitle:Ljava/lang/Boolean;

.field public htmlFormatSummaryText:Ljava/lang/Boolean;

.field public largeIcon:Ljava/lang/String;

.field public largeIconBitmapSource:Lcom/dexterous/flutterlocalnotifications/BitmapSource;

.field public summaryText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Lcom/dexterous/flutterlocalnotifications/BitmapSource;Ljava/lang/String;Lcom/dexterous/flutterlocalnotifications/BitmapSource;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/dexterous/flutterlocalnotifications/models/styles/DefaultStyleInformation;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 2
    iput-object p3, p0, Lcom/dexterous/flutterlocalnotifications/models/styles/BigPictureStyleInformation;->contentTitle:Ljava/lang/String;

    .line 3
    iput-object p4, p0, Lcom/dexterous/flutterlocalnotifications/models/styles/BigPictureStyleInformation;->htmlFormatContentTitle:Ljava/lang/Boolean;

    .line 4
    iput-object p5, p0, Lcom/dexterous/flutterlocalnotifications/models/styles/BigPictureStyleInformation;->summaryText:Ljava/lang/String;

    .line 5
    iput-object p6, p0, Lcom/dexterous/flutterlocalnotifications/models/styles/BigPictureStyleInformation;->htmlFormatSummaryText:Ljava/lang/Boolean;

    .line 6
    iput-object p7, p0, Lcom/dexterous/flutterlocalnotifications/models/styles/BigPictureStyleInformation;->largeIcon:Ljava/lang/String;

    .line 7
    iput-object p8, p0, Lcom/dexterous/flutterlocalnotifications/models/styles/BigPictureStyleInformation;->largeIconBitmapSource:Lcom/dexterous/flutterlocalnotifications/BitmapSource;

    .line 8
    iput-object p9, p0, Lcom/dexterous/flutterlocalnotifications/models/styles/BigPictureStyleInformation;->bigPicture:Ljava/lang/String;

    .line 9
    iput-object p10, p0, Lcom/dexterous/flutterlocalnotifications/models/styles/BigPictureStyleInformation;->bigPictureBitmapSource:Lcom/dexterous/flutterlocalnotifications/BitmapSource;

    .line 10
    iput-object p11, p0, Lcom/dexterous/flutterlocalnotifications/models/styles/BigPictureStyleInformation;->hideExpandedLargeIcon:Ljava/lang/Boolean;

    return-void
.end method
