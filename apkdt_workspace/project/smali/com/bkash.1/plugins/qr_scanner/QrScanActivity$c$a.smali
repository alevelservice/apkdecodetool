.class Lcom/intercept/plugins/qr_scanner/QrScanActivity$c$a;
.super Ljava/lang/Object;
.source "QrScanActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intercept/plugins/qr_scanner/QrScanActivity$c;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/intercept/plugins/qr_scanner/QrScanActivity$c;


# direct methods
.method constructor <init>(Lcom/intercept/plugins/qr_scanner/QrScanActivity$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/intercept/plugins/qr_scanner/QrScanActivity$c$a;->e:Lcom/intercept/plugins/qr_scanner/QrScanActivity$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2
    iget-object p1, p0, Lcom/intercept/plugins/qr_scanner/QrScanActivity$c$a;->e:Lcom/intercept/plugins/qr_scanner/QrScanActivity$c;

    iget-object p1, p1, Lcom/intercept/plugins/qr_scanner/QrScanActivity$c;->e:Lcom/intercept/plugins/qr_scanner/QrScanActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/intercept/plugins/qr_scanner/QrScanActivity;->access$402(Lcom/intercept/plugins/qr_scanner/QrScanActivity;Z)Z

    return-void
.end method
