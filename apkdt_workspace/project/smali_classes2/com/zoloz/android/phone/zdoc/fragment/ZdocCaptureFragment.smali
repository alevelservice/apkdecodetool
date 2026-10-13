.class public Lcom/zoloz/android/phone/zdoc/fragment/ZdocCaptureFragment;
.super Lcom/zoloz/android/phone/zdoc/fragment/BaseDocWithNineCaptureFragment;
.source "ZdocCaptureFragment.java"


# instance fields
.field private isCaptured:Z

.field private mTGFrame:Lcom/alipay/zoloz/toyger/algorithm/TGFrame;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocWithNineCaptureFragment;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocCaptureFragment;->isCaptured:Z

    return-void
.end method

.method static synthetic access$002(Lcom/zoloz/android/phone/zdoc/fragment/ZdocCaptureFragment;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocCaptureFragment;->isCaptured:Z

    return p1
.end method


# virtual methods
.method protected handleCapture()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->handleCapture()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocCaptureFragment;->isCaptured:Z

    .line 3
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mPhotoImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method protected initView()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/zoloz/android/phone/zdoc/fragment/BaseCameraPermissionFragment;->initView()V

    .line 2
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mMessageView:Lcom/zoloz/android/phone/zdoc/ui/IMessageView;

    new-instance v1, Lcom/zoloz/android/phone/zdoc/fragment/ZdocCaptureFragment$1;

    invoke-direct {v1, p0}, Lcom/zoloz/android/phone/zdoc/fragment/ZdocCaptureFragment$1;-><init>(Lcom/zoloz/android/phone/zdoc/fragment/ZdocCaptureFragment;)V

    invoke-virtual {v0, v1}, Lcom/zoloz/android/phone/zdoc/ui/IMessageView;->setOnTakePhotoListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mMessageView:Lcom/zoloz/android/phone/zdoc/ui/IMessageView;

    new-instance v1, Lcom/zoloz/android/phone/zdoc/fragment/ZdocCaptureFragment$2;

    invoke-direct {v1, p0}, Lcom/zoloz/android/phone/zdoc/fragment/ZdocCaptureFragment$2;-><init>(Lcom/zoloz/android/phone/zdoc/fragment/ZdocCaptureFragment;)V

    invoke-virtual {v0, v1}, Lcom/zoloz/android/phone/zdoc/ui/IMessageView;->setOnConfirmListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mMessageView:Lcom/zoloz/android/phone/zdoc/ui/IMessageView;

    new-instance v1, Lcom/zoloz/android/phone/zdoc/fragment/ZdocCaptureFragment$3;

    invoke-direct {v1, p0}, Lcom/zoloz/android/phone/zdoc/fragment/ZdocCaptureFragment$3;-><init>(Lcom/zoloz/android/phone/zdoc/fragment/ZdocCaptureFragment;)V

    invoke-virtual {v0, v1}, Lcom/zoloz/android/phone/zdoc/ui/IMessageView;->setOnReTakePhotoListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocWithNineCaptureFragment;->onDestroy()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocCaptureFragment;->mTGFrame:Lcom/alipay/zoloz/toyger/algorithm/TGFrame;

    return-void
.end method

.method public onPreviewFrame(Lcom/alipay/zoloz/hardware/camera/CameraData;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocWithNineCaptureFragment;->onPreviewFrame(Lcom/alipay/zoloz/hardware/camera/CameraData;)V

    .line 2
    iget-boolean v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocCaptureFragment;->isCaptured:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->createTGFrame(Lcom/alipay/zoloz/hardware/camera/CameraData;)Lcom/alipay/zoloz/toyger/algorithm/TGFrame;

    move-result-object p1

    iput-object p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocCaptureFragment;->mTGFrame:Lcom/alipay/zoloz/toyger/algorithm/TGFrame;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocCaptureFragment;->isCaptured:Z

    .line 5
    sget-object p1, Lcom/zoloz/android/phone/zdoc/ui/UIState;->USER_CONFIRM:Lcom/zoloz/android/phone/zdoc/ui/UIState;

    invoke-virtual {p0, p1}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->updateUI(Lcom/zoloz/android/phone/zdoc/ui/UIState;)V

    :cond_0
    return-void
.end method

.method public onRestart()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/zoloz/android/phone/zdoc/fragment/BaseFragment;->onRestart()V

    .line 2
    invoke-virtual {p0}, Lcom/zoloz/android/phone/zdoc/fragment/BaseCameraPermissionFragment;->hasCameraPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mDialogHelper:Lzoloz/ap/com/toolkit/ui/DialogHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lzoloz/ap/com/toolkit/ui/DialogHelper;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mCurrentState:Lcom/zoloz/android/phone/zdoc/ui/UIState;

    sget-object v1, Lcom/zoloz/android/phone/zdoc/ui/UIState;->CAPTURE:Lcom/zoloz/android/phone/zdoc/ui/UIState;

    if-ne v0, v1, :cond_0

    .line 4
    invoke-virtual {p0, v1}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->updateUI(Lcom/zoloz/android/phone/zdoc/ui/UIState;)V

    :cond_0
    return-void
.end method

.method protected upLoadImage()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocCaptureFragment;->mTGFrame:Lcom/alipay/zoloz/toyger/algorithm/TGFrame;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/alipay/zoloz/toyger/doc/ToygerDocBlobConfig;

    invoke-direct {v0}, Lcom/alipay/zoloz/toyger/doc/ToygerDocBlobConfig;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mZdocRemoteConfig:Lcom/zoloz/android/phone/zdoc/module/ZdocRemoteConfig;

    invoke-virtual {v1}, Lcom/zoloz/android/phone/zdoc/module/ZdocRemoteConfig;->getRatio()F

    move-result v1

    iput v1, v0, Lcom/alipay/zoloz/toyger/doc/ToygerDocBlobConfig;->ratio:F

    .line 4
    iget v1, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mCurrentPageNumber:I

    iput v1, v0, Lcom/alipay/zoloz/toyger/doc/ToygerDocBlobConfig;->pageNo:I

    .line 5
    iget-object v1, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mUploadManager:Lcom/zoloz/android/phone/zdoc/upload/UploadManager;

    invoke-virtual {v1}, Lcom/zoloz/android/phone/zdoc/upload/UploadManager;->getmPublicKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/zoloz/toyger/algorithm/ToygerBlobConfig;->pubkey:Ljava/lang/String;

    .line 6
    iget-object v1, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mZdocRemoteConfig:Lcom/zoloz/android/phone/zdoc/module/ZdocRemoteConfig;

    invoke-virtual {v1}, Lcom/zoloz/android/phone/zdoc/module/ZdocRemoteConfig;->getModules()Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mCurrentPageNumberIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zoloz/android/phone/zdoc/module/DocModule;

    invoke-virtual {v1}, Lcom/zoloz/android/phone/zdoc/module/DocModule;->getColl()Lcom/zoloz/android/phone/zdoc/module/CollModule;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/zoloz/android/phone/zdoc/module/CollModule;->getDocType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/zoloz/toyger/doc/ToygerDocBlobConfig;->docType:Ljava/lang/String;

    .line 8
    iget-object v1, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocCaptureFragment;->mTGFrame:Lcom/alipay/zoloz/toyger/algorithm/TGFrame;

    iget-object v2, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mDefaultMaskView:Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;

    .line 9
    invoke-virtual {v2}, Lcom/zoloz/android/phone/zdoc/ui/BaseMaskView;->getDocFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mappingToPic(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v2

    .line 10
    invoke-static {v1, v0, v2}, Lcom/alipay/zoloz/toyger/doc/ToygerDocService;->generateDocBlob(Lcom/alipay/zoloz/toyger/algorithm/TGFrame;Lcom/alipay/zoloz/toyger/doc/ToygerDocBlobConfig;Landroid/graphics/Rect;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "content"

    .line 11
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mContent:[B

    const-string v1, "key"

    .line 12
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mKey:[B

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mIsUTF8:Z

    .line 14
    :cond_0
    invoke-super {p0}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocWithNineCaptureFragment;->upLoadImage()V

    return-void
.end method
