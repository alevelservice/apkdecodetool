.class public Lcom/alipay/zoloz/zface/ui/ZFaceActivity;
.super Lcom/alipay/zoloz/zface/ui/activity/BaseCameraPermissionActivity;
.source "ZFaceActivity.java"

# interfaces
.implements Lcom/alipay/zoloz/zface/ui/util/AlertUtil$AlertClickEvents;


# instance fields
.field private isPause:Z

.field private mAlertUtil:Lcom/alipay/zoloz/zface/ui/util/AlertUtil;

.field private mAlgorithmScheduleProgressBar:Lcom/alipay/zoloz/zface/ui/widget/AlgorithmScheduleProgressBar;

.field private mAppTag:Ljava/lang/String;

.field private mBestBitmap:Landroid/graphics/Bitmap;

.field private mCameraPreviewImg:Landroid/widget/ImageView;

.field private mCameraSurfaceView:Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;

.field private mDetectTimerTask:Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;

.field private mFaceScanTipsUtil:Lcom/alipay/zoloz/zface/ui/util/FaceScanTipsUtil;

.field private mFrameStateData:Lcom/alipay/zoloz/zface/beans/FrameStateData;

.field private mIsCheckFaced:Z

.field private mIsFirstResume:Z

.field private mIsShowFrame:Z

.field private mTitleBar:Lzoloz/ap/com/toolkit/ui/TitleBar;

.field private mZFacePresenter:Lcom/alipay/zoloz/zface/presenter/ZFacePresenter;

.field private mZfaceTopTips:Lzoloz/ap/com/toolkit/ui/CustomTextView;

.field private mZfaceUploadLoadingView:Lcom/alipay/zoloz/zface/ui/widget/ZfaceUploadLoadingView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/alipay/zoloz/zface/ui/activity/BaseCameraPermissionActivity;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mAppTag:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mIsShowFrame:Z

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mFrameStateData:Lcom/alipay/zoloz/zface/beans/FrameStateData;

    .line 5
    iput-boolean v0, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->isPause:Z

    const/4 v2, 0x1

    .line 6
    iput-boolean v2, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mIsFirstResume:Z

    .line 7
    iput-boolean v0, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mIsCheckFaced:Z

    .line 8
    iput-object v1, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mBestBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/zoloz/zface/ui/ZFaceActivity;)Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mDetectTimerTask:Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alipay/zoloz/zface/ui/ZFaceActivity;)Lcom/alipay/zoloz/zface/ui/util/AlertUtil;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mAlertUtil:Lcom/alipay/zoloz/zface/ui/util/AlertUtil;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/alipay/zoloz/zface/ui/ZFaceActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mAppTag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alipay/zoloz/zface/ui/ZFaceActivity;)Lcom/alipay/zoloz/zface/beans/FrameStateData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mFrameStateData:Lcom/alipay/zoloz/zface/beans/FrameStateData;

    return-object p0
.end method

.method static synthetic access$202(Lcom/alipay/zoloz/zface/ui/ZFaceActivity;Lcom/alipay/zoloz/zface/beans/FrameStateData;)Lcom/alipay/zoloz/zface/beans/FrameStateData;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mFrameStateData:Lcom/alipay/zoloz/zface/beans/FrameStateData;

    return-object p1
.end method

.method static synthetic access$300(Lcom/alipay/zoloz/zface/ui/ZFaceActivity;)Lcom/alipay/zoloz/zface/ui/util/FaceScanTipsUtil;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mFaceScanTipsUtil:Lcom/alipay/zoloz/zface/ui/util/FaceScanTipsUtil;

    return-object p0
.end method

