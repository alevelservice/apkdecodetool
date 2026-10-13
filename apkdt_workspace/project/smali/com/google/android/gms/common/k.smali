.class public Lcom/google/android/gms/common/k;
.super Landroidx/fragment/app/b;
.source "com.google.android.gms:play-services-base@@17.1.0"


# instance fields
.field private p:Landroid/app/Dialog;

.field private q:Landroid/content/DialogInterface$OnCancelListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/b;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/common/k;->p:Landroid/app/Dialog;

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/common/k;->q:Landroid/content/DialogInterface$OnCancelListener;

    return-void
.end method

.method public static a(Landroid/app/Dialog;Landroid/content/DialogInterface$OnCancelListener;)Lcom/google/android/gms/common/k;
    .locals 2

    .line 4
    new-instance v0, Lcom/google/android/gms/common/k;

    invoke-direct {v0}, Lcom/google/android/gms/common/k;-><init>()V

    const-string v1, "Cannot display null dialog"

    .line 5
    invoke-static {p0, v1}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, Landroid/app/Dialog;

    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 7
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 8
    iput-object p0, v0, Lcom/google/android/gms/common/k;->p:Landroid/app/Dialog;

    if-eqz p1, :cond_0

    .line 9
    iput-object p1, v0, Lcom/google/android/gms/common/k;->q:Landroid/content/DialogInterface$OnCancelListener;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/common/k;->p:Landroid/app/Dialog;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Landroidx/fragment/app/b;->b(Z)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/common/k;->p:Landroid/app/Dialog;

    return-object p1
.end method

.method public a(Landroidx/fragment/app/g;Ljava/lang/String;)V
    .locals 0

    .line 10
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/b;->a(Landroidx/fragment/app/g;Ljava/lang/String;)V

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/k;->q:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method
