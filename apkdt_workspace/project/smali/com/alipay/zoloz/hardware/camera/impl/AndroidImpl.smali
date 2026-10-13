.class public Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;
.super Ljava/lang/Object;
.source "AndroidImpl.java"

# interfaces
.implements Lcom/alipay/zoloz/hardware/camera/ICameraInterface;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InlinedApi"
    }
.end annotation


# static fields
.field private static mCameraInterface:Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;


# instance fields
.field private isCameraInit:Z

.field private isCameraOpen:Z

.field private isCameraStart:Z

.field private isPreviewSize600:Z

.field private isPreviewing:Z

.field private mCamera:Landroid/hardware/Camera;

.field private mCameraCallback:Lcom/alipay/zoloz/hardware/camera/ICameraCallback;

.field private mCameraID:I

.field private mCameraNumber:I

.field private mCameraViewRotationAngle:I

.field private mContext:Landroid/content/Context;

.field private mDeviceSetting:Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;

.field private mHeight:I

.field private final mLock:Ljava/lang/Object;

.field private mParams:Landroid/hardware/Camera$Parameters;

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mWidth:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x5a

    .line 2
    iput v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mCameraViewRotationAngle:I

    .line 3
    new-instance v0, Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;

    invoke-direct {v0}, Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;-><init>()V

    iput-object v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mDeviceSetting:Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mWidth:I

    .line 6
    iput v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mHeight:I

    .line 7
    iput v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mPreviewWidth:I

    .line 8
    iput v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mPreviewHeight:I

    .line 9
    iput-boolean v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->isCameraInit:Z

    .line 10
    iput-boolean v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->isCameraOpen:Z

    .line 11
    iput-boolean v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->isCameraStart:Z

    .line 12
    iput-boolean v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->isPreviewing:Z

    .line 13
    iput-boolean v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->isPreviewSize600:Z

    if-eqz p1, :cond_0

    .line 14
    iput-object p1, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mContext:Landroid/content/Context;

    .line 15
    iput-boolean v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->isCameraInit:Z

    .line 16
    iput-boolean v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->isCameraOpen:Z

    .line 17
    iput-boolean v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->isCameraStart:Z

    .line 18
    iput-boolean v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->isPreviewing:Z

    return-void

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Context can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;)Lcom/alipay/zoloz/hardware/camera/ICameraCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mCameraCallback:Lcom/alipay/zoloz/hardware/camera/ICameraCallback;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mWidth:I

    return p0
.end method

