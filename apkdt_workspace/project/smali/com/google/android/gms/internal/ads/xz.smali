.class public final Lcom/google/android/gms/internal/ads/xz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/jt;
.implements Lcom/google/android/gms/internal/ads/fx;


# instance fields
.field private final e:Lcom/google/android/gms/internal/ads/x8;

.field private final f:Landroid/content/Context;

.field private final g:Lcom/google/android/gms/internal/ads/a9;

.field private final h:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private i:Ljava/lang/String;

.field private final j:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/x8;Landroid/content/Context;Lcom/google/android/gms/internal/ads/a9;Landroid/view/View;I)V
    .locals 0
    .param p4    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/xz;->e:Lcom/google/android/gms/internal/ads/x8;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/xz;->f:Landroid/content/Context;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/xz;->g:Lcom/google/android/gms/internal/ads/a9;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/xz;->h:Landroid/view/View;

    .line 6
    iput p5, p0, Lcom/google/android/gms/internal/ads/xz;->j:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzape;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/xz;->g:Lcom/google/android/gms/internal/ads/a9;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/xz;->f:Landroid/content/Context;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/a9;->a(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xz;->g:Lcom/google/android/gms/internal/ads/a9;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/xz;->f:Landroid/content/Context;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/xz;->g:Lcom/google/android/gms/internal/ads/a9;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/xz;->f:Landroid/content/Context;

    .line 3
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/a9;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/xz;->e:Lcom/google/android/gms/internal/ads/x8;

    .line 4
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/x8;->a()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzape;->getType()Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzape;->getAmount()I

    move-result v5

    .line 7
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/a9;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Remote Exception to get reward item."

    .line 8
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/qd;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xz;->g:Lcom/google/android/gms/internal/ads/a9;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/xz;->f:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/a9;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/xz;->i:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xz;->i:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/xz;->j:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    const-string v1, "/Rewarded"

    goto :goto_0

    :cond_0
    const-string v1, "/Interstitial"

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/xz;->i:Ljava/lang/String;

    return-void
.end method

.method public final onAdClosed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xz;->e:Lcom/google/android/gms/internal/ads/x8;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/x8;->a(Z)V

    return-void
.end method

.method public final onAdLeftApplication()V
    .locals 0

    return-void
.end method

.method public final onAdOpened()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xz;->h:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/xz;->i:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/xz;->g:Lcom/google/android/gms/internal/ads/a9;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/xz;->i:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/a9;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xz;->e:Lcom/google/android/gms/internal/ads/x8;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/x8;->a(Z)V

    return-void
.end method

.method public final onRewardedVideoCompleted()V
    .locals 0

    return-void
.end method

.method public final onRewardedVideoStarted()V
    .locals 0

    return-void
.end method
