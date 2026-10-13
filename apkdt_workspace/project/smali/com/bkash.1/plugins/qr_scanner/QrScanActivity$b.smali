.class Lcom/intercept/plugins/qr_scanner/QrScanActivity$b;
.super Ljava/lang/Object;
.source "QrScanActivity.java"

# interfaces
.implements Lcom/google/android/gms/vision/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intercept/plugins/qr_scanner/QrScanActivity;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/vision/b$b<",
        "Lcom/google/android/gms/vision/barcode/Barcode;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/intercept/plugins/qr_scanner/QrScanActivity;


# direct methods
.method constructor <init>(Lcom/intercept/plugins/qr_scanner/QrScanActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/intercept/plugins/qr_scanner/QrScanActivity$b;->a:Lcom/intercept/plugins/qr_scanner/QrScanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Lcom/google/android/gms/vision/b$a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/vision/b$a<",
            "Lcom/google/android/gms/vision/barcode/Barcode;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/vision/b$a;->a()Landroid/util/SparseArray;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/vision/barcode/Barcode;

    iget-object p1, p1, Lcom/google/android/gms/vision/barcode/Barcode;->g:Ljava/lang/String;

    .line 4
    iget-object v0, p0, Lcom/intercept/plugins/qr_scanner/QrScanActivity$b;->a:Lcom/intercept/plugins/qr_scanner/QrScanActivity;

    invoke-static {v0}, Lcom/intercept/plugins/qr_scanner/QrScanActivity;->access$200(Lcom/intercept/plugins/qr_scanner/QrScanActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v1, p0, Lcom/intercept/plugins/qr_scanner/QrScanActivity$b;->a:Lcom/intercept/plugins/qr_scanner/QrScanActivity;

    invoke-static {v1}, Lcom/intercept/plugins/qr_scanner/QrScanActivity;->access$300(Lcom/intercept/plugins/qr_scanner/QrScanActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/intercept/plugins/qr_scanner/QrScanActivity$b;->a:Lcom/intercept/plugins/qr_scanner/QrScanActivity;

    invoke-static {v1}, Lcom/intercept/plugins/qr_scanner/QrScanActivity;->access$400(Lcom/intercept/plugins/qr_scanner/QrScanActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/intercept/plugins/qr_scanner/QrScanActivity$b;->a:Lcom/intercept/plugins/qr_scanner/QrScanActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/intercept/plugins/qr_scanner/QrScanActivity;->access$402(Lcom/intercept/plugins/qr_scanner/QrScanActivity;Z)Z

    .line 7
    iget-object p1, p0, Lcom/intercept/plugins/qr_scanner/QrScanActivity$b;->a:Lcom/intercept/plugins/qr_scanner/QrScanActivity;

    invoke-static {p1}, Lcom/intercept/plugins/qr_scanner/QrScanActivity;->access$500(Lcom/intercept/plugins/qr_scanner/QrScanActivity;)V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 8
    iget-object v1, p0, Lcom/intercept/plugins/qr_scanner/QrScanActivity$b;->a:Lcom/intercept/plugins/qr_scanner/QrScanActivity;

    invoke-static {v1}, Lcom/intercept/plugins/qr_scanner/QrScanActivity;->access$300(Lcom/intercept/plugins/qr_scanner/QrScanActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VALID QR CODE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 10
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 11
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "url"

    .line 12
    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "shouldOpenInBrowser"

    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object p1, Lcom/intercept/plugins/qr_scanner/QrScanActivity;->EXTRA_RESULT:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 15
    iget-object p1, p0, Lcom/intercept/plugins/qr_scanner/QrScanActivity$b;->a:Lcom/intercept/plugins/qr_scanner/QrScanActivity;

    const/4 v0, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 16
    iget-object p1, p0, Lcom/intercept/plugins/qr_scanner/QrScanActivity$b;->a:Lcom/intercept/plugins/qr_scanner/QrScanActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_2
    :goto_0
    return-void
.end method
