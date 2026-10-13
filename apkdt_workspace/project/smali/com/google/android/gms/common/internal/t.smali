.class final Lcom/google/android/gms/common/internal/t;
.super Lcom/google/android/gms/common/internal/e;
.source "com.google.android.gms:play-services-base@@17.1.0"


# instance fields
.field private final synthetic e:Landroid/content/Intent;

.field private final synthetic f:Lcom/google/android/gms/common/api/internal/j;

.field private final synthetic g:I


# direct methods
.method constructor <init>(Landroid/content/Intent;Lcom/google/android/gms/common/api/internal/j;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/internal/t;->e:Landroid/content/Intent;

    iput-object p2, p0, Lcom/google/android/gms/common/internal/t;->f:Lcom/google/android/gms/common/api/internal/j;

    iput p3, p0, Lcom/google/android/gms/common/internal/t;->g:I

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/t;->e:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/common/internal/t;->f:Lcom/google/android/gms/common/api/internal/j;

    iget v2, p0, Lcom/google/android/gms/common/internal/t;->g:I

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/common/api/internal/j;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method