.method static synthetic access$200(Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mHeight:I

    return p0
.end method

.method static synthetic access$300(Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mPreviewWidth:I

    return p0
.end method

.method static synthetic access$400(Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mPreviewHeight:I

    return p0
.end method

.method private adjustBackCameraParams()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mParams:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_3

    .line 2
    iget-boolean v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->isPreviewSize600:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/alipay/zoloz/hardware/camera/utils/AndroidCameraUtil;->getInstance()Lcom/alipay/zoloz/hardware/camera/utils/AndroidCameraUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mParams:Landroid/hardware/Camera$Parameters;

    .line 4
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/mobile/security/bio/utils/DisplayUtil;->getScreenRate(Landroid/content/Context;)F

    move-result v2

    const/16 v3, 0x258

    .line 5
    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/zoloz/hardware/camera/utils/AndroidCameraUtil;->getPropPreviewSize(Ljava/util/List;FI)Landroid/hardware/Camera$Size;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lcom/alipay/zoloz/hardware/camera/utils/AndroidCameraUtil;->getInstance()Lcom/alipay/zoloz/hardware/camera/utils/AndroidCameraUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mParams:Landroid/hardware/Camera$Parameters;

    .line 7
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/mobile/security/bio/utils/DisplayUtil;->getScreenRate(Landroid/content/Context;)F

    move-result v2

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/alipay/zoloz/hardware/camera/utils/AndroidCameraUtil;->getBackCameraPreviewSize(Ljava/util/List;F)Landroid/hardware/Camera$Size;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 9
    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    iput v1, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mPreviewWidth:I

    .line 10
    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    iput v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mPreviewHeight:I

    .line 11
    iget v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mPreviewWidth:I

    iput v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mWidth:I

    .line 12
    iget v1, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mPreviewHeight:I

    iput v1, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mHeight:I

    .line 13
    iget-object v2, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mDeviceSetting:Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;

    if-eqz v0, :cond_2

    .line 15
    invoke-direct {p0, v0}, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->getCameraAutoAngle(Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;)I

    move-result v0

    iput v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mCameraViewRotationAngle:I

    .line 16
    iget-object v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mCamera:Landroid/hardware/Camera;

    iget v1, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mCameraViewRotationAngle:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 17
    :cond_2
    iget-object v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-direct {p0, v0}, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->getBestFocusMode(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v0

    .line 18
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 19
    iget-object v1, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private adjustCameraParams()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mParams:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/alipay/zoloz/hardware/camera/utils/AndroidCameraUtil;->findBackCameraId()I

    move-result v0

    .line 3
    iget v1, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mCameraID:I

    if-ne v1, v0, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->adjustBackCameraParams()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->adjustFrontCameraParams()V

    :cond_1
    :goto_0
    return-void
.end method

.method private adjustFrontCameraParams()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mParams:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_3

    .line 2
    invoke-static {}, Lcom/alipay/zoloz/hardware/camera/utils/AndroidCameraUtil;->getInstance()Lcom/alipay/zoloz/hardware/camera/utils/AndroidCameraUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mParams:Landroid/hardware/Camera$Parameters;

    .line 3
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/mobile/security/bio/utils/DisplayUtil;->getScreenRate(Landroid/content/Context;)F

    move-result v2

    const/16 v3, 0x258

    .line 4
    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/zoloz/hardware/camera/utils/AndroidCameraUtil;->getPropPreviewSize(Ljava/util/List;FI)Landroid/hardware/Camera$Size;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    iput v1, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mPreviewWidth:I

    .line 6
    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    iput v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mPreviewHeight:I

    .line 7
    iget v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mPreviewWidth:I

    iput v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mWidth:I

    .line 8
    iget v1, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mPreviewHeight:I

    iput v1, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mHeight:I

    .line 9
    iget-object v2, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mDeviceSetting:Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;

    if-eqz v0, :cond_1

    .line 11
    invoke-direct {p0, v0}, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->getCameraAutoAngle(Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;)I

    move-result v0

    iput v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mCameraViewRotationAngle:I

    .line 12
    iget-object v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mCamera:Landroid/hardware/Camera;

    iget v1, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mCameraViewRotationAngle:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "continuous-video"

    .line 14
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 15
    iget-object v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, "auto"

    .line 16
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method private getBestFocusMode(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mCamera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    const-string v2, "continuous-video"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v2

    .line 3
    :cond_1
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    const-string v2, "auto"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v2

    .line 4
    :cond_2
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    const-string v2, "macro"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-object v2

    .line 5
    :cond_3
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    const-string v2, "fixed"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-object v2

    .line 6
    :cond_4
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_5

    .line 7
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_5
    return-object v1
.end method

.method private getCameraAutoAngle(I)I
    .locals 6

    .line 5
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 6
    invoke-static {p1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 7
    iget-object p1, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mContext:Landroid/content/Context;

    const-string v1, "window"

    .line 8
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 9
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    const/16 v1, 0x10e

    const/16 v2, 0x5a

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_3

    if-eq p1, v3, :cond_2

    const/4 v5, 0x2

    if-eq p1, v5, :cond_1

    const/4 v5, 0x3

    if-eq p1, v5, :cond_0

    goto :goto_0

    :cond_0
    const/16 v4, 0x10e

    goto :goto_0

    :cond_1
    const/16 p1, 0xb4

    const/16 v4, 0xb4

    goto :goto_0

    :cond_2
    const/16 v4, 0x5a

    .line 10
    :cond_3
    :goto_0
    iget p1, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne p1, v3, :cond_5

    .line 11
    sget-object p1, Lcom/alipay/android/phone/zoloz/camera/BuildConfig;->OFFLINE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 12
    iput v1, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    .line 13
    :cond_4
    iget p1, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr p1, v4

    rem-int/lit16 p1, p1, 0x168

    rsub-int p1, p1, 0x168

    .line 14
    rem-int/lit16 p1, p1, 0x168

    goto :goto_1

    .line 15
    :cond_5
    sget-object p1, Lcom/alipay/android/phone/zoloz/camera/BuildConfig;->OFFLINE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 16
    iput v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    .line 17
    :cond_6
    iget p1, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr p1, v4

    add-int/lit16 p1, p1, 0x168

    rem-int/lit16 p1, p1, 0x168

    :goto_1
    return p1
.end method

.method private getCameraAutoAngle(Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;)I
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;->isDisplayAuto()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget p1, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mCameraID:I

    invoke-direct {p0, p1}, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->getCameraAutoAngle(I)I

    move-result p1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;->getDisplayAngle()I

    move-result p1

    :goto_0
    return p1

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "deviceSetting can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;
    .locals 2

    const-class v0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mCameraInterface:Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;

    invoke-direct {v1, p0}, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mCameraInterface:Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;

    .line 3
    :cond_0
    sget-object v1, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mCameraInterface:Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;

    invoke-direct {v1, p0}, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->initContext(Landroid/content/Context;)V

    .line 4
    sget-object p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mCameraInterface:Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private initContext(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mContext:Landroid/content/Context;

    return-void
.end method

.method private realStartCamera(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 1
    :try_start_0
    invoke-static {p1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mCamera:Landroid/hardware/Camera;

    .line 2
    iget-object v2, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mCamera:Landroid/hardware/Camera;

    if-nez v2, :cond_1

    .line 3
    iget-object p1, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mCameraCallback:Lcom/alipay/zoloz/hardware/camera/ICameraCallback;

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mCameraCallback:Lcom/alipay/zoloz/hardware/camera/ICameraCallback;

    invoke-interface {p1, v1}, Lcom/alipay/zoloz/hardware/camera/ICameraCallback;->onError(I)V

    :cond_0
    return v0

    .line 5
    :cond_1
    iput p1, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mCameraID:I

    .line 6
    iget-object p1, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mCamera:Landroid/hardware/Camera;

    if-eqz p1, :cond_3

    .line 7
    iget-object p1, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mParams:Landroid/hardware/Camera$Parameters;

    .line 8
    invoke-direct {p0}, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->adjustCameraParams()V

    .line 9
    iget-object p1, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mCamera:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 10
    iget-object p1, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mCameraCallback:Lcom/alipay/zoloz/hardware/camera/ICameraCallback;

    if-eqz p1, :cond_2

    .line 11
    iget-object p1, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mCamera:Landroid/hardware/Camera;

    new-instance v2, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl$1;

    invoke-direct {v2, p0}, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl$1;-><init>(Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;)V

    invoke-virtual {p1, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    const/4 p1, 0x1

    return p1

    :catchall_0
    nop

    .line 12
    iget-object p1, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mCameraCallback:Lcom/alipay/zoloz/hardware/camera/ICameraCallback;

    if-eqz p1, :cond_3

    .line 13
    invoke-interface {p1, v1}, Lcom/alipay/zoloz/hardware/camera/ICameraCallback;->onError(I)V

    goto :goto_0

    :catch_0
    nop

    .line 14
    iget-object p1, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mCameraCallback:Lcom/alipay/zoloz/hardware/camera/ICameraCallback;

    if-eqz p1, :cond_3

    .line 15
    invoke-interface {p1, v1}, Lcom/alipay/zoloz/hardware/camera/ICameraCallback;->onError(I)V

    :cond_3
    :goto_0
    return v0
.end method


# virtual methods
.method public closeCamera()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->isCameraOpen:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->isCameraOpen:Z

    return-void
.end method

.method public colorToDepth(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public depthToColor(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getCameraParams()Lcom/alipay/zoloz/hardware/camera/CameraParams;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCameraSN()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCameraViewRotation()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mCameraViewRotationAngle:I

    return v0
.end method

.method public getColorHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mHeight:I

    return v0
.end method

.method public getColorMode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getColorWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mWidth:I

    return v0
.end method

.method public getDepthHeight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDepthWidth()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFirmwareVersion()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getParams()Landroid/hardware/Camera$Parameters;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mParams:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method public getPreviewHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mPreviewHeight:I

    return v0
.end method

.method public getPreviewWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mPreviewWidth:I

    return v0
.end method

.method public getROI()Landroid/graphics/Rect;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUVCCamera()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public initCamera(Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->isCameraInit:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    iput-object p1, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mDeviceSetting:Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;

    :cond_1
    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->isCameraInit:Z

    return-void
.end method

.method public isMirror()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public openCamera(Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->isCameraOpen:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    iput-object p1, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mDeviceSetting:Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;

    :cond_1
    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->isCameraOpen:Z

    return-void
.end method

.method public releaseCamera()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->stopCamera()V

    .line 2
    iget-boolean v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->isCameraInit:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->isCameraInit:Z

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mContext:Landroid/content/Context;

    .line 5
    invoke-static {}, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->release()V

    .line 6
    sput-object v0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mCameraInterface:Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;

    return-void
.end method

.method public setCallback(Lcom/alipay/zoloz/hardware/camera/ICameraCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mCameraCallback:Lcom/alipay/zoloz/hardware/camera/ICameraCallback;

    return-void
.end method

.method public setFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V
    .locals 0

    return-void
.end method

.method public setPreviewSize600(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->isPreviewSize600:Z

    return-void
.end method

.method public startCamera()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->isCameraStart:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    iput v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mCameraNumber:I

    .line 3
    iget-object v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mDeviceSetting:Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;->isCameraAuto()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 4
    iget v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mCameraNumber:I

    if-gt v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mDeviceSetting:Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;->getCameraID()I

    move-result v0

    .line 6
    :goto_0
    invoke-direct {p0, v0}, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->realStartCamera(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    iput-boolean v1, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->isCameraStart:Z

    :cond_3
    return-void
.end method

.method public startPreview(Landroid/view/SurfaceHolder;FII)V
    .locals 0

    .line 1
    iget-boolean p2, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->isPreviewing:Z

    if-eqz p2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p2, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mCamera:Landroid/hardware/Camera;

    if-eqz p2, :cond_1

    .line 3
    :try_start_0
    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 4
    iget-object p1, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->startPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->isPreviewing:Z

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 7
    iget-object p1, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mCameraCallback:Lcom/alipay/zoloz/hardware/camera/ICameraCallback;

    if-eqz p1, :cond_1

    const/4 p2, -0x1

    .line 8
    invoke-interface {p1, p2}, Lcom/alipay/zoloz/hardware/camera/ICameraCallback;->onError(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public stopCamera()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->stopPreview()V

    .line 2
    iget-boolean v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->isCameraStart:Z

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mCamera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V

    const/4 v2, 0x0

    .line 6
    iput-object v2, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mCamera:Landroid/hardware/Camera;

    .line 7
    iput-boolean v1, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->isCameraStart:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 8
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 9
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 10
    :cond_1
    iput-boolean v1, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->isCameraStart:Z

    :goto_2
    return-void
.end method

.method public stopPreview()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->isPreviewing:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 5
    iget-object v2, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 6
    iget-object v2, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->stopPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v2

    .line 7
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 8
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    iput-object v1, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->mCameraCallback:Lcom/alipay/zoloz/hardware/camera/ICameraCallback;

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->isPreviewing:Z

    goto :goto_2

    .line 11
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_1
    :goto_2
    return-void
.end method
