.class public final Lcom/google/android/gms/internal/ads/zzbxm;
.super Lcom/google/android/gms/internal/ads/zzacp;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# instance fields
.field private final e:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final f:Lcom/google/android/gms/internal/ads/d10;

.field private final g:Lcom/google/android/gms/internal/ads/l10;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/d10;Lcom/google/android/gms/internal/ads/l10;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzacp;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbxm;->e:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbxm;->f:Lcom/google/android/gms/internal/ads/d10;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbxm;->g:Lcom/google/android/gms/internal/ads/l10;

    return-void
.end method


# virtual methods
.method public final cancelUnconfirmedClick()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxm;->f:Lcom/google/android/gms/internal/ads/d10;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/d10;->f()V

    return-void
.end method

.method public final destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxm;->f:Lcom/google/android/gms/internal/ads/d10;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/d10;->a()V

    return-void
.end method

.method public final getAdvertiser()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxm;->g:Lcom/google/android/gms/internal/ads/l10;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/l10;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getBody()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxm;->g:Lcom/google/android/gms/internal/ads/l10;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/l10;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCallToAction()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxm;->g:Lcom/google/android/gms/internal/ads/l10;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/l10;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getExtras()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxm;->g:Lcom/google/android/gms/internal/ads/l10;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/l10;->f()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final getHeadline()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxm;->g:Lcom/google/android/gms/internal/ads/l10;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/l10;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getImages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxm;->g:Lcom/google/android/gms/internal/ads/l10;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/l10;->h()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getMediationAdapterClassName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxm;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final getMuteThisAdReasons()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbxm;->isCustomMuteThisAdEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxm;->g:Lcom/google/android/gms/internal/ads/l10;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/l10;->j()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getPrice()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxm;->g:Lcom/google/android/gms/internal/ads/l10;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/l10;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getStarRating()D
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxm;->g:Lcom/google/android/gms/internal/ads/l10;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/l10;->l()D

    move-result-wide v0

    return-wide v0
.end method

.method public final getStore()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxm;->g:Lcom/google/android/gms/internal/ads/l10;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/l10;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getVideoController()Lcom/google/android/gms/internal/ads/zzwk;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxm;->g:Lcom/google/android/gms/internal/ads/l10;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/l10;->n()Lcom/google/android/gms/internal/ads/zzwk;

    move-result-object v0

    return-object v0
.end method

.method public final isCustomClickGestureEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxm;->f:Lcom/google/android/gms/internal/ads/d10;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/d10;->g()Z

    move-result v0

    return v0
.end method

.method public final isCustomMuteThisAdEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxm;->g:Lcom/google/android/gms/internal/ads/l10;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/l10;->j()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxm;->g:Lcom/google/android/gms/internal/ads/l10;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/l10;->r()Lcom/google/android/gms/internal/ads/zzxd;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final performClick(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxm;->f:Lcom/google/android/gms/internal/ads/d10;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/d10;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public final recordCustomClickGesture()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxm;->f:Lcom/google/android/gms/internal/ads/d10;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/d10;->h()V

    return-void
.end method

.method public final recordImpression(Landroid/os/Bundle;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxm;->f:Lcom/google/android/gms/internal/ads/d10;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/d10;->c(Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public final reportTouchEvent(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxm;->f:Lcom/google/android/gms/internal/ads/d10;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/d10;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzacl;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxm;->f:Lcom/google/android/gms/internal/ads/d10;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/d10;->a(Lcom/google/android/gms/internal/ads/zzacl;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzvx;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxm;->f:Lcom/google/android/gms/internal/ads/d10;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/d10;->a(Lcom/google/android/gms/internal/ads/zzvx;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzwb;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/internal/ads/zzwb;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxm;->f:Lcom/google/android/gms/internal/ads/d10;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/d10;->a(Lcom/google/android/gms/internal/ads/zzwb;)V

    return-void
.end method

.method public final zzqi()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxm;->f:Lcom/google/android/gms/internal/ads/d10;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method

.method public final zzqj()Lcom/google/android/gms/internal/ads/zzaas;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxm;->g:Lcom/google/android/gms/internal/ads/l10;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/l10;->z()Lcom/google/android/gms/internal/ads/zzaas;

    move-result-object v0

    return-object v0
.end method

.method public final zzqk()Lcom/google/android/gms/internal/ads/zzaak;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxm;->g:Lcom/google/android/gms/internal/ads/l10;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/l10;->A()Lcom/google/android/gms/internal/ads/zzaak;

    move-result-object v0

    return-object v0
.end method

.method public final zzql()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxm;->g:Lcom/google/android/gms/internal/ads/l10;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/l10;->B()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method

.method public final zzqs()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxm;->f:Lcom/google/android/gms/internal/ads/d10;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/d10;->o()V

    return-void
.end method

.method public final zzqt()Lcom/google/android/gms/internal/ads/zzaan;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxm;->f:Lcom/google/android/gms/internal/ads/d10;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/d10;->l()Lcom/google/android/gms/internal/ads/j10;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/j10;->a()Lcom/google/android/gms/internal/ads/zzaan;

    move-result-object v0

    return-object v0
.end method