.method static synthetic access$400(Lcom/alipay/zoloz/zface/ui/ZFaceActivity;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->record(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$500(Lcom/alipay/zoloz/zface/ui/ZFaceActivity;Lcom/alipay/zoloz/zface/beans/FrameStateData;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->setZfaceTopTips(Lcom/alipay/zoloz/zface/beans/FrameStateData;)V

    return-void
.end method

.method static synthetic access$600(Lcom/alipay/zoloz/zface/ui/ZFaceActivity;)Lcom/alipay/zoloz/zface/ui/widget/AlgorithmScheduleProgressBar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mAlgorithmScheduleProgressBar:Lcom/alipay/zoloz/zface/ui/widget/AlgorithmScheduleProgressBar;

    return-object p0
.end method

.method static synthetic access$700(Lcom/alipay/zoloz/zface/ui/ZFaceActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mIsCheckFaced:Z

    return p0
.end method

.method static synthetic access$702(Lcom/alipay/zoloz/zface/ui/ZFaceActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mIsCheckFaced:Z

    return p1
.end method

.method static synthetic access$800(Lcom/alipay/zoloz/zface/ui/ZFaceActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->record(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/alipay/zoloz/zface/ui/ZFaceActivity;)Lcom/alipay/zoloz/zface/presenter/ZFacePresenter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mZFacePresenter:Lcom/alipay/zoloz/zface/presenter/ZFacePresenter;

    return-object p0
.end method

.method private record(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->record(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private record(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getCurrentInstance()Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    const-class v1, Lcom/alipay/zoloz/zface/services/ZFaceRecordService;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getBioService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/zoloz/zface/services/ZFaceRecordService;

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-nez p2, :cond_2

    .line 4
    invoke-virtual {v0, p1}, Lcom/alipay/zoloz/zface/services/ZFaceRecordService;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {v0, p1, p2}, Lcom/alipay/zoloz/zface/services/ZFaceRecordService;->write(Ljava/lang/String;Ljava/util/Map;)V

    :goto_0
    return-void
.end method

.method private setZfaceTopTips(Lcom/alipay/zoloz/zface/beans/FrameStateData;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mFaceScanTipsUtil:Lcom/alipay/zoloz/zface/ui/util/FaceScanTipsUtil;

    iget p1, p1, Lcom/alipay/zoloz/zface/beans/FrameStateData;->uiDesState:I

    invoke-virtual {v0, p1}, Lcom/alipay/zoloz/zface/ui/util/FaceScanTipsUtil;->getReimindTxt(I)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mZfaceTopTips:Lzoloz/ap/com/toolkit/ui/CustomTextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mZfaceTopTips:Lzoloz/ap/com/toolkit/ui/CustomTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mZfaceTopTips:Lzoloz/ap/com/toolkit/ui/CustomTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private showBestFrameBlur(Landroid/graphics/Bitmap;)V
    .locals 3

    if-eqz p1, :cond_0

    const/high16 v0, 0x40400000    # 3.0f

    const/high16 v1, 0x40c00000    # 6.0f

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->blur(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mCameraPreviewImg:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mCameraPreviewImg:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private startTimerTask()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mDetectTimerTask:Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->stopTimerTask()V

    :cond_0
    const/16 v0, 0x14

    .line 3
    iget-object v1, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mZFacePresenter:Lcom/alipay/zoloz/zface/presenter/ZFacePresenter;

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1}, Lcom/alipay/zoloz/zface/presenter/ZFacePresenter;->getRemoteConfig()Lcom/alipay/zoloz/zface/beans/FaceRemoteConfig;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Lcom/alipay/zoloz/zface/beans/FaceRemoteConfig;->getColl()Lcom/alipay/mobile/security/bio/config/bean/Coll;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v1}, Lcom/alipay/zoloz/zface/beans/FaceRemoteConfig;->getColl()Lcom/alipay/mobile/security/bio/config/bean/Coll;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/config/bean/Coll;->getTime()I

    move-result v0

    :cond_1
    mul-int/lit16 v0, v0, 0x3e8

    .line 7
    new-instance v1, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;

    invoke-direct {v1, v0}, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;-><init>(I)V

    iput-object v1, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mDetectTimerTask:Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;

    .line 8
    iget-object v1, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mDetectTimerTask:Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;

    new-instance v2, Lcom/alipay/zoloz/zface/ui/ZFaceActivity$1;

    invoke-direct {v2, p0, v0}, Lcom/alipay/zoloz/zface/ui/ZFaceActivity$1;-><init>(Lcom/alipay/zoloz/zface/ui/ZFaceActivity;I)V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;->setTimerTaskListener(Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask$TimerListener;)V

    .line 9
    iget-object v0, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mDetectTimerTask:Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;->start()V

    return-void
.end method

.method private stopTimerTask()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mDetectTimerTask:Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;->setTimerTaskListener(Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask$TimerListener;)V

    .line 3
    iget-object v0, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mDetectTimerTask:Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;->stop()V

    .line 4
    iput-object v1, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mDetectTimerTask:Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;

    :cond_0
    return-void
.end method

.method private updateLanguage(Lcom/alipay/mobile/security/bio/service/BioAppDescription;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getExtProperty()Ljava/util/Map;

    move-result-object p1

    const-string v0, "locale"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2
    invoke-direct {p0, p1}, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->updateLocale(Ljava/lang/String;)V

    return-void
.end method

.method private updateLocale(Ljava/lang/String;)V
    .locals 6

    const-string v0, "-"

    if-eqz p1, :cond_5

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4
    array-length v2, v0

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_0

    .line 5
    new-instance v2, Ljava/util/Locale;

    aget-object v3, v0, v5

    aget-object v0, v0, v4

    invoke-direct {v2, v3, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    array-length v2, v0

    if-ne v2, v4, :cond_1

    .line 7
    new-instance v2, Ljava/util/Locale;

    aget-object v0, v0, v5

    invoke-direct {v2, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v0, v2, :cond_2

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v2, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto :goto_0

    .line 11
    :cond_3
    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 12
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v0, v3, :cond_4

    .line 13
    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    goto :goto_1

    .line 14
    :cond_4
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    iput-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 15
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_5
    return-void
.end method


# virtual methods
.method protected alertCameraOpenFailed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mAlertUtil:Lcom/alipay/zoloz/zface/ui/util/AlertUtil;

    invoke-virtual {v0}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil;->alertCameraOpenFailed()V

    return-void
.end method

.method protected alertCameraPermissionFailed(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mAlertUtil:Lcom/alipay/zoloz/zface/ui/util/AlertUtil;

    invoke-virtual {v0, p1}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil;->alertCameraPermissionFailed(Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method blur(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;
    .locals 6

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    cmpg-float v2, p3, v1

    if-gtz v2, :cond_0

    const/high16 p3, 0x3f800000    # 1.0f

    :cond_0
    const/4 v2, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, p3

    float-to-int v3, v3

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, p3

    float-to-int v4, v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    .line 3
    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 4
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    div-float/2addr v0, p3

    .line 5
    invoke-virtual {v3, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 6
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    const/4 v0, 0x2

    .line 7
    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setFlags(I)V

    .line 8
    invoke-virtual {v3, p1, v1, v1, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    float-to-int p1, p2

    const/4 p2, 0x1

    .line 9
    invoke-static {v2, p1, p2}, Lcom/alipay/mobile/security/bio/utils/FastBlur;->doBlur(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object p1, v2

    :goto_0
    return-object p1
.end method

.method protected createPresenter(Lcom/alipay/zoloz/zface/presenter/ZFaceCallback;Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;)Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.alipay.mobile.security.bio.action.intent.app"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mAppTag:Ljava/lang/String;

    .line 2
    new-instance v0, Lcom/alipay/zoloz/zface/presenter/ZFacePresenter;

    iget-object v1, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mAppTag:Ljava/lang/String;

    invoke-direct {v0, p1, v1, p2}, Lcom/alipay/zoloz/zface/presenter/ZFacePresenter;-><init>(Lcom/alipay/zoloz/zface/presenter/ZFaceCallback;Ljava/lang/String;Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;)V

    iput-object v0, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mZFacePresenter:Lcom/alipay/zoloz/zface/presenter/ZFacePresenter;

    .line 3
    iget-object p1, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mZFacePresenter:Lcom/alipay/zoloz/zface/presenter/ZFacePresenter;

    return-object p1
.end method

.method protected getLayoutResId()I
    .locals 1

    .line 1
    sget v0, Lcom/alipay/zoloz/toyger/R$layout;->activity_zface:I

    return v0
.end method

.method protected handleErrorEvnet(Lcom/alipay/zoloz/zface/beans/AlertData;)Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->stopTimerTask()V

    .line 2
    invoke-super {p0, p1}, Lcom/alipay/zoloz/zface/ui/activity/BaseCameraPermissionActivity;->handleErrorEvnet(Lcom/alipay/zoloz/zface/beans/AlertData;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget-object v0, p1, Lcom/alipay/zoloz/zface/beans/AlertData;->subCode:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget v0, p1, Lcom/alipay/zoloz/zface/beans/AlertData;->type:I

    const/16 v2, 0xb

    if-ne v0, v2, :cond_1

    goto/16 :goto_4

    .line 4
    :cond_1
    iput-boolean v1, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mIsShowFrame:Z

    .line 5
    iget-object v0, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mZFacePresenter:Lcom/alipay/zoloz/zface/presenter/ZFacePresenter;

    invoke-virtual {v0}, Lcom/alipay/zoloz/zface/presenter/ZFacePresenter;->stopProcess()V

    .line 6
    iget-object v0, p1, Lcom/alipay/zoloz/zface/beans/AlertData;->subCode:Ljava/lang/String;

    sget-object v2, Lcom/alipay/mobile/security/bio/constants/ZcodeConstants;->ZCODE_INIT_TOYGER_ERROR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p1, Lcom/alipay/zoloz/zface/beans/AlertData;->subCode:Ljava/lang/String;

    sget-object v2, Lcom/alipay/mobile/security/bio/constants/ZcodeConstants;->ZCODE_ZIM_IS_BUSY:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_2

    .line 8
    :cond_2
    iget-object v0, p1, Lcom/alipay/zoloz/zface/beans/AlertData;->subCode:Ljava/lang/String;

    sget-object v2, Lcom/alipay/mobile/security/bio/constants/ZcodeConstants;->NETWORK_TIMEOUT:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p1, Lcom/alipay/zoloz/zface/beans/AlertData;->subCode:Ljava/lang/String;

    sget-object v2, Lcom/alipay/mobile/security/bio/constants/ZcodeConstants;->ZCODE_NETWORK_ERROR:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_1

    .line 10
    :cond_3
    iget-object v0, p1, Lcom/alipay/zoloz/zface/beans/AlertData;->subCode:Ljava/lang/String;

    sget-object v2, Lcom/alipay/mobile/security/bio/constants/ZcodeConstants;->ZCODE_ERROR_CAMERA_OPEN_FAILED:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11
    invoke-virtual {p0}, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->alertCameraOpenFailed()V

    goto/16 :goto_3

    .line 12
    :cond_4
    iget-object v0, p1, Lcom/alipay/zoloz/zface/beans/AlertData;->subCode:Ljava/lang/String;

    sget-object v2, Lcom/alipay/mobile/security/bio/constants/ZcodeConstants;->ZCODE_OS_VERSION_LOW:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p1, Lcom/alipay/zoloz/zface/beans/AlertData;->subCode:Ljava/lang/String;

    sget-object v2, Lcom/alipay/mobile/security/bio/constants/ZcodeConstants;->ZCODE_UNSUPPORTED_CPU:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p1, Lcom/alipay/zoloz/zface/beans/AlertData;->subCode:Ljava/lang/String;

    sget-object v2, Lcom/alipay/mobile/security/bio/constants/ZcodeConstants;->ZCODE_NO_FRANT_CAMERA:Ljava/lang/String;

    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p1, Lcom/alipay/zoloz/zface/beans/AlertData;->subCode:Ljava/lang/String;

    sget-object v2, Lcom/alipay/mobile/security/bio/constants/ZcodeConstants;->ZCODE_ERROR_CAMERA_NO_DEVICE:Ljava/lang/String;

    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto/16 :goto_0

    .line 16
    :cond_5
    iget-object v0, p1, Lcom/alipay/zoloz/zface/beans/AlertData;->subCode:Ljava/lang/String;

    sget-object v2, Lcom/alipay/mobile/security/bio/constants/ZcodeConstants;->ZCODE_OVER_TIME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 17
    iget-object p1, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mAlertUtil:Lcom/alipay/zoloz/zface/ui/util/AlertUtil;

    invoke-virtual {p1}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil;->alertTimeOut()V

    goto/16 :goto_3

    .line 18
    :cond_6
    iget-object v0, p1, Lcom/alipay/zoloz/zface/beans/AlertData;->subCode:Ljava/lang/String;

    sget-object v2, Lcom/alipay/mobile/security/bio/constants/ZcodeConstants;->ZCODE_OUT_TIME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 19
    iget-object p1, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mAlertUtil:Lcom/alipay/zoloz/zface/ui/util/AlertUtil;

    invoke-virtual {p1}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil;->alertRetryOutTime()V

    goto :goto_3

    .line 20
    :cond_7
    iget-object v0, p1, Lcom/alipay/zoloz/zface/beans/AlertData;->subCode:Ljava/lang/String;

    sget-object v2, Lcom/alipay/mobile/security/bio/constants/ZcodeConstants;->ZCODE_USER_BACK:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 21
    invoke-virtual {p0}, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->onBackPressed()V

    goto :goto_3

    .line 22
    :cond_8
    iget-object v0, p1, Lcom/alipay/zoloz/zface/beans/AlertData;->subCode:Ljava/lang/String;

    sget-object v2, Lcom/alipay/mobile/security/bio/constants/ZcodeConstants;->ZCODE_INTERUPT_RESUME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 23
    iget-object p1, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mAlertUtil:Lcom/alipay/zoloz/zface/ui/util/AlertUtil;

    invoke-virtual {p1}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil;->alertInterruptResume()V

    goto :goto_3

    .line 24
    :cond_9
    iget-object v0, p1, Lcom/alipay/zoloz/zface/beans/AlertData;->subCode:Ljava/lang/String;

    sget-object v2, Lcom/alipay/mobile/security/bio/constants/ZcodeConstants;->ZCODE_SYSTEM_EXC:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 25
    iget-object p1, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mAlertUtil:Lcom/alipay/zoloz/zface/ui/util/AlertUtil;

    invoke-virtual {p1}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil;->alertSystemError()V

    goto :goto_3

    .line 26
    :cond_a
    iget-object v0, p1, Lcom/alipay/zoloz/zface/beans/AlertData;->subCode:Ljava/lang/String;

    sget-object v2, Lcom/alipay/mobile/security/bio/constants/ZcodeConstants;->ZCODE_RETRY_ALERT:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 27
    iget-object p1, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mAlertUtil:Lcom/alipay/zoloz/zface/ui/util/AlertUtil;

    invoke-virtual {p1}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil;->alertFailRetry()V

    goto :goto_3

    .line 28
    :cond_b
    iget-object p1, p1, Lcom/alipay/zoloz/zface/beans/AlertData;->subCode:Ljava/lang/String;

    sget-object v0, Lcom/alipay/mobile/security/bio/constants/ZcodeConstants;->ZCODE_FIRST_LOGIN:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 29
    iget-object p1, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mAlertUtil:Lcom/alipay/zoloz/zface/ui/util/AlertUtil;

    invoke-virtual {p1}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil;->alertFirstLogin()V

    goto :goto_3

    .line 30
    :cond_c
    iget-object p1, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mAlertUtil:Lcom/alipay/zoloz/zface/ui/util/AlertUtil;

    invoke-virtual {p1}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil;->alertSystemError()V

    goto :goto_3

    .line 31
    :cond_d
    :goto_0
    iget-object v0, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mAlertUtil:Lcom/alipay/zoloz/zface/ui/util/AlertUtil;

    iget-object p1, p1, Lcom/alipay/zoloz/zface/beans/AlertData;->subCode:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil;->alertSystemNotSupport(Ljava/lang/String;)V

    goto :goto_3

    .line 32
    :cond_e
    :goto_1
    iget-object p1, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mAlertUtil:Lcom/alipay/zoloz/zface/ui/util/AlertUtil;

    invoke-virtual {p1}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil;->alertNetworkError()V

    goto :goto_3

    .line 33
    :cond_f
    :goto_2
    iget-object p1, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mAlertUtil:Lcom/alipay/zoloz/zface/ui/util/AlertUtil;

    invoke-virtual {p1}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil;->alertSystemError()V

    :goto_3
    return v1

    .line 34
    :cond_10
    :goto_4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return v1
.end method

.method public handleFinish(Z)V
    .locals 0

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mTitleBar:Lzoloz/ap/com/toolkit/ui/TitleBar;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mZFacePresenter:Lcom/alipay/zoloz/zface/presenter/ZFacePresenter;

    invoke-virtual {v0}, Lcom/alipay/zoloz/zface/presenter/ZFacePresenter;->stopProcess()V

    .line 3
    iget-object v0, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mAlertUtil:Lcom/alipay/zoloz/zface/ui/util/AlertUtil;

    invoke-virtual {v0}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil;->alertBack()V

    :cond_0
    return-void
.end method

.method protected onCameraWithPermission()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/alipay/zoloz/zface/ui/activity/BaseCameraPermissionActivity;->onCameraWithPermission()V

    .line 2
    invoke-virtual {p0}, Lcom/alipay/zoloz/zface/ui/activity/BaseCameraPermissionActivity;->hasPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->startTimerTask()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/alipay/zoloz/zface/ui/activity/BaseCameraPermissionActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    new-instance p1, Lcom/alipay/zoloz/zface/ui/util/EnvCheck;

    invoke-direct {p1}, Lcom/alipay/zoloz/zface/ui/util/EnvCheck;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/alipay/zoloz/zface/ui/util/EnvCheck;->check(Z)Lcom/alipay/zoloz/zface/ui/util/EnvCheck$EnvErrorType;

    move-result-object p1

    .line 3
    sget-object v0, Lcom/alipay/zoloz/zface/ui/util/EnvCheck$EnvErrorType;->ENV_ERROR_LOW_OS:Lcom/alipay/zoloz/zface/ui/util/EnvCheck$EnvErrorType;

    if-ne p1, v0, :cond_0

    .line 4
    iget-object p1, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mAlertUtil:Lcom/alipay/zoloz/zface/ui/util/AlertUtil;

    sget-object v0, Lcom/alipay/mobile/security/bio/constants/ZcodeConstants;->ZCODE_OS_VERSION_LOW:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil;->alertSystemNotSupport(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    sget-object v0, Lcom/alipay/zoloz/zface/ui/util/EnvCheck$EnvErrorType;->ENV_ERROR_NO_FRONT_CAMERA:Lcom/alipay/zoloz/zface/ui/util/EnvCheck$EnvErrorType;

    if-ne p1, v0, :cond_1

    .line 6
    iget-object p1, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mAlertUtil:Lcom/alipay/zoloz/zface/ui/util/AlertUtil;

    sget-object v0, Lcom/alipay/mobile/security/bio/constants/ZcodeConstants;->ZCODE_ERROR_CAMERA_NO_DEVICE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil;->alertSystemNotSupport(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_1
    sget-object v0, Lcom/alipay/zoloz/zface/ui/util/EnvCheck$EnvErrorType;->ENV_ERROR_UNSUPPORTED_CPU:Lcom/alipay/zoloz/zface/ui/util/EnvCheck$EnvErrorType;

    if-ne p1, v0, :cond_2

    .line 8
    iget-object p1, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mAlertUtil:Lcom/alipay/zoloz/zface/ui/util/AlertUtil;

    sget-object v0, Lcom/alipay/mobile/security/bio/constants/ZcodeConstants;->ZCODE_UNSUPPORTED_CPU:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil;->alertSystemNotSupport(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "noticeExitSDK"

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->record(Ljava/lang/String;Ljava/util/Map;)V

    .line 2
    iget-object v0, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mZFacePresenter:Lcom/alipay/zoloz/zface/presenter/ZFacePresenter;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/alipay/zoloz/zface/presenter/ZFacePresenter;->release()V

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->stopTimerTask()V

    .line 5
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onFrameComplete()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mAlgorithmScheduleProgressBar:Lcom/alipay/zoloz/zface/ui/widget/AlgorithmScheduleProgressBar;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/alipay/zoloz/zface/ui/widget/AlgorithmScheduleProgressBar;->showProgress(F)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mIsShowFrame:Z

    .line 3
    invoke-direct {p0}, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->stopTimerTask()V

    .line 4
    iget-object v0, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mZfaceUploadLoadingView:Lcom/alipay/zoloz/zface/ui/widget/ZfaceUploadLoadingView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/zoloz/zface/ui/widget/ZfaceUploadLoadingView;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mBestBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->showBestFrameBlur(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onFrameQualify(Landroid/graphics/Bitmap;Lcom/alipay/zoloz/toyger/face/ToygerFaceAttr;)V
    .locals 1

    const-string p2, "poseEnd"

    .line 1
    invoke-direct {p0, p2}, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->record(Ljava/lang/String;)V

    const-string p2, "livebodyStart"

    .line 2
    invoke-direct {p0, p2}, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->record(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/alipay/zoloz/zface/services/TimeRecord;->getInstance()Lcom/alipay/zoloz/zface/services/TimeRecord;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/alipay/zoloz/zface/services/TimeRecord;->recordTime(Ljava/lang/String;)V

    const-string p2, "uploadAvarriable"

    .line 4
    invoke-direct {p0, p2}, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->record(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mBestBitmap:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_0

    .line 6
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    const/4 p2, 0x0

    .line 7
    iput-object p2, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mBestBitmap:Landroid/graphics/Bitmap;

    .line 8
    :cond_0
    iput-object p1, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mBestBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public onFrameStateUpdate(Lcom/alipay/zoloz/zface/beans/FrameStateData;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity$3;

    invoke-direct {v0, p0, p1}, Lcom/alipay/zoloz/zface/ui/ZFaceActivity$3;-><init>(Lcom/alipay/zoloz/zface/ui/ZFaceActivity;Lcom/alipay/zoloz/zface/beans/FrameStateData;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onInitView()V
    .locals 3

    .line 1
    new-instance v0, Lcom/alipay/zoloz/zface/ui/util/AlertUtil;

    invoke-direct {v0, p0, p0}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil;-><init>(Landroid/app/Activity;Lcom/alipay/zoloz/zface/ui/util/AlertUtil$AlertClickEvents;)V

    iput-object v0, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mAlertUtil:Lcom/alipay/zoloz/zface/ui/util/AlertUtil;

    .line 2
    new-instance v0, Lcom/alipay/zoloz/zface/ui/util/FaceScanTipsUtil;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mZFacePresenter:Lcom/alipay/zoloz/zface/presenter/ZFacePresenter;

    invoke-virtual {v2}, Lcom/alipay/zoloz/zface/presenter/ZFacePresenter;->getRemoteConfig()Lcom/alipay/zoloz/zface/beans/FaceRemoteConfig;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alipay/zoloz/zface/ui/util/FaceScanTipsUtil;-><init>(Landroid/content/res/Resources;Lcom/alipay/zoloz/zface/beans/FaceRemoteConfig;)V

    iput-object v0, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mFaceScanTipsUtil:Lcom/alipay/zoloz/zface/ui/util/FaceScanTipsUtil;

    .line 3
    sget v0, Lcom/alipay/zoloz/toyger/R$id;->zface_surface_view:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;

    iput-object v0, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mCameraSurfaceView:Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;

    .line 4
    sget v0, Lcom/alipay/zoloz/toyger/R$id;->zface_preview_img:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mCameraPreviewImg:Landroid/widget/ImageView;

    .line 5
    sget v0, Lcom/alipay/zoloz/toyger/R$id;->zface_titlebar:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lzoloz/ap/com/toolkit/ui/TitleBar;

    iput-object v0, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mTitleBar:Lzoloz/ap/com/toolkit/ui/TitleBar;

    .line 6
    sget v0, Lcom/alipay/zoloz/toyger/R$id;->zface_algorithm_schedule_progressbar:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/zoloz/zface/ui/widget/AlgorithmScheduleProgressBar;

    iput-object v0, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mAlgorithmScheduleProgressBar:Lcom/alipay/zoloz/zface/ui/widget/AlgorithmScheduleProgressBar;

    .line 7
    iget-object v0, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mTitleBar:Lzoloz/ap/com/toolkit/ui/TitleBar;

    new-instance v1, Lcom/alipay/zoloz/zface/ui/ZFaceActivity$2;

    invoke-direct {v1, p0}, Lcom/alipay/zoloz/zface/ui/ZFaceActivity$2;-><init>(Lcom/alipay/zoloz/zface/ui/ZFaceActivity;)V

    invoke-virtual {v0, v1}, Lzoloz/ap/com/toolkit/ui/TitleBar;->setClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    sget v0, Lcom/alipay/zoloz/toyger/R$id;->zface_top_tip_tv:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lzoloz/ap/com/toolkit/ui/CustomTextView;

    iput-object v0, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mZfaceTopTips:Lzoloz/ap/com/toolkit/ui/CustomTextView;

    .line 9
    sget v0, Lcom/alipay/zoloz/toyger/R$id;->zface_upload_loading_view:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/zoloz/zface/ui/widget/ZfaceUploadLoadingView;

    iput-object v0, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mZfaceUploadLoadingView:Lcom/alipay/zoloz/zface/ui/widget/ZfaceUploadLoadingView;

    .line 10
    iget-object v0, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mZfaceUploadLoadingView:Lcom/alipay/zoloz/zface/ui/widget/ZfaceUploadLoadingView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alipay/zoloz/zface/ui/widget/ZfaceUploadLoadingView;->setVisibility(I)V

    .line 11
    invoke-virtual {p0}, Lcom/alipay/zoloz/zface/ui/activity/BaseCameraPermissionActivity;->hasPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    invoke-direct {p0}, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->startTimerTask()V

    .line 13
    :cond_0
    sget v0, Lcom/alipay/zoloz/toyger/R$id;->zfac_brand_tv:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 14
    iget-object v1, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mZFacePresenter:Lcom/alipay/zoloz/zface/presenter/ZFacePresenter;

    invoke-virtual {v1}, Lcom/alipay/zoloz/zface/presenter/ZFacePresenter;->getRemoteConfig()Lcom/alipay/zoloz/zface/beans/FaceRemoteConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/zoloz/zface/beans/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getBrandTip()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/alipay/zoloz/zface/ui/activity/BaseCameraPermissionActivity;->onPause()V

    .line 2
    invoke-virtual {p0}, Lcom/alipay/zoloz/zface/ui/activity/BaseCameraPermissionActivity;->hasPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->isPause:Z

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->stopTimerTask()V

    return-void
.end method

.method public onPreviewFrame(Lcom/alipay/zoloz/zface/beans/PreviewData;)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mIsShowFrame:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mIsShowFrame:Z

    .line 3
    iget-object v1, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mCameraPreviewImg:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mZFacePresenter:Lcom/alipay/zoloz/zface/presenter/ZFacePresenter;

    invoke-virtual {v1}, Lcom/alipay/zoloz/zface/presenter/ZFacePresenter;->stopProcess()V

    .line 5
    invoke-direct {p0}, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->stopTimerTask()V

    .line 6
    iget-object v1, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mCameraPreviewImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    iget-object v1, p1, Lcom/alipay/zoloz/zface/beans/PreviewData;->rgbData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 8
    invoke-static {p0}, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->getCameraImpl(Landroid/content/Context;)Lcom/alipay/zoloz/hardware/camera/ICameraInterface;

    move-result-object v2

    .line 9
    invoke-interface {v2}, Lcom/alipay/zoloz/hardware/camera/ICameraInterface;->getColorWidth()I

    move-result v3

    .line 10
    invoke-interface {v2}, Lcom/alipay/zoloz/hardware/camera/ICameraInterface;->getColorHeight()I

    move-result v4

    iget v5, p1, Lcom/alipay/zoloz/zface/beans/PreviewData;->frameMode:I

    .line 11
    invoke-static {v1, v3, v4, v5}, Lcom/alipay/zoloz/toyger/blob/BitmapHelper;->bytes2Bitmap([BIII)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v3, 0x0

    .line 12
    iget v4, p1, Lcom/alipay/zoloz/zface/beans/PreviewData;->rotation:I

    if-nez v4, :cond_2

    if-eqz v2, :cond_1

    .line 13
    invoke-interface {v2}, Lcom/alipay/zoloz/hardware/camera/ICameraInterface;->isMirror()Z

    move-result p1

    if-eqz p1, :cond_1

    move-object p1, v3

    goto :goto_0

    .line 14
    :cond_1
    invoke-static {v1, v0}, Lcom/alipay/zoloz/toyger/blob/BitmapHelper;->reverseBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    .line 15
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showLastFrame(), call getVerticalRotateBitmap(bitmap, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/alipay/zoloz/zface/beans/PreviewData;->rotation:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    iget p1, p1, Lcom/alipay/zoloz/zface/beans/PreviewData;->rotation:I

    int-to-float p1, p1

    invoke-static {v1, p1}, Lcom/alipay/mobile/security/bio/utils/RotateBitmapHelper;->getVerticalRotateBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_3

    move-object p1, v1

    .line 17
    :cond_3
    iget-object v0, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mCameraPreviewImg:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    invoke-static {p0}, Lcom/alipay/mobile/security/bio/utils/ScreenUtil;->getScreenBrightness(Landroid/content/Context;)I

    move-result v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mZFacePresenter:Lcom/alipay/zoloz/zface/presenter/ZFacePresenter;

    invoke-virtual {v1}, Lcom/alipay/zoloz/zface/presenter/ZFacePresenter;->getRemoteConfig()Lcom/alipay/zoloz/zface/beans/FaceRemoteConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/zoloz/zface/beans/FaceRemoteConfig;->getColl()Lcom/alipay/mobile/security/bio/config/bean/Coll;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/security/bio/config/bean/Coll;->getLight()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 4
    invoke-static {p0, v1}, Lcom/alipay/mobile/security/bio/utils/ScreenUtil;->setScreenBrightness(Landroid/app/Activity;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 6
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/zoloz/zface/ui/activity/BaseCameraPermissionActivity;->hasPermission()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->isPause:Z

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mAlertUtil:Lcom/alipay/zoloz/zface/ui/util/AlertUtil;

    invoke-virtual {v0}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil;->alertInterruptResume()V

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/zoloz/zface/ui/activity/BaseCameraPermissionActivity;->hasPermission()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    invoke-direct {p0}, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->startTimerTask()V

    :cond_2
    :goto_1
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->isPause:Z

    .line 11
    iget-boolean v1, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mIsFirstResume:Z

    if-eqz v1, :cond_3

    .line 12
    iput-boolean v0, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mIsFirstResume:Z

    .line 13
    invoke-static {}, Lcom/alipay/zoloz/zface/services/TimeRecord;->getInstance()Lcom/alipay/zoloz/zface/services/TimeRecord;

    move-result-object v0

    const-string v1, "EnterDetectionStart"

    invoke-virtual {v0, v1}, Lcom/alipay/zoloz/zface/services/TimeRecord;->getTimeInterval(Ljava/lang/String;)J

    move-result-wide v0

    .line 14
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 15
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "timecost"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/alipay/mobile/security/bio/utils/ScreenUtil;->getScreenBrightness(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "brightness"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "EnterDetectionEnd"

    .line 17
    invoke-direct {p0, v0, v2}, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->record(Ljava/lang/String;Ljava/util/Map;)V

    :cond_3
    return-void
.end method

.method public onSurfaceviewInit(DD)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mCameraSurfaceView:Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mCameraSurfaceView:Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, p1, p3

    if-gez v4, :cond_1

    .line 3
    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    int-to-double v4, v4

    mul-double p1, p1, v2

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, p1

    mul-double v4, v4, p3

    double-to-int p1, v4

    .line 4
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 5
    iget-object p1, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mCameraSurfaceView:Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    iget-object p1, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mCameraSurfaceView:Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;

    invoke-virtual {p1, v1}, Landroid/view/SurfaceView;->setBackgroundColor(I)V

    .line 7
    iget-object p1, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mCameraPreviewImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 8
    :cond_1
    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    int-to-double v4, v4

    mul-double p3, p3, v2

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, p3

    mul-double v4, v4, p1

    double-to-int p1, v4

    .line 9
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 10
    iget-object p1, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mCameraSurfaceView:Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    iget-object p1, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mCameraSurfaceView:Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;

    invoke-virtual {p1, v1}, Landroid/view/SurfaceView;->setBackgroundColor(I)V

    .line 12
    iget-object p1, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mCameraPreviewImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method public onUploadSuccess(Lcom/alipay/zoloz/zface/beans/UploadData;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mAlertUtil:Lcom/alipay/zoloz/zface/ui/util/AlertUtil;

    invoke-virtual {v0, p0}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil;->alertUploadSuccess(Landroid/app/Activity;)Lzoloz/ap/com/toolkit/ui/DialogHelper;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mZfaceUploadLoadingView:Lcom/alipay/zoloz/zface/ui/widget/ZfaceUploadLoadingView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/alipay/zoloz/zface/ui/widget/ZfaceUploadLoadingView;->setVisibility(I)V

    .line 3
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/alipay/zoloz/zface/ui/ZFaceActivity$4;

    invoke-direct {v2, p0, v0, p1}, Lcom/alipay/zoloz/zface/ui/ZFaceActivity$4;-><init>(Lcom/alipay/zoloz/zface/ui/ZFaceActivity;Lzoloz/ap/com/toolkit/ui/DialogHelper;Lcom/alipay/zoloz/zface/beans/UploadData;)V

    const-wide/16 v3, 0x320

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected preCheck()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getCurrentInstance()Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "null == BioServiceManager.getCurrentInstance()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.alipay.mobile.security.bio.action.intent.app"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mAppTag:Ljava/lang/String;

    .line 4
    const-class v1, Lcom/alipay/mobile/security/bio/service/BioAppManager;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getBioService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/bio/service/BioAppManager;

    iget-object v1, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mAppTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/bio/service/BioAppManager;->getBioAppDescription(Ljava/lang/String;)Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->updateLanguage(Lcom/alipay/mobile/security/bio/service/BioAppDescription;)V

    const/4 v0, 0x1

    return v0
.end method

.method public retry()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mZFacePresenter:Lcom/alipay/zoloz/zface/presenter/ZFacePresenter;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mCameraPreviewImg:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mCameraSurfaceView:Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mZfaceUploadLoadingView:Lcom/alipay/zoloz/zface/ui/widget/ZfaceUploadLoadingView;

    invoke-virtual {v0, v1}, Lcom/alipay/zoloz/zface/ui/widget/ZfaceUploadLoadingView;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mZFacePresenter:Lcom/alipay/zoloz/zface/presenter/ZFacePresenter;

    invoke-virtual {v0}, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->retry()V

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->startTimerTask()V

    return-void
.end method

.method public retryUpload()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mZFacePresenter:Lcom/alipay/zoloz/zface/presenter/ZFacePresenter;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->retryUpload()V

    :cond_0
    return-void
.end method

.method public sendResponse(ILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mZFacePresenter:Lcom/alipay/zoloz/zface/presenter/ZFacePresenter;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p2}, Lcom/alipay/mobile/security/bio/constants/CodeConstants;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0, p1, p2, v1}, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->sendResponseWithSubcode(ILjava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public showFrame()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mIsShowFrame:Z

    return-void
.end method

.method public stopProcess()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->mZFacePresenter:Lcom/alipay/zoloz/zface/presenter/ZFacePresenter;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/alipay/zoloz/zface/presenter/ZFacePresenter;->stopProcess()V

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/alipay/zoloz/zface/ui/ZFaceActivity;->stopTimerTask()V

    return-void
.end method
