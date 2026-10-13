.class public final Lcom/google/android/gms/ads/f;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@18.1.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/wu1;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/wu1;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/wu1;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/f;->a:Lcom/google/android/gms/internal/ads/wu1;

    const-string v0, "Context cannot be null"

    .line 3
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/ads/f;->a:Lcom/google/android/gms/internal/ads/wu1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/wu1;->a()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/ads/AdRequest;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.INTERNET"
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/f;->a:Lcom/google/android/gms/internal/ads/wu1;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdRequest;->a()Lcom/google/android/gms/internal/ads/su1;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/wu1;->a(Lcom/google/android/gms/internal/ads/su1;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/b;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/ads/f;->a:Lcom/google/android/gms/internal/ads/wu1;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/wu1;->a(Lcom/google/android/gms/ads/b;)V

    if-eqz p1, :cond_0

    .line 3
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/st1;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/ads/f;->a:Lcom/google/android/gms/internal/ads/wu1;

    check-cast p1, Lcom/google/android/gms/internal/ads/st1;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/wu1;->a(Lcom/google/android/gms/internal/ads/st1;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/google/android/gms/ads/f;->a:Lcom/google/android/gms/internal/ads/wu1;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/wu1;->a(Lcom/google/android/gms/internal/ads/st1;)V

    :cond_1
    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/o/a;)V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/ads/f;->a:Lcom/google/android/gms/internal/ads/wu1;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/wu1;->a(Lcom/google/android/gms/ads/o/a;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/o/c;)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/ads/f;->a:Lcom/google/android/gms/internal/ads/wu1;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/wu1;->a(Lcom/google/android/gms/ads/o/c;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/ads/f;->a:Lcom/google/android/gms/internal/ads/wu1;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/wu1;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Z)V
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/ads/f;->a:Lcom/google/android/gms/internal/ads/wu1;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/wu1;->a(Z)V

    return-void
.end method

.method public final b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/f;->a:Lcom/google/android/gms/internal/ads/wu1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/wu1;->b()V

    return-void
.end method

.method public final b(Z)V
    .locals 1

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/ads/f;->a:Lcom/google/android/gms/internal/ads/wu1;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/wu1;->b(Z)V

    return-void
.end method
