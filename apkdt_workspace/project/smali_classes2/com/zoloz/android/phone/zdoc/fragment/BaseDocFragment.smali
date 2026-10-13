.class public Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;
.super Lcom/zoloz/android/phone/zdoc/fragment/BaseCameraPermissionFragment;
.source "BaseDocFragment.java"

# interfaces
.implements Lcom/alipay/zoloz/hardware/camera/ICameraCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "ZdocCaptureActivity"


# instance fields
.field protected mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;

.field protected mBioUploadService:Lcom/alipay/mobile/security/bio/service/BioUploadService;

.field private mCameraInterface:Lcom/alipay/zoloz/hardware/camera/ICameraInterface;

.field private mCameraSurfaceView:Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;

.field protected mContent:[B

.field protected mCurrentPageNumber:I

.field protected mCurrentPageNumberIndex:I

.field protected mCurrentRetryTimes:I

.field protected mCurrentState:Lcom/zoloz/android/phone/zdoc/ui/UIState;

.field protected mDefaultMaskView:Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;

.field protected mDialogHelper:Lzoloz/ap/com/toolkit/ui/DialogHelper;

.field protected mIsUTF8:Z

.field protected mKey:[B

.field private mMainThreadHandler:Landroid/os/Handler;

.field protected mMaxRetryTimes:I

.field protected mMessageView:Lcom/zoloz/android/phone/zdoc/ui/IMessageView;

.field protected mPhotoImageView:Landroid/widget/ImageView;

.field protected mRecordManager:Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;

.field private mShowFrame:Z

.field protected mTitleBar:Lzoloz/ap/com/toolkit/ui/TitleBar;

.field protected mUiType:I

.field protected mUploadManager:Lcom/zoloz/android/phone/zdoc/upload/UploadManager;

.field protected mZdocRemoteConfig:Lcom/zoloz/android/phone/zdoc/module/ZdocRemoteConfig;

.field private needRecordImageSize:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/zoloz/android/phone/zdoc/fragment/BaseCameraPermissionFragment;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mMainThreadHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mShowFrame:Z

    .line 4
    sget-object v0, Lcom/zoloz/android/phone/zdoc/ui/UIState;->CAPTURE:Lcom/zoloz/android/phone/zdoc/ui/UIState;

    iput-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mCurrentState:Lcom/zoloz/android/phone/zdoc/ui/UIState;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->needRecordImageSize:Z

    return-void
.end method

.method static synthetic access$000(Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->handleNetWorkError()V

    return-void
.end method

.method static synthetic access$100(Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->handleSuccContinue()V

    return-void
.end method

.method static synthetic access$200(Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->handleFailRetry(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$300(Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->interrupt()V

    return-void
.end method

.method private findBackCameraId()I
    .locals 5

    .line 1
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    .line 2
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 3
    invoke-static {v3, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 4
    iget v4, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v4, :cond_0

    return v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private handleFailRetry(Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mRecordManager:Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x7d2

    invoke-virtual {v0, v2, v1, v3}, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;->recordUploadEnd(III)V

    .line 2
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mRecordManager:Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;

    invoke-virtual {v0}, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;->recordStartScan()V

    .line 3
    sget-object v0, Lcom/zoloz/android/phone/zdoc/ui/UIState;->UPLOAD_END_FAIL:Lcom/zoloz/android/phone/zdoc/ui/UIState;

    invoke-virtual {p0, v0}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->updateUI(Lcom/zoloz/android/phone/zdoc/ui/UIState;)V

    .line 4
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mRecordManager:Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;

    invoke-virtual {v0}, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;->retry()V

    .line 5
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mRecordManager:Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;

    const-string v3, "serverQuality_error"

    invoke-virtual {v0, v3}, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;->recordAlertAppear(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mDialogHelper:Lzoloz/ap/com/toolkit/ui/DialogHelper;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lzoloz/ap/com/toolkit/ui/DialogHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 7
    :cond_0
    sget-object v0, Lcom/zoloz/android/phone/zdoc/ui/UIState;->ALERT:Lcom/zoloz/android/phone/zdoc/ui/UIState;

    invoke-virtual {p0, v0}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->updateUI(Lcom/zoloz/android/phone/zdoc/ui/UIState;)V

    .line 8
    iget v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mCurrentRetryTimes:I

    iget v3, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mMaxRetryTimes:I

    if-ge v0, v3, :cond_7

    .line 9
    sget v0, Lcom/zoloz/android/phone/zdoc/R$string;->zdoc_unknow_title:I

    .line 10
    sget v3, Lcom/zoloz/android/phone/zdoc/R$string;->zdoc_unknow_msg:I

    :try_start_0
    const-string v4, "clientExtInfo"

    .line 11
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 12
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    const-string v4, "detectCode"

    .line 13
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v4, -0x1

    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v5, "NO_DOCUMENT"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :sswitch_1
    const-string v1, "BLUR"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_2
    const-string v1, "EXPOSURE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_3
    const-string v1, "NO_FACE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_4
    const-string v1, "IMPERFECT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, -0x1

    :goto_1
    if-eqz v1, :cond_6

    if-eq v1, v2, :cond_5

    if-eq v1, v8, :cond_4

    if-eq v1, v7, :cond_3

    if-eq v1, v6, :cond_2

    goto :goto_2

    .line 15
    :cond_2
    sget v0, Lcom/zoloz/android/phone/zdoc/R$string;->zdoc_noface_title:I

    .line 16
    sget v3, Lcom/zoloz/android/phone/zdoc/R$string;->zdoc_noface_msg:I

    goto :goto_2

    .line 17
    :cond_3
    sget v0, Lcom/zoloz/android/phone/zdoc/R$string;->zdoc_exposure_title:I

    .line 18
    sget v3, Lcom/zoloz/android/phone/zdoc/R$string;->zdoc_exposure_msg:I

    goto :goto_2

    .line 19
    :cond_4
    sget v0, Lcom/zoloz/android/phone/zdoc/R$string;->zdoc_blur_title:I

    .line 20
    sget v3, Lcom/zoloz/android/phone/zdoc/R$string;->zdoc_blur_msg:I

    goto :goto_2

    .line 21
    :cond_5
    sget v0, Lcom/zoloz/android/phone/zdoc/R$string;->zdoc_imperfect_title:I

    .line 22
    sget v3, Lcom/zoloz/android/phone/zdoc/R$string;->zdoc_imperfect_msg:I

    goto :goto_2

    .line 23
    :cond_6
    sget v0, Lcom/zoloz/android/phone/zdoc/R$string;->zdoc_no_document_title:I

    .line 24
    sget v3, Lcom/zoloz/android/phone/zdoc/R$string;->zdoc_no_document_msg:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :catch_0
    :goto_2
    iget-object v4, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mDialogHelper:Lzoloz/ap/com/toolkit/ui/DialogHelper;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 26
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget p1, Lcom/zoloz/android/phone/zdoc/R$string;->zdoc_dialog_retry:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment$6;

    invoke-direct {v8, p0}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment$6;-><init>(Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;)V

    sget p1, Lcom/zoloz/android/phone/zdoc/R$string;->zdoc_dialog_close:I

    .line 27
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment$7;

    invoke-direct {v10, p0}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment$7;-><init>(Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;)V

    .line 28
    invoke-virtual/range {v4 .. v10}, Lzoloz/ap/com/toolkit/ui/DialogHelper;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_3

    :cond_7
    const/4 p1, 0x0

    .line 29
    invoke-virtual {p0, p1}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->failQuit(Lcom/alipay/mobile/security/bio/service/BioUploadResult;)V

    :cond_8
    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x776c8db7 -> :sswitch_4
        -0x55af91e5 -> :sswitch_3
        -0x442692f9 -> :sswitch_2
        0x1f2867 -> :sswitch_1
        0x27c051d9 -> :sswitch_0
    .end sparse-switch
.end method

.method private handleNetWorkError()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mRecordManager:Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;

    const/4 v1, 0x0

    const/16 v2, 0x3e7

    invoke-virtual {v0, v1, v1, v2}, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;->recordUploadEnd(III)V

    .line 2
    sget-object v0, Lcom/zoloz/android/phone/zdoc/ui/UIState;->UPLOAD_END_FAIL:Lcom/zoloz/android/phone/zdoc/ui/UIState;

    invoke-virtual {p0, v0}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->updateUI(Lcom/zoloz/android/phone/zdoc/ui/UIState;)V

    .line 3
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mRecordManager:Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;

    const-string v1, "network_error"

    invoke-virtual {v0, v1}, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;->recordAlertAppear(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mDialogHelper:Lzoloz/ap/com/toolkit/ui/DialogHelper;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lzoloz/ap/com/toolkit/ui/DialogHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Lcom/zoloz/android/phone/zdoc/ui/UIState;->ALERT:Lcom/zoloz/android/phone/zdoc/ui/UIState;

    invoke-virtual {p0, v0}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->updateUI(Lcom/zoloz/android/phone/zdoc/ui/UIState;)V

    .line 6
    iget-object v1, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mDialogHelper:Lzoloz/ap/com/toolkit/ui/DialogHelper;

    sget v0, Lcom/zoloz/android/phone/zdoc/R$string;->network_error_title:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/zoloz/android/phone/zdoc/R$string;->network_error_msg:I

    .line 7
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v0, Lcom/zoloz/android/phone/zdoc/R$string;->network_error_retry:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment$9;

    invoke-direct {v5, p0}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment$9;-><init>(Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;)V

    sget v0, Lcom/zoloz/android/phone/zdoc/R$string;->network_error_exit:I

    .line 8
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment$10;

    invoke-direct {v7, p0}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment$10;-><init>(Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;)V

    .line 9
    invoke-virtual/range {v1 .. v7}, Lzoloz/ap/com/toolkit/ui/DialogHelper;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private handleSuccContinue()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mDialogHelper:Lzoloz/ap/com/toolkit/ui/DialogHelper;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lzoloz/ap/com/toolkit/ui/DialogHelper;->dismissDialog()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mCurrentRetryTimes:I

    .line 4
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mRecordManager:Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;

    const/16 v1, 0x3ea

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v2, v1}, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;->recordUploadEnd(III)V

    .line 5
    sget-object v0, Lcom/zoloz/android/phone/zdoc/ui/UIState;->UPLOAD_END_SUCCESS:Lcom/zoloz/android/phone/zdoc/ui/UIState;

    invoke-virtual {p0, v0}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->updateUI(Lcom/zoloz/android/phone/zdoc/ui/UIState;)V

    .line 6
    iget v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mCurrentPageNumberIndex:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mCurrentPageNumberIndex:I

    .line 7
    iget v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mCurrentPageNumberIndex:I

    iget-object v1, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mZdocRemoteConfig:Lcom/zoloz/android/phone/zdoc/module/ZdocRemoteConfig;

    invoke-virtual {v1}, Lcom/zoloz/android/phone/zdoc/module/ZdocRemoteConfig;->getModules()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 8
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment$8;

    invoke-direct {v1, p0}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment$8;-><init>(Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method private initData()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "bio"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    iput-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "config"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/zoloz/android/phone/zdoc/module/ZdocRemoteConfig;

    iput-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mZdocRemoteConfig:Lcom/zoloz/android/phone/zdoc/module/ZdocRemoteConfig;

    .line 3
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mZdocRemoteConfig:Lcom/zoloz/android/phone/zdoc/module/ZdocRemoteConfig;

    if-nez v0, :cond_0

    nop

    :cond_0
    return-void
.end method

.method private initUpload()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mZdocRemoteConfig:Lcom/zoloz/android/phone/zdoc/module/ZdocRemoteConfig;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/zoloz/android/phone/zdoc/upload/UploadManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    iget-object v3, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mZdocRemoteConfig:Lcom/zoloz/android/phone/zdoc/module/ZdocRemoteConfig;

    invoke-direct {v0, v1, v2, v3}, Lcom/zoloz/android/phone/zdoc/upload/UploadManager;-><init>(Landroid/content/Context;Lcom/alipay/mobile/security/bio/service/BioAppDescription;Lcom/zoloz/android/phone/zdoc/module/ZdocRemoteConfig;)V

    iput-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mUploadManager:Lcom/zoloz/android/phone/zdoc/upload/UploadManager;

    .line 3
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mUploadManager:Lcom/zoloz/android/phone/zdoc/upload/UploadManager;

    invoke-virtual {v0}, Lcom/zoloz/android/phone/zdoc/upload/UploadManager;->init()V

    .line 4
    invoke-static {}, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getCurrentInstance()Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "null == BioServiceManager.getCurrentInstance()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    .line 7
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getCurrentInstance()Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/security/bio/service/BioUploadService;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getBioService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/bio/service/BioUploadService;

    iput-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mBioUploadService:Lcom/alipay/mobile/security/bio/service/BioUploadService;

    .line 8
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mBioUploadService:Lcom/alipay/mobile/security/bio/service/BioUploadService;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/service/BioUploadService;->clearUp()V

    .line 9
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mBioUploadService:Lcom/alipay/mobile/security/bio/service/BioUploadService;

    new-instance v1, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment$5;

    invoke-direct {v1, p0}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment$5;-><init>(Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/bio/service/BioUploadService;->addCallBack(Lcom/alipay/mobile/security/bio/service/BioUploadCallBack;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private interrupt()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mDialogHelper:Lzoloz/ap/com/toolkit/ui/DialogHelper;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lzoloz/ap/com/toolkit/ui/DialogHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mRecordManager:Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;

    const-string v1, "active_exit"

    invoke-virtual {v0, v1}, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;->recordAlertAppear(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mCurrentState:Lcom/zoloz/android/phone/zdoc/ui/UIState;

    .line 4
    sget-object v1, Lcom/zoloz/android/phone/zdoc/ui/UIState;->ALERT:Lcom/zoloz/android/phone/zdoc/ui/UIState;

    invoke-virtual {p0, v1}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->updateUI(Lcom/zoloz/android/phone/zdoc/ui/UIState;)V

    .line 5
    iget-object v2, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mDialogHelper:Lzoloz/ap/com/toolkit/ui/DialogHelper;

    sget v1, Lcom/zoloz/android/phone/zdoc/R$string;->zdoc_user_cancel_title:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v1, Lcom/zoloz/android/phone/zdoc/R$string;->zdoc_user_cancel_msg:I

    .line 6
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v1, Lcom/zoloz/android/phone/zdoc/R$string;->zdoc_user_cancel_stay:I

    .line 7
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment$12;

    invoke-direct {v6, p0, v0}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment$12;-><init>(Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;Lcom/zoloz/android/phone/zdoc/ui/UIState;)V

    sget v0, Lcom/zoloz/android/phone/zdoc/R$string;->zdoc_user_cancel_quit:I

    .line 8
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment$13;

    invoke-direct {v8, p0}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment$13;-><init>(Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;)V

    .line 9
    invoke-virtual/range {v2 .. v8}, Lzoloz/ap/com/toolkit/ui/DialogHelper;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected adjustPreview(DD)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mCameraSurfaceView:Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mPhotoImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mCameraSurfaceView:Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getWidth()I

    move-result v2

    .line 5
    iget-object v3, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mCameraSurfaceView:Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;

    invoke-virtual {v3}, Landroid/view/SurfaceView;->getHeight()I

    move-result v3

    int-to-double v4, v2

    .line 6
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, p1

    mul-double v4, v4, p3

    double-to-int v4, v4

    if-lt v4, v3, :cond_0

    .line 7
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 8
    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_0
    int-to-double v3, v3

    .line 9
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, p3

    mul-double v3, v3, p1

    double-to-int p1, v3

    if-lt p1, v2, :cond_1

    .line 10
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 11
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 12
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mCameraSurfaceView:Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mPhotoImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method protected alertCameraNoPermissionDialog(Lcom/zoloz/android/phone/zdoc/fragment/PermissionDialogEvent;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mRecordManager:Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;->recordAuthCheck(I)V

    .line 2
    iget-object v2, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mDialogHelper:Lzoloz/ap/com/toolkit/ui/DialogHelper;

    if-eqz v2, :cond_0

    .line 3
    sget v0, Lcom/zoloz/android/phone/zdoc/R$string;->zdoc_camera_permission_title:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v0, Lcom/zoloz/android/phone/zdoc/R$string;->zdoc_camera_permission_msg:I

    .line 4
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v0, Lcom/zoloz/android/phone/zdoc/R$string;->zdoc_camera_permission_settings:I

    .line 5
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment$3;

    invoke-direct {v6, p0, p1}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment$3;-><init>(Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;Lcom/zoloz/android/phone/zdoc/fragment/PermissionDialogEvent;)V

    sget p1, Lcom/zoloz/android/phone/zdoc/R$string;->zdoc_camera_permission_not_allow:I

    .line 6
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment$4;

    invoke-direct {v8, p0}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment$4;-><init>(Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;)V

    .line 7
    invoke-virtual/range {v2 .. v8}, Lzoloz/ap/com/toolkit/ui/DialogHelper;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_0
    return-void
.end method

.method protected alertSystemError()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mDialogHelper:Lzoloz/ap/com/toolkit/ui/DialogHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lzoloz/ap/com/toolkit/ui/DialogHelper;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mRecordManager:Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;

    const-string v1, "systemException_error"

    invoke-virtual {v0, v1}, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;->recordAlertAppear(Ljava/lang/String;)V

    .line 3
    iget-object v2, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mDialogHelper:Lzoloz/ap/com/toolkit/ui/DialogHelper;

    sget v0, Lcom/zoloz/android/phone/zdoc/R$string;->system_error_title:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v0, Lcom/zoloz/android/phone/zdoc/R$string;->system_error_msg:I

    .line 4
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v0, Lcom/zoloz/android/phone/zdoc/R$string;->system_error_got_it:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment$1;

    invoke-direct {v6, p0}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment$1;-><init>(Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 5
    invoke-virtual/range {v2 .. v8}, Lzoloz/ap/com/toolkit/ui/DialogHelper;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_0
    return-void
.end method

.method protected createTGFrame(Lcom/alipay/zoloz/hardware/camera/CameraData;)Lcom/alipay/zoloz/toyger/algorithm/TGFrame;
    .locals 2

    .line 1
    new-instance v0, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;

    invoke-direct {v0}, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/alipay/zoloz/hardware/camera/CameraData;->getColorData()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->data:[B

    .line 3
    invoke-virtual {p1}, Lcom/alipay/zoloz/hardware/camera/CameraData;->getColorWidth()I

    move-result v1

    iput v1, v0, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->width:I

    .line 4
    invoke-virtual {p1}, Lcom/alipay/zoloz/hardware/camera/CameraData;->getColorHeight()I

    move-result p1

    iput p1, v0, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->height:I

    const/4 p1, 0x0

    .line 5
    iput p1, v0, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->frameMode:I

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->getCameraImpl(Landroid/content/Context;)Lcom/alipay/zoloz/hardware/camera/ICameraInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/alipay/zoloz/hardware/camera/ICameraInterface;->getCameraViewRotation()I

    move-result p1

    iput p1, v0, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->rotation:I

    return-object v0
.end method

.method public failQuit(Lcom/alipay/mobile/security/bio/service/BioUploadResult;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mRecordManager:Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;

    const-string v1, "overthreshold_error"

    invoke-virtual {v0, v1}, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;->recordAlertAppear(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mRecordManager:Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;

    invoke-virtual {v0}, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;->recordOverThreshold()V

    .line 3
    iget-object v1, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mDialogHelper:Lzoloz/ap/com/toolkit/ui/DialogHelper;

    if-eqz v1, :cond_0

    .line 4
    sget v0, Lcom/zoloz/android/phone/zdoc/R$string;->zdoc_retry_max_title:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/zoloz/android/phone/zdoc/R$string;->zdoc_retry_max_msg:I

    .line 5
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v0, Lcom/zoloz/android/phone/zdoc/R$string;->zdoc_retry_max_got_it:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment$11;

    invoke-direct {v5, p0, p1}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment$11;-><init>(Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;Lcom/alipay/mobile/security/bio/service/BioUploadResult;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 6
    invoke-virtual/range {v1 .. v7}, Lzoloz/ap/com/toolkit/ui/DialogHelper;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_0
    return-void
.end method

.method protected formatConfigs()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mZdocRemoteConfig:Lcom/zoloz/android/phone/zdoc/module/ZdocRemoteConfig;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/zoloz/android/phone/zdoc/module/ZdocRemoteConfig;->getModules()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mCurrentPageNumberIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zoloz/android/phone/zdoc/module/DocModule;

    .line 3
    invoke-virtual {v0}, Lcom/zoloz/android/phone/zdoc/module/DocModule;->getColl()Lcom/zoloz/android/phone/zdoc/module/CollModule;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/zoloz/android/phone/zdoc/module/CollModule;->getUiType()I

    move-result v1

    iput v1, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mUiType:I

    .line 5
    invoke-virtual {v0}, Lcom/zoloz/android/phone/zdoc/module/CollModule;->getPageNo()I

    move-result v1

    iput v1, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mCurrentPageNumber:I

    const/4 v1, 0x0

    .line 6
    iput v1, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mCurrentRetryTimes:I

    .line 7
    invoke-virtual {v0}, Lcom/zoloz/android/phone/zdoc/module/CollModule;->getRetryLimit()I

    move-result v0

    iput v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mMaxRetryTimes:I

    .line 8
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mRecordManager:Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;

    iget v1, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mCurrentPageNumber:I

    invoke-virtual {v0, v1}, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;->updatePageNumber(I)V

    return-void
.end method

.method protected getCurrentDeviceSetting()Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;
    .locals 2

    .line 1
    new-instance v0, Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;

    invoke-direct {v0}, Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;-><init>()V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;->setCameraAuto(Z)V

    .line 3
    invoke-direct {p0}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->findBackCameraId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;->setCameraID(I)V

    return-object v0
.end method

.method protected getLayoutId()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget v1, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mUiType:I

    invoke-static {v0, v1}, Lcom/zoloz/android/phone/zdoc/ui/UIFacade;->getLayoutId(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method protected handleAlert(Lcom/zoloz/android/phone/zdoc/ui/UIState;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/zoloz/android/phone/zdoc/ui/UIState;->CAPTURE:Lcom/zoloz/android/phone/zdoc/ui/UIState;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mShowFrame:Z

    .line 3
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mRecordManager:Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;

    invoke-virtual {p1}, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;->recordBasicCheck()V

    :cond_0
    return-void
.end method

.method protected handleCapture()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mDialogHelper:Lzoloz/ap/com/toolkit/ui/DialogHelper;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lzoloz/ap/com/toolkit/ui/DialogHelper;->dismissDialog()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mPhotoImageView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mCameraSurfaceView:Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    return-void
.end method

.method protected handleUploading()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mDialogHelper:Lzoloz/ap/com/toolkit/ui/DialogHelper;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, ""

    .line 2
    invoke-virtual {v0, v4, v1, v2, v3}, Lzoloz/ap/com/toolkit/ui/DialogHelper;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;Z)V

    :cond_0
    return-void
.end method

.method protected handleUserConfirm()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mShowFrame:Z

    return-void
.end method

.method protected mappingToPic(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->getCameraImpl(Landroid/content/Context;)Lcom/alipay/zoloz/hardware/camera/ICameraInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/zoloz/hardware/camera/ICameraInterface;->getPreviewHeight()I

    move-result v2

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->getCameraImpl(Landroid/content/Context;)Lcom/alipay/zoloz/hardware/camera/ICameraInterface;

    move-result-object v3

    invoke-interface {v3}, Lcom/alipay/zoloz/hardware/camera/ICameraInterface;->getPreviewWidth()I

    move-result v3

    if-ge v2, v3, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v17, v3

    move v3, v2

    move/from16 v2, v17

    .line 3
    :goto_0
    iget-object v4, v0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mCameraSurfaceView:Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;

    invoke-virtual {v4}, Landroid/view/SurfaceView;->getHeight()I

    move-result v4

    .line 4
    iget-object v5, v0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mCameraSurfaceView:Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;

    invoke-virtual {v5}, Landroid/view/SurfaceView;->getWidth()I

    move-result v5

    int-to-float v6, v2

    int-to-float v7, v5

    div-float/2addr v6, v7

    .line 5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mappingToPic leftx ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "rightX ="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "leftY ="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "rightY ="

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "imagewidth ="

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "imageheight ="

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "screenwidth ="

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, "screenheight ="

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "ratioH ="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 6
    iget v0, v1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    mul-float v0, v0, v6

    float-to-int v0, v0

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 7
    iget v0, v1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    mul-float v0, v0, v6

    int-to-float v7, v3

    move-object/from16 v16, v15

    int-to-float v15, v4

    mul-float v15, v15, v6

    sub-float/2addr v7, v15

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v7, v15

    add-float/2addr v0, v7

    float-to-int v0, v0

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 8
    iget v0, v1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    mul-float v0, v0, v6

    float-to-int v0, v0

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 9
    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    mul-float v6, v6, v0

    add-float/2addr v6, v7

    float-to-int v0, v6

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v2, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-object v1
.end method

.method public onBackPressed()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->interrupt()V

    const/4 v0, 0x1

    return v0
.end method

.method protected onCameraInit()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mCameraSurfaceView:Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;

    invoke-virtual {v0, p0}, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->setCameraCallback(Lcom/alipay/zoloz/hardware/camera/ICameraCallback;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->getCameraImpl(Landroid/content/Context;)Lcom/alipay/zoloz/hardware/camera/ICameraInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mCameraInterface:Lcom/alipay/zoloz/hardware/camera/ICameraInterface;

    .line 3
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mCameraInterface:Lcom/alipay/zoloz/hardware/camera/ICameraInterface;

    invoke-interface {v0, p0}, Lcom/alipay/zoloz/hardware/camera/ICameraInterface;->setCallback(Lcom/alipay/zoloz/hardware/camera/ICameraCallback;)V

    .line 4
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mCameraInterface:Lcom/alipay/zoloz/hardware/camera/ICameraInterface;

    invoke-virtual {p0}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->getCurrentDeviceSetting()Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/zoloz/hardware/camera/ICameraInterface;->initCamera(Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;)V

    .line 5
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mCameraSurfaceView:Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 6
    sget-object v0, Lcom/zoloz/android/phone/zdoc/ui/UIState;->CAPTURE:Lcom/zoloz/android/phone/zdoc/ui/UIState;

    invoke-virtual {p0, v0}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->updateUI(Lcom/zoloz/android/phone/zdoc/ui/UIState;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-static {}, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getCurrentInstance()Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    move-result-object p1

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "null == BioServiceManager.getCurrentInstance()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->initData()V

    .line 6
    invoke-direct {p0}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->initUpload()V

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mCurrentPageNumberIndex:I

    .line 8
    new-instance p1, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;

    invoke-direct {p1}, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;-><init>()V

    iput-object p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mRecordManager:Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;

    .line 9
    invoke-virtual {p0}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->formatConfigs()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mCurrentPageNumberIndex:I

    .line 2
    iput v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mCurrentPageNumber:I

    .line 3
    iput v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mCurrentRetryTimes:I

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mContent:[B

    .line 5
    iput-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mKey:[B

    .line 6
    iget-object v1, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mMessageView:Lcom/zoloz/android/phone/zdoc/ui/IMessageView;

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v1}, Lcom/zoloz/android/phone/zdoc/ui/IMessageView;->clearClickListener()V

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mTitleBar:Lzoloz/ap/com/toolkit/ui/TitleBar;

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {v1, v0}, Lzoloz/ap/com/toolkit/ui/TitleBar;->setClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    :cond_1
    iget-object v1, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mDialogHelper:Lzoloz/ap/com/toolkit/ui/DialogHelper;

    if-eqz v1, :cond_2

    .line 11
    invoke-virtual {v1}, Lzoloz/ap/com/toolkit/ui/DialogHelper;->forceDismissDialog()V

    .line 12
    iget-object v1, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mDialogHelper:Lzoloz/ap/com/toolkit/ui/DialogHelper;

    invoke-virtual {v1}, Lzoloz/ap/com/toolkit/ui/DialogHelper;->release()V

    .line 13
    iput-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mDialogHelper:Lzoloz/ap/com/toolkit/ui/DialogHelper;

    .line 14
    :cond_2
    iget-object v1, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mCameraInterface:Lcom/alipay/zoloz/hardware/camera/ICameraInterface;

    if-eqz v1, :cond_3

    .line 15
    invoke-interface {v1}, Lcom/alipay/zoloz/hardware/camera/ICameraInterface;->releaseCamera()V

    .line 16
    :cond_3
    iget-object v1, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mUploadManager:Lcom/zoloz/android/phone/zdoc/upload/UploadManager;

    if-eqz v1, :cond_4

    .line 17
    iput-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mUploadManager:Lcom/zoloz/android/phone/zdoc/upload/UploadManager;

    .line 18
    :cond_4
    iput-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mBioUploadService:Lcom/alipay/mobile/security/bio/service/BioUploadService;

    .line 19
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mRecordManager:Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;

    if-eqz v0, :cond_5

    .line 20
    invoke-virtual {v0}, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;->destory()V

    .line 21
    :cond_5
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onError(I)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x4

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_1

    .line 1
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mCameraSurfaceView:Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;

    invoke-virtual {p1, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 2
    invoke-virtual {p0}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->alertSystemError()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mCameraSurfaceView:Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;

    invoke-virtual {p1, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 4
    invoke-virtual {p0}, Lcom/zoloz/android/phone/zdoc/fragment/BaseCameraPermissionFragment;->checkCameraPermission()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onInitView()V
    .locals 4

    .line 1
    new-instance v0, Lzoloz/ap/com/toolkit/ui/DialogHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lzoloz/ap/com/toolkit/ui/DialogHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mDialogHelper:Lzoloz/ap/com/toolkit/ui/DialogHelper;

    .line 2
    sget v0, Lcom/zoloz/android/phone/zdoc/R$id;->surface:I

    invoke-virtual {p0, v0}, Lcom/zoloz/android/phone/zdoc/fragment/BaseCameraPermissionFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;

    iput-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mCameraSurfaceView:Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;

    .line 3
    sget v0, Lcom/zoloz/android/phone/zdoc/R$id;->iv_photo:I

    invoke-virtual {p0, v0}, Lcom/zoloz/android/phone/zdoc/fragment/BaseCameraPermissionFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mPhotoImageView:Landroid/widget/ImageView;

    .line 4
    sget v0, Lcom/zoloz/android/phone/zdoc/R$id;->layout_titlebar:I

    invoke-virtual {p0, v0}, Lcom/zoloz/android/phone/zdoc/fragment/BaseCameraPermissionFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lzoloz/ap/com/toolkit/ui/TitleBar;

    iput-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mTitleBar:Lzoloz/ap/com/toolkit/ui/TitleBar;

    .line 5
    sget v0, Lcom/zoloz/android/phone/zdoc/R$id;->layout_message:I

    invoke-virtual {p0, v0}, Lcom/zoloz/android/phone/zdoc/fragment/BaseCameraPermissionFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zoloz/android/phone/zdoc/ui/IMessageView;

    iput-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mMessageView:Lcom/zoloz/android/phone/zdoc/ui/IMessageView;

    .line 6
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mMessageView:Lcom/zoloz/android/phone/zdoc/ui/IMessageView;

    sget-object v1, Lcom/zoloz/android/phone/zdoc/ui/UIState;->CAPTURE:Lcom/zoloz/android/phone/zdoc/ui/UIState;

    iget-object v2, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mZdocRemoteConfig:Lcom/zoloz/android/phone/zdoc/module/ZdocRemoteConfig;

    invoke-virtual {v2}, Lcom/zoloz/android/phone/zdoc/module/ZdocRemoteConfig;->getShowPowerByZoloz()I

    move-result v2

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/zoloz/android/phone/zdoc/ui/IMessageView;->updateUI(Lcom/zoloz/android/phone/zdoc/ui/UIState;II)V

    .line 7
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mTitleBar:Lzoloz/ap/com/toolkit/ui/TitleBar;

    new-instance v1, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment$14;

    invoke-direct {v1, p0}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment$14;-><init>(Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;)V

    invoke-virtual {v0, v1}, Lzoloz/ap/com/toolkit/ui/TitleBar;->setClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    sget v0, Lcom/zoloz/android/phone/zdoc/R$id;->layout_mask_view:I

    invoke-virtual {p0, v0}, Lcom/zoloz/android/phone/zdoc/fragment/BaseCameraPermissionFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;

    iput-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mDefaultMaskView:Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;

    .line 9
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mDefaultMaskView:Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 10
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mZdocRemoteConfig:Lcom/zoloz/android/phone/zdoc/module/ZdocRemoteConfig;

    if-nez v0, :cond_1

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->alertSystemError()V

    :cond_1
    return-void
.end method

.method public onPreviewFrame(Lcom/alipay/zoloz/hardware/camera/CameraData;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mShowFrame:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->createTGFrame(Lcom/alipay/zoloz/hardware/camera/CameraData;)Lcom/alipay/zoloz/toyger/algorithm/TGFrame;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->showPreviewImg(Lcom/alipay/zoloz/toyger/algorithm/TGFrame;)V

    .line 3
    iput-boolean v1, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mShowFrame:Z

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->needRecordImageSize:Z

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mRecordManager:Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;

    invoke-virtual {p1}, Lcom/alipay/zoloz/hardware/camera/CameraData;->getPreviewWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/alipay/zoloz/hardware/camera/CameraData;->getPreviewHeight()I

    move-result p1

    invoke-virtual {v0, v2, p1}, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;->recordImageSize(II)V

    .line 6
    iput-boolean v1, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->needRecordImageSize:Z

    :cond_1
    return-void
.end method

.method public onSurfaceChanged(DD)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v7, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment$2;

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment$2;-><init>(Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;DD)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSurfaceCreated()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mRecordManager:Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;->recordAuthCheck(I)V

    return-void
.end method

.method public onSurfaceDestroyed()V
    .locals 0

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mMessageView:Lcom/zoloz/android/phone/zdoc/ui/IMessageView;

    iget v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mUiType:I

    iget-object v1, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mCameraSurfaceView:Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;

    .line 2
    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mDefaultMaskView:Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;

    invoke-virtual {v2}, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;->getTipsBottomMargin()I

    move-result v2

    iget-object v3, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mDefaultMaskView:Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;

    .line 3
    invoke-virtual {v3}, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;->getInvisibleHeight()I

    move-result v3

    .line 4
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/zoloz/android/phone/zdoc/ui/IMessageView;->setUiLocation(IIII)V

    :cond_0
    return-void
.end method

.method public responseWithCode(ILcom/alipay/mobile/security/bio/service/BioUploadResult;)V
    .locals 2

    const/16 v0, 0xca

    if-eq p1, v0, :cond_0

    const/16 v0, 0x12d

    if-ne p1, v0, :cond_1

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mRecordManager:Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;->recordEndScan(Z)V

    .line 2
    :cond_1
    new-instance v0, Lcom/zoloz/android/phone/zdoc/cardmanager/ZdocResponse;

    invoke-direct {v0}, Lcom/zoloz/android/phone/zdoc/cardmanager/ZdocResponse;-><init>()V

    .line 3
    iput p1, v0, Lcom/zoloz/android/phone/zdoc/cardmanager/ZdocResponse;->retCode:I

    .line 4
    iput-object p2, v0, Lcom/zoloz/android/phone/zdoc/cardmanager/ZdocResponse;->bioUploadResult:Lcom/alipay/mobile/security/bio/service/BioUploadResult;

    .line 5
    invoke-static {}, Lcom/zoloz/android/phone/zdoc/cardmanager/FalconTaskManager;->getInstance()Lcom/zoloz/android/phone/zdoc/cardmanager/FalconTaskManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/zoloz/android/phone/zdoc/cardmanager/FalconTaskManager;->transResult(Lcom/zoloz/android/phone/zdoc/cardmanager/ZdocResponse;)V

    return-void
.end method

.method protected showPreviewImg(Lcom/alipay/zoloz/toyger/algorithm/TGFrame;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mPhotoImageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2
    iget-object v0, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->data:[B

    iget v1, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->width:I

    iget v2, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->height:I

    iget v3, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->frameMode:I

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/zoloz/toyger/blob/BitmapHelper;->bytes2Bitmap([BIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3
    iget p1, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->rotation:I

    invoke-static {v0, p1}, Lcom/alipay/zoloz/toyger/blob/BitmapHelper;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f4ccccd    # 0.8f

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v1

    float-to-int v1, v2

    invoke-static {p1, v0, v1}, Lcom/alipay/zoloz/toyger/blob/BitmapHelper;->resize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mPhotoImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 6
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mPhotoImageView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7
    :catch_0
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mRecordManager:Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;

    const-string v0, "zdoc_out_of_memory"

    invoke-virtual {p1, v0}, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;->record(Ljava/lang/String;)V

    .line 8
    invoke-static {}, Ljava/lang/System;->gc()V

    :cond_0
    :goto_0
    return-void
.end method

.method protected upLoadImage()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mRecordManager:Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;

    iget-object v1, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mContent:[B

    array-length v1, v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;->recordUploadStart(J)V

    .line 2
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mUploadManager:Lcom/zoloz/android/phone/zdoc/upload/UploadManager;

    if-eqz v0, :cond_0

    .line 3
    iget v1, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mCurrentRetryTimes:I

    invoke-virtual {v0, v1}, Lcom/zoloz/android/phone/zdoc/upload/UploadManager;->setRetryTimes(I)V

    .line 4
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mUploadManager:Lcom/zoloz/android/phone/zdoc/upload/UploadManager;

    iget-object v1, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mContent:[B

    iget-object v2, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mKey:[B

    iget-boolean v3, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mIsUTF8:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/zoloz/android/phone/zdoc/upload/UploadManager;->upload([B[BZ)V

    :cond_0
    return-void
.end method

.method protected updateUI(Lcom/zoloz/android/phone/zdoc/ui/UIState;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment$15;->$SwitchMap$com$zoloz$android$phone$zdoc$ui$UIState:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2
    :pswitch_0
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mCurrentState:Lcom/zoloz/android/phone/zdoc/ui/UIState;

    invoke-virtual {p0, v0}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->handleAlert(Lcom/zoloz/android/phone/zdoc/ui/UIState;)V

    goto :goto_0

    .line 3
    :pswitch_1
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mDialogHelper:Lzoloz/ap/com/toolkit/ui/DialogHelper;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lzoloz/ap/com/toolkit/ui/DialogHelper;->dismissDialog()V

    goto :goto_0

    .line 5
    :pswitch_2
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mDialogHelper:Lzoloz/ap/com/toolkit/ui/DialogHelper;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Lzoloz/ap/com/toolkit/ui/DialogHelper;->showSuccessDialog(ZLandroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0

    .line 7
    :pswitch_3
    invoke-virtual {p0}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->handleUploading()V

    goto :goto_0

    .line 8
    :pswitch_4
    invoke-virtual {p0}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->handleUserConfirm()V

    goto :goto_0

    .line 9
    :pswitch_5
    invoke-virtual {p0}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->handleCapture()V

    .line 10
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mCurrentState:Lcom/zoloz/android/phone/zdoc/ui/UIState;

    .line 11
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mZdocRemoteConfig:Lcom/zoloz/android/phone/zdoc/module/ZdocRemoteConfig;

    if-eqz v0, :cond_1

    .line 12
    iget-object v1, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mMessageView:Lcom/zoloz/android/phone/zdoc/ui/IMessageView;

    invoke-virtual {v0}, Lcom/zoloz/android/phone/zdoc/module/ZdocRemoteConfig;->getShowPowerByZoloz()I

    move-result v0

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v0, v2}, Lcom/zoloz/android/phone/zdoc/ui/IMessageView;->updateUI(Lcom/zoloz/android/phone/zdoc/ui/UIState;II)V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
