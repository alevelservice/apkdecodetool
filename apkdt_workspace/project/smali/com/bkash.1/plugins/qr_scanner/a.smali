.class public Lcom/intercept/plugins/qr_scanner/a;
.super Ljava/lang/Object;
.source "QrScannerOptions.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private alertActionText:Ljava/lang/String;

.field private alertDescription:Ljava/lang/String;

.field private alertTitle:Ljava/lang/String;

.field private autoFocusIntervalInMs:I

.field private description:Ljava/lang/String;

.field private executeAfterPermissionGranted:Z

.field private forceAutoFocus:Z

.field private handlePermissions:Z

.field private qrValidationRegex:Ljava/lang/String;

.field private themeColor:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private torchEnabled:Z

.field private whiteListedUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlertActionText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/intercept/plugins/qr_scanner/a;->alertActionText:Ljava/lang/String;

    return-object v0
.end method

.method public getAlertDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/intercept/plugins/qr_scanner/a;->alertDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getAlertTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/intercept/plugins/qr_scanner/a;->alertTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getAutoFocusIntervalInMs()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/intercept/plugins/qr_scanner/a;->autoFocusIntervalInMs:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/intercept/plugins/qr_scanner/a;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getQrValidationRegex()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/intercept/plugins/qr_scanner/a;->qrValidationRegex:Ljava/lang/String;

    return-object v0
.end method

.method public getThemeColor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/intercept/plugins/qr_scanner/a;->themeColor:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/intercept/plugins/qr_scanner/a;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getWhiteListedUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/intercept/plugins/qr_scanner/a;->whiteListedUrls:Ljava/util/List;

    return-object v0
.end method

.method public isExecuteAfterPermissionGranted()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/intercept/plugins/qr_scanner/a;->executeAfterPermissionGranted:Z

    return v0
.end method

.method public isForceAutoFocus()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/intercept/plugins/qr_scanner/a;->forceAutoFocus:Z

    return v0
.end method

.method public isHandlePermissions()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/intercept/plugins/qr_scanner/a;->handlePermissions:Z

    return v0
.end method

.method public isTorchEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/intercept/plugins/qr_scanner/a;->torchEnabled:Z

    return v0
.end method

.method public setAlertActionText(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/intercept/plugins/qr_scanner/a;->alertActionText:Ljava/lang/String;

    return-void
.end method

.method public setAlertDescription(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/intercept/plugins/qr_scanner/a;->alertDescription:Ljava/lang/String;

    return-void
.end method

.method public setAlertTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/intercept/plugins/qr_scanner/a;->alertTitle:Ljava/lang/String;

    return-void
.end method

.method public setAutoFocusIntervalInMs(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/intercept/plugins/qr_scanner/a;->autoFocusIntervalInMs:I

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/intercept/plugins/qr_scanner/a;->description:Ljava/lang/String;

    return-void
.end method

.method public setExecuteAfterPermissionGranted(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/intercept/plugins/qr_scanner/a;->executeAfterPermissionGranted:Z

    return-void
.end method

.method public setForceAutoFocus(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/intercept/plugins/qr_scanner/a;->forceAutoFocus:Z

    return-void
.end method

.method public setHandlePermissions(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/intercept/plugins/qr_scanner/a;->handlePermissions:Z

    return-void
.end method

.method public setQrValidationRegex(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/intercept/plugins/qr_scanner/a;->qrValidationRegex:Ljava/lang/String;

    return-void
.end method

.method public setThemeColor(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/intercept/plugins/qr_scanner/a;->themeColor:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/intercept/plugins/qr_scanner/a;->title:Ljava/lang/String;

    return-void
.end method

.method public setTorchEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/intercept/plugins/qr_scanner/a;->torchEnabled:Z

    return-void
.end method

.method public setWhiteListedUrls(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/intercept/plugins/qr_scanner/a;->whiteListedUrls:Ljava/util/List;

    return-void
.end method
