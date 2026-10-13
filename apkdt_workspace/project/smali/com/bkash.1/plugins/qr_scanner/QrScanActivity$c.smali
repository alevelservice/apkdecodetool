.class Lcom/intercept/plugins/qr_scanner/QrScanActivity$c;
.super Ljava/lang/Object;
.source "QrScanActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intercept/plugins/qr_scanner/QrScanActivity;->b()V
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
    iput-object p1, p0, Lcom/intercept/plugins/qr_scanner/QrScanActivity$c;->e:Lcom/intercept/plugins/qr_scanner/QrScanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/intercept/plugins/qr_scanner/QrScanActivity$c;->e:Lcom/intercept/plugins/qr_scanner/QrScanActivity;

    invoke-static {v1}, Lcom/intercept/plugins/qr_scanner/QrScanActivity;->access$600(Lcom/intercept/plugins/qr_scanner/QrScanActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2
    iget-object v1, p0, Lcom/intercept/plugins/qr_scanner/QrScanActivity$c;->e:Lcom/intercept/plugins/qr_scanner/QrScanActivity;

    invoke-static {v1}, Lcom/intercept/plugins/qr_scanner/QrScanActivity;->access$700(Lcom/intercept/plugins/qr_scanner/QrScanActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 3
    iget-object v1, p0, Lcom/intercept/plugins/qr_scanner/QrScanActivity$c;->e:Lcom/intercept/plugins/qr_scanner/QrScanActivity;

    invoke-static {v1}, Lcom/intercept/plugins/qr_scanner/QrScanActivity;->access$800(Lcom/intercept/plugins/qr_scanner/QrScanActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 4
    iget-object v1, p0, Lcom/intercept/plugins/qr_scanner/QrScanActivity$c;->e:Lcom/intercept/plugins/qr_scanner/QrScanActivity;

    invoke-static {v1}, Lcom/intercept/plugins/qr_scanner/QrScanActivity;->access$900(Lcom/intercept/plugins/qr_scanner/QrScanActivity;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/intercept/plugins/qr_scanner/QrScanActivity$c$a;

    invoke-direct {v2, p0}, Lcom/intercept/plugins/qr_scanner/QrScanActivity$c$a;-><init>(Lcom/intercept/plugins/qr_scanner/QrScanActivity$c;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 7
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
