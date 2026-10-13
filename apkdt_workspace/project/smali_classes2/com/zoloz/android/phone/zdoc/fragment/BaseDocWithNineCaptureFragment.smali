.class public Lcom/zoloz/android/phone/zdoc/fragment/BaseDocWithNineCaptureFragment;
.super Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;
.source "BaseDocWithNineCaptureFragment.java"


# instance fields
.field private isCameraCanUsed:Z

.field private isGettingPreviewImg:Z

.field private mDocMonitorFrameManager:Lcom/zoloz/android/phone/zdoc/service/DocMonitorFrameManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocWithNineCaptureFragment;->isGettingPreviewImg:Z

    .line 3
    iput-boolean v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocWithNineCaptureFragment;->isCameraCanUsed:Z

    return-void
.end method

.method static synthetic access$000(Lcom/zoloz/android/phone/zdoc/fragment/BaseDocWithNineCaptureFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocWithNineCaptureFragment;->isGettingPreviewImg:Z

    return p0
.end method

.method static synthetic access$002(Lcom/zoloz/android/phone/zdoc/fragment/BaseDocWithNineCaptureFragment;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocWithNineCaptureFragment;->isGettingPreviewImg:Z

    return p1
.end method

.method private initDocMonitorManager()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocWithNineCaptureFragment;->mDocMonitorFrameManager:Lcom/zoloz/android/phone/zdoc/service/DocMonitorFrameManager;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/zoloz/android/phone/zdoc/service/DocMonitorFrameManager;

    iget-object v1, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mZdocRemoteConfig:Lcom/zoloz/android/phone/zdoc/module/ZdocRemoteConfig;

    iget-object v2, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mUploadManager:Lcom/zoloz/android/phone/zdoc/upload/UploadManager;

    invoke-virtual {v2}, Lcom/zoloz/android/phone/zdoc/upload/UploadManager;->getPublicKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/zoloz/android/phone/zdoc/service/DocMonitorFrameManager;-><init>(Lcom/zoloz/android/phone/zdoc/module/ZdocRemoteConfig;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocWithNineCaptureFragment;->mDocMonitorFrameManager:Lcom/zoloz/android/phone/zdoc/service/DocMonitorFrameManager;

    .line 3
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocWithNineCaptureFragment;->mDocMonitorFrameManager:Lcom/zoloz/android/phone/zdoc/service/DocMonitorFrameManager;

    new-instance v1, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocWithNineCaptureFragment$1;

    invoke-direct {v1, p0}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocWithNineCaptureFragment$1;-><init>(Lcom/zoloz/android/phone/zdoc/fragment/BaseDocWithNineCaptureFragment;)V

    invoke-virtual {v0, v1}, Lcom/zoloz/android/phone/zdoc/service/DocMonitorFrameManager;->setTimerTask(Lcom/zoloz/android/phone/zdoc/service/IMonitorCallback;)V

    :cond_0
    return-void
.end method

.method private uploadMonitorFrame()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocWithNineCaptureFragment;->mDocMonitorFrameManager:Lcom/zoloz/android/phone/zdoc/service/DocMonitorFrameManager;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/zoloz/android/phone/zdoc/service/DocMonitorFrameManager;->getMonitorBlob()[B

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocWithNineCaptureFragment;->mDocMonitorFrameManager:Lcom/zoloz/android/phone/zdoc/service/DocMonitorFrameManager;

    invoke-virtual {v1}, Lcom/zoloz/android/phone/zdoc/service/DocMonitorFrameManager;->getKey()[B

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocWithNineCaptureFragment;->mDocMonitorFrameManager:Lcom/zoloz/android/phone/zdoc/service/DocMonitorFrameManager;

    invoke-virtual {v2}, Lcom/zoloz/android/phone/zdoc/service/DocMonitorFrameManager;->isUTF8()Z

    move-result v2

    if-eqz v0, :cond_0

    .line 5
    iget-object v3, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mUploadManager:Lcom/zoloz/android/phone/zdoc/upload/UploadManager;

    invoke-virtual {v3, v0, v1, v2}, Lcom/zoloz/android/phone/zdoc/upload/UploadManager;->uploadNineShoot([B[BZ)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected handleUploading()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocWithNineCaptureFragment;->mDocMonitorFrameManager:Lcom/zoloz/android/phone/zdoc/service/DocMonitorFrameManager;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/zoloz/android/phone/zdoc/service/DocMonitorFrameManager;->resetCurrentFrameNummer()V

    .line 3
    :cond_0
    invoke-super {p0}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->handleUploading()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mUploadManager:Lcom/zoloz/android/phone/zdoc/upload/UploadManager;

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mZdocRemoteConfig:Lcom/zoloz/android/phone/zdoc/module/ZdocRemoteConfig;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/zoloz/android/phone/zdoc/module/ZdocRemoteConfig;->getUploadMonitorPic()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 5
    invoke-direct {p0}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocWithNineCaptureFragment;->initDocMonitorManager()V

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocWithNineCaptureFragment;->mDocMonitorFrameManager:Lcom/zoloz/android/phone/zdoc/service/DocMonitorFrameManager;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/zoloz/android/phone/zdoc/service/DocMonitorFrameManager;->destroy()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocWithNineCaptureFragment;->mDocMonitorFrameManager:Lcom/zoloz/android/phone/zdoc/service/DocMonitorFrameManager;

    :cond_0
    return-void
.end method

.method public onPreviewFrame(Lcom/alipay/zoloz/hardware/camera/CameraData;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->onPreviewFrame(Lcom/alipay/zoloz/hardware/camera/CameraData;)V

    .line 2
    iget-boolean v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocWithNineCaptureFragment;->isGettingPreviewImg:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocWithNineCaptureFragment;->mDocMonitorFrameManager:Lcom/zoloz/android/phone/zdoc/service/DocMonitorFrameManager;

    invoke-virtual {p0, p1}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->createTGFrame(Lcom/alipay/zoloz/hardware/camera/CameraData;)Lcom/alipay/zoloz/toyger/algorithm/TGFrame;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/zoloz/android/phone/zdoc/service/DocMonitorFrameManager;->addMonitorFrame(Lcom/alipay/zoloz/toyger/algorithm/TGFrame;)V

    .line 4
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocWithNineCaptureFragment;->mDocMonitorFrameManager:Lcom/zoloz/android/phone/zdoc/service/DocMonitorFrameManager;

    invoke-virtual {p1}, Lcom/zoloz/android/phone/zdoc/service/DocMonitorFrameManager;->updateCurrentFrameNumber()V

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocWithNineCaptureFragment;->isGettingPreviewImg:Z

    :cond_0
    return-void
.end method

.method public responseWithCode(ILcom/alipay/mobile/security/bio/service/BioUploadResult;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocWithNineCaptureFragment;->uploadMonitorFrame()V

    .line 2
    invoke-super {p0, p1, p2}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->responseWithCode(ILcom/alipay/mobile/security/bio/service/BioUploadResult;)V

    return-void
.end method

.method protected upLoadImage()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->upLoadImage()V

    .line 2
    invoke-direct {p0}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocWithNineCaptureFragment;->uploadMonitorFrame()V

    return-void
.end method
