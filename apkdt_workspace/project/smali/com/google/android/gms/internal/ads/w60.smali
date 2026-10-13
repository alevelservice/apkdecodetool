.class public final Lcom/google/android/gms/internal/ads/w60;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/vt;


# instance fields
.field private final e:Lcom/google/android/gms/internal/ads/fi;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/fi;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/internal/ads/fi;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/aw1;->F0:Lcom/google/android/gms/internal/ads/pv1;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->e()Lcom/google/android/gms/internal/ads/wv1;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/wv1;->a(Lcom/google/android/gms/internal/ads/pv1;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/w60;->e:Lcom/google/android/gms/internal/ads/fi;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/w60;->e:Lcom/google/android/gms/internal/ads/fi;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/fi;->onResume()V

    :cond_0
    return-void
.end method

.method public final b(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/w60;->e:Lcom/google/android/gms/internal/ads/fi;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/fi;->onPause()V

    :cond_0
    return-void
.end method

.method public final c(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/w60;->e:Lcom/google/android/gms/internal/ads/fi;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/fi;->destroy()V

    :cond_0
    return-void
.end method
