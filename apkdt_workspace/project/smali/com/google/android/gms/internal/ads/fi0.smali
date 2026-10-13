.class final Lcom/google/android/gms/internal/ads/fi0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/g;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/ry;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ei0;Lcom/google/android/gms/internal/ads/ry;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/fi0;->a:Lcom/google/android/gms/internal/ads/ry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fi0;->a:Lcom/google/android/gms/internal/ads/ry;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/uq;->c()Lcom/google/android/gms/internal/ads/it;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/it;->onAdClicked()V

    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fi0;->a:Lcom/google/android/gms/internal/ads/ry;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/uq;->d()Lcom/google/android/gms/internal/ads/rt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/rt;->g()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fi0;->a:Lcom/google/android/gms/internal/ads/ry;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/uq;->e()Lcom/google/android/gms/internal/ads/sx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/sx;->g()V

    return-void
.end method
