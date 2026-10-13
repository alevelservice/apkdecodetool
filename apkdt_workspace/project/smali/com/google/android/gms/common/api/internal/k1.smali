.class final Lcom/google/android/gms/common/api/internal/k1;
.super Lcom/google/android/gms/common/api/internal/n0;
.source "com.google.android.gms:play-services-base@@17.1.0"


# instance fields
.field private final synthetic a:Landroid/app/Dialog;

.field private final synthetic b:Lcom/google/android/gms/common/api/internal/i1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/i1;Landroid/app/Dialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/k1;->b:Lcom/google/android/gms/common/api/internal/i1;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/k1;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/n0;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/k1;->b:Lcom/google/android/gms/common/api/internal/i1;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/i1;->f:Lcom/google/android/gms/common/api/internal/h1;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/h1;->g()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/k1;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/k1;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
