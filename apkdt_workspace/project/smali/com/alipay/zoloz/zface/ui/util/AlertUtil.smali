.class public Lcom/alipay/zoloz/zface/ui/util/AlertUtil;
.super Ljava/lang/Object;
.source "AlertUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/zoloz/zface/ui/util/AlertUtil$AlertClickEvents;
    }
.end annotation


# instance fields
.field private isAlert:Z

.field private mActivity:Landroid/app/Activity;

.field private mAlertClickEvents:Lcom/alipay/zoloz/zface/ui/util/AlertUtil$AlertClickEvents;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/alipay/zoloz/zface/ui/util/AlertUtil$AlertClickEvents;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/alipay/zoloz/zface/ui/util/AlertUtil;->isAlert:Z

    .line 3
    iput-object p1, p0, Lcom/alipay/zoloz/zface/ui/util/AlertUtil;->mActivity:Landroid/app/Activity;

    .line 4
    iput-object p2, p0, Lcom/alipay/zoloz/zface/ui/util/AlertUtil;->mAlertClickEvents:Lcom/alipay/zoloz/zface/ui/util/AlertUtil$AlertClickEvents;

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil;->record(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/alipay/zoloz/zface/ui/util/AlertUtil;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/alipay/zoloz/zface/ui/util/AlertUtil;->isAlert:Z

    return p1
.end method

.method static synthetic access$200(Lcom/alipay/zoloz/zface/ui/util/AlertUtil;)Lcom/alipay/zoloz/zface/ui/util/AlertUtil$AlertClickEvents;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/alipay/zoloz/zface/ui/util/AlertUtil;->mAlertClickEvents:Lcom/alipay/zoloz/zface/ui/util/AlertUtil$AlertClickEvents;

    return-object p0
.end method

.method private getString(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alipay/zoloz/zface/ui/util/AlertUtil;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static record(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    .line 1
    invoke-static {p0, p1, v0}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil;->record(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static record(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

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

    .line 4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "reason"

    .line 5
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "choose"

    .line 7
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0, p0, v1}, Lcom/alipay/zoloz/zface/services/ZFaceRecordService;->write(Ljava/lang/String;Ljava/util/Map;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1
    invoke-virtual/range {v0 .. v7}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
    .locals 10

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    .line 2
    invoke-virtual/range {v0 .. v9}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;ZLzoloz/ap/com/toolkit/ui/DialogCallback;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;ZLzoloz/ap/com/toolkit/ui/DialogCallback;)Landroid/app/Dialog;
    .locals 2

    .line 3
    iget-boolean v0, p0, Lcom/alipay/zoloz/zface/ui/util/AlertUtil;->isAlert:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/alipay/zoloz/zface/ui/util/AlertUtil;->isAlert:Z

    .line 5
    iget-object v0, p0, Lcom/alipay/zoloz/zface/ui/util/AlertUtil;->mAlertClickEvents:Lcom/alipay/zoloz/zface/ui/util/AlertUtil$AlertClickEvents;

    invoke-interface {v0}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil$AlertClickEvents;->showFrame()V

    .line 6
    iget-object v0, p0, Lcom/alipay/zoloz/zface/ui/util/AlertUtil;->mAlertClickEvents:Lcom/alipay/zoloz/zface/ui/util/AlertUtil$AlertClickEvents;

    invoke-interface {v0}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil$AlertClickEvents;->stopProcess()V

    .line 7
    iget-object v0, p0, Lcom/alipay/zoloz/zface/ui/util/AlertUtil;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "AlertAppear"

    .line 8
    invoke-static {v0, p1}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil;->record(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    new-instance v0, Lzoloz/ap/com/toolkit/ui/GenenalDialog$Builder;

    iget-object v1, p0, Lcom/alipay/zoloz/zface/ui/util/AlertUtil;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lzoloz/ap/com/toolkit/ui/GenenalDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 10
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 11
    invoke-virtual {v0, p2}, Lzoloz/ap/com/toolkit/ui/GenenalDialog$Builder;->setTitle(Ljava/lang/String;)Lzoloz/ap/com/toolkit/ui/GenenalDialog$Builder;

    .line 12
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 13
    invoke-virtual {v0, p3}, Lzoloz/ap/com/toolkit/ui/GenenalDialog$Builder;->setMessage(Ljava/lang/String;)Lzoloz/ap/com/toolkit/ui/GenenalDialog$Builder;

    .line 14
    :cond_2
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 15
    new-instance p2, Lcom/alipay/zoloz/zface/ui/util/AlertUtil$1;

    invoke-direct {p2, p0, p5, p1, p4}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil$1;-><init>(Lcom/alipay/zoloz/zface/ui/util/AlertUtil;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p4, p2}, Lzoloz/ap/com/toolkit/ui/GenenalDialog$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lzoloz/ap/com/toolkit/ui/GenenalDialog$Builder;

    .line 16
    :cond_3
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 17
    new-instance p2, Lcom/alipay/zoloz/zface/ui/util/AlertUtil$2;

    invoke-direct {p2, p0, p7, p1, p6}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil$2;-><init>(Lcom/alipay/zoloz/zface/ui/util/AlertUtil;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p6, p2}, Lzoloz/ap/com/toolkit/ui/GenenalDialog$Builder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lzoloz/ap/com/toolkit/ui/GenenalDialog$Builder;

    :cond_4
    const/4 p1, 0x0

    .line 18
    invoke-virtual {v0, p1}, Lzoloz/ap/com/toolkit/ui/GenenalDialog$Builder;->showCloseButton(Z)Lzoloz/ap/com/toolkit/ui/GenenalDialog$Builder;

    .line 19
    invoke-virtual {v0, p1}, Lzoloz/ap/com/toolkit/ui/GenenalDialog$Builder;->showProtocol(Z)Lzoloz/ap/com/toolkit/ui/GenenalDialog$Builder;

    .line 20
    invoke-virtual {v0}, Lzoloz/ap/com/toolkit/ui/GenenalDialog$Builder;->show()Lzoloz/ap/com/toolkit/ui/GenenalDialog;

    move-result-object v1

    .line 21
    invoke-virtual {v1, p8}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 22
    invoke-virtual {v1, p8}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 23
    invoke-virtual {v1, p9}, Lzoloz/ap/com/toolkit/ui/GenenalDialog;->setCallback(Lzoloz/ap/com/toolkit/ui/DialogCallback;)V

    .line 24
    new-instance p1, Lcom/alipay/zoloz/zface/ui/util/AlertUtil$3;

    invoke-direct {p1, p0}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil$3;-><init>(Lcom/alipay/zoloz/zface/ui/util/AlertUtil;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_5
    return-object v1
.end method

.method public alertBack()V
    .locals 9

    .line 1
    sget v0, Lcom/alipay/zoloz/toyger/R$string;->zface_user_cancel_title:I

    invoke-direct {p0, v0}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2
    sget v0, Lcom/alipay/zoloz/toyger/R$string;->zface_user_cancel_msg:I

    invoke-direct {p0, v0}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3
    sget v0, Lcom/alipay/zoloz/toyger/R$string;->zface_user_cancel_stay:I

    invoke-direct {p0, v0}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 4
    sget v0, Lcom/alipay/zoloz/toyger/R$string;->zface_user_cancel_quit:I

    invoke-direct {p0, v0}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 5
    new-instance v6, Lcom/alipay/zoloz/zface/ui/util/AlertUtil$19;

    invoke-direct {v6, p0}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil$19;-><init>(Lcom/alipay/zoloz/zface/ui/util/AlertUtil;)V

    new-instance v8, Lcom/alipay/zoloz/zface/ui/util/AlertUtil$20;

    invoke-direct {v8, p0}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil$20;-><init>(Lcom/alipay/zoloz/zface/ui/util/AlertUtil;)V

    const-string v2, "clickXback"

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    return-void
.end method

.method public alertCameraOpenFailed()V
    .locals 7

    .line 1
    sget v0, Lcom/alipay/zoloz/toyger/R$string;->zface_camera_init_error_msg:I

    invoke-direct {p0, v0}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2
    sget v0, Lcom/alipay/zoloz/toyger/R$string;->zface_camera_init_error_got_it:I

    invoke-direct {p0, v0}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 3
    new-instance v6, Lcom/alipay/zoloz/zface/ui/util/AlertUtil$14;

    invoke-direct {v6, p0}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil$14;-><init>(Lcom/alipay/zoloz/zface/ui/util/AlertUtil;)V

    const-string v4, ""

    const-string v2, "cameraInitError"

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    return-void
.end method

.method public alertCameraPermissionFailed(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 9

    .line 1
    sget v0, Lcom/alipay/zoloz/toyger/R$string;->zface_camera_without_permission_title:I

    invoke-direct {p0, v0}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2
    sget v0, Lcom/alipay/zoloz/toyger/R$string;->zface_camera_without_permission_msg:I

    invoke-direct {p0, v0}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3
    sget v0, Lcom/alipay/zoloz/toyger/R$string;->zface_camera_without_permission_quit:I

    invoke-direct {p0, v0}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 4
    sget v0, Lcom/alipay/zoloz/toyger/R$string;->zface_camera_without_permission_go_settings:I

    invoke-direct {p0, v0}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 5
    new-instance v8, Lcom/alipay/zoloz/zface/ui/util/AlertUtil$15;

    invoke-direct {v8, p0}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil$15;-><init>(Lcom/alipay/zoloz/zface/ui/util/AlertUtil;)V

    const-string v2, "cameraPermission"

    move-object v1, p0

    move-object v6, p1

    invoke-virtual/range {v1 .. v8}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    return-void
.end method

.method public alertFailRetry()V
    .locals 9

    .line 1
    sget v0, Lcom/alipay/zoloz/toyger/R$string;->zface_scan_fail_title:I

    invoke-direct {p0, v0}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2
    sget v0, Lcom/alipay/zoloz/toyger/R$string;->zface_scan_fail_msg:I

    invoke-direct {p0, v0}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3
    sget v0, Lcom/alipay/zoloz/toyger/R$string;->zface_scan_fail_retry:I

    invoke-direct {p0, v0}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 4
    sget v0, Lcom/alipay/zoloz/toyger/R$string;->zface_scan_fail_quit:I

    invoke-direct {p0, v0}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 5
    new-instance v6, Lcom/alipay/zoloz/zface/ui/util/AlertUtil$7;

    invoke-direct {v6, p0}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil$7;-><init>(Lcom/alipay/zoloz/zface/ui/util/AlertUtil;)V

    new-instance v8, Lcom/alipay/zoloz/zface/ui/util/AlertUtil$8;

    invoke-direct {v8, p0}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil$8;-><init>(Lcom/alipay/zoloz/zface/ui/util/AlertUtil;)V

    const-string v2, "livnessFail"

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    return-void
.end method

.method public alertFirstLogin()V
    .locals 9

    .line 1
    sget v0, Lcom/alipay/zoloz/toyger/R$string;->zface_detect_dialog_first_login:I

    invoke-direct {p0, v0}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2
    sget v0, Lcom/alipay/zoloz/toyger/R$string;->zface_detect_dialog_first_login_confirm:I

    invoke-direct {p0, v0}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 3
    sget v0, Lcom/alipay/zoloz/toyger/R$string;->zface_detect_dialog_first_login_cancel:I

    invoke-direct {p0, v0}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 4
    new-instance v6, Lcom/alipay/zoloz/zface/ui/util/AlertUtil$5;

    invoke-direct {v6, p0}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil$5;-><init>(Lcom/alipay/zoloz/zface/ui/util/AlertUtil;)V

    new-instance v8, Lcom/alipay/zoloz/zface/ui/util/AlertUtil$6;

    invoke-direct {v8, p0}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil$6;-><init>(Lcom/alipay/zoloz/zface/ui/util/AlertUtil;)V

    const-string v4, ""

    const-string v2, "authorization"

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    return-void
.end method

.method public alertInterruptResume()V
    .locals 9

    .line 1
    sget v0, Lcom/alipay/zoloz/toyger/R$string;->zface_interrupt_title:I

    invoke-direct {p0, v0}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2
    sget v0, Lcom/alipay/zoloz/toyger/R$string;->zface_interrupt_msg:I

    invoke-direct {p0, v0}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3
    sget v0, Lcom/alipay/zoloz/toyger/R$string;->zface_interrupt_retry:I

    invoke-direct {p0, v0}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 4
    sget v0, Lcom/alipay/zoloz/toyger/R$string;->zface_interrupt_close:I

    invoke-direct {p0, v0}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 5
    new-instance v6, Lcom/alipay/zoloz/zface/ui/util/AlertUtil$9;

    invoke-direct {v6, p0}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil$9;-><init>(Lcom/alipay/zoloz/zface/ui/util/AlertUtil;)V

    new-instance v8, Lcom/alipay/zoloz/zface/ui/util/AlertUtil$10;

    invoke-direct {v8, p0}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil$10;-><init>(Lcom/alipay/zoloz/zface/ui/util/AlertUtil;)V

    const-string v2, "systemInterrupt"

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    return-void
.end method

.method public alertNetworkError()V
    .locals 9

    .line 1
    sget v0, Lcom/alipay/zoloz/toyger/R$string;->network_error_title:I

    invoke-direct {p0, v0}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2
    sget v0, Lcom/alipay/zoloz/toyger/R$string;->network_error_msg:I

    invoke-direct {p0, v0}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3
    sget v0, Lcom/alipay/zoloz/toyger/R$string;->network_error_retry:I

    invoke-direct {p0, v0}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 4
    sget v0, Lcom/alipay/zoloz/toyger/R$string;->network_error_exit:I

    invoke-direct {p0, v0}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 5
    new-instance v6, Lcom/alipay/zoloz/zface/ui/util/AlertUtil$17;

    invoke-direct {v6, p0}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil$17;-><init>(Lcom/alipay/zoloz/zface/ui/util/AlertUtil;)V

    new-instance v8, Lcom/alipay/zoloz/zface/ui/util/AlertUtil$18;

    invoke-direct {v8, p0}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil$18;-><init>(Lcom/alipay/zoloz/zface/ui/util/AlertUtil;)V

    const-string v2, "networkFail"

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    return-void
.end method

.method public alertRetryOutTime()V
    .locals 7

    .line 1
    sget v0, Lcom/alipay/zoloz/toyger/R$string;->zface_retry_max_title:I

    invoke-direct {p0, v0}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2
    sget v0, Lcom/alipay/zoloz/toyger/R$string;->zface_retry_max_msg:I

    invoke-direct {p0, v0}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3
    sget v0, Lcom/alipay/zoloz/toyger/R$string;->zface_retry_max_got_it:I

    invoke-direct {p0, v0}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 4
    new-instance v6, Lcom/alipay/zoloz/zface/ui/util/AlertUtil$4;

    invoke-direct {v6, p0}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil$4;-><init>(Lcom/alipay/zoloz/zface/ui/util/AlertUtil;)V

    const-string v2, "retryOverMax"

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    return-void
.end method

.method public alertSystemError()V
    .locals 7

    .line 1
    sget v0, Lcom/alipay/zoloz/toyger/R$string;->system_error_title:I

    invoke-direct {p0, v0}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2
    sget v0, Lcom/alipay/zoloz/toyger/R$string;->system_error_msg:I

    invoke-direct {p0, v0}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3
    sget v0, Lcom/alipay/zoloz/toyger/R$string;->system_error_got_it:I

    invoke-direct {p0, v0}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 4
    new-instance v6, Lcom/alipay/zoloz/zface/ui/util/AlertUtil$16;

    invoke-direct {v6, p0}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil$16;-><init>(Lcom/alipay/zoloz/zface/ui/util/AlertUtil;)V

    const-string v2, "loadAlgorithmErr"

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    return-void
.end method

.method public alertSystemNotSupport(Ljava/lang/String;)V
    .locals 7

    .line 1
    sget v0, Lcom/alipay/zoloz/toyger/R$string;->zface_device_unsupport_msg:I

    invoke-direct {p0, v0}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2
    sget v0, Lcom/alipay/zoloz/toyger/R$string;->zface_device_unsupport_got_it:I

    invoke-direct {p0, v0}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 3
    new-instance v6, Lcom/alipay/zoloz/zface/ui/util/AlertUtil$13;

    invoke-direct {v6, p0, p1}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil$13;-><init>(Lcom/alipay/zoloz/zface/ui/util/AlertUtil;Ljava/lang/String;)V

    const-string v2, "errorDeviceModel"

    const-string v4, ""

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    return-void
.end method

.method public alertTimeOut()V
    .locals 9

    .line 1
    sget v0, Lcom/alipay/zoloz/toyger/R$string;->zface_time_out_title:I

    invoke-direct {p0, v0}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2
    sget v0, Lcom/alipay/zoloz/toyger/R$string;->zface_time_out_msg:I

    invoke-direct {p0, v0}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3
    sget v0, Lcom/alipay/zoloz/toyger/R$string;->zface_time_out_retry:I

    invoke-direct {p0, v0}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 4
    sget v0, Lcom/alipay/zoloz/toyger/R$string;->zface_time_out_quit:I

    invoke-direct {p0, v0}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 5
    new-instance v6, Lcom/alipay/zoloz/zface/ui/util/AlertUtil$11;

    invoke-direct {v6, p0}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil$11;-><init>(Lcom/alipay/zoloz/zface/ui/util/AlertUtil;)V

    new-instance v8, Lcom/alipay/zoloz/zface/ui/util/AlertUtil$12;

    invoke-direct {v8, p0}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil$12;-><init>(Lcom/alipay/zoloz/zface/ui/util/AlertUtil;)V

    const-string v2, "timeout"

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/alipay/zoloz/zface/ui/util/AlertUtil;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    return-void
.end method

.method public alertUploadSuccess(Landroid/app/Activity;)Lzoloz/ap/com/toolkit/ui/DialogHelper;
    .locals 2

    .line 1
    new-instance v0, Lzoloz/ap/com/toolkit/ui/DialogHelper;

    invoke-direct {v0, p1}, Lzoloz/ap/com/toolkit/ui/DialogHelper;-><init>(Landroid/app/Activity;)V

    const/4 p1, 0x0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p1, v1}, Lzoloz/ap/com/toolkit/ui/DialogHelper;->showSuccessDialog(ZLandroid/content/DialogInterface$OnCancelListener;)V

    return-object v0
.end method
