.class final Lcom/google/android/gms/internal/ads/ju1;
.super Lcom/google/android/gms/internal/ads/ku1;
.source "com.google.android.gms:play-services-ads-lite@@18.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/ku1<",
        "Lcom/google/android/gms/internal/ads/zzaaw;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic b:Landroid/widget/FrameLayout;

.field private final synthetic c:Landroid/widget/FrameLayout;

.field private final synthetic d:Landroid/content/Context;

.field private final synthetic e:Lcom/google/android/gms/internal/ads/eu1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/eu1;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ju1;->e:Lcom/google/android/gms/internal/ads/eu1;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ju1;->b:Landroid/widget/FrameLayout;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ju1;->c:Landroid/widget/FrameLayout;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/ju1;->d:Landroid/content/Context;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ku1;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ju1;->d:Landroid/content/Context;

    const-string v1, "native_ad_view_delegate"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/eu1;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzxn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzxn;-><init>()V

    return-object v0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/zzvn;)Ljava/lang/Object;
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ju1;->b:Landroid/widget/FrameLayout;

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ju1;->c:Landroid/widget/FrameLayout;

    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    .line 5
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzvn;->zzc(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/internal/ads/zzaaw;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic b()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ju1;->e:Lcom/google/android/gms/internal/ads/eu1;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/eu1;->c(Lcom/google/android/gms/internal/ads/eu1;)Lcom/google/android/gms/internal/ads/q;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ju1;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ju1;->b:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ju1;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/q;->a(Landroid/content/Context;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)Lcom/google/android/gms/internal/ads/zzaaw;

    move-result-object v0

    return-object v0
.end method
