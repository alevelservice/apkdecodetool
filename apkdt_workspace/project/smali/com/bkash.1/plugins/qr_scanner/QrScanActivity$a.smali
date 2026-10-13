.class Lcom/intercept/plugins/qr_scanner/QrScanActivity$a;
.super Ljava/lang/Object;
.source "QrScanActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intercept/plugins/qr_scanner/QrScanActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/intercept/plugins/qr_scanner/QrScanActivity;


# direct methods
.method constructor <init>(Lcom/intercept/plugins/qr_scanner/QrScanActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/intercept/plugins/qr_scanner/QrScanActivity$a;->e:Lcom/intercept/plugins/qr_scanner/QrScanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/intercept/plugins/qr_scanner/QrScanActivity$a;->e:Lcom/intercept/plugins/qr_scanner/QrScanActivity;

    invoke-static {p1}, Lcom/intercept/plugins/qr_scanner/QrScanActivity;->access$000(Lcom/intercept/plugins/qr_scanner/QrScanActivity;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/intercept/plugins/qr_scanner/QrScanActivity$a;->e:Lcom/intercept/plugins/qr_scanner/QrScanActivity;

    invoke-static {p1}, Lcom/intercept/plugins/qr_scanner/QrScanActivity;->access$100(Lcom/intercept/plugins/qr_scanner/QrScanActivity;)V

    return-void
.end method
