.class public final Lcom/google/android/gms/internal/ads/po;
.super Lcom/google/android/gms/internal/ads/sq;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# instance fields
.field private final f:Landroid/view/View;

.field private final g:Lcom/google/android/gms/internal/ads/fi;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final h:Lcom/google/android/gms/internal/ads/ms0;

.field private final i:I

.field private j:Lcom/google/android/gms/internal/ads/zzqz;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/rq;Landroid/view/View;Lcom/google/android/gms/internal/ads/fi;Lcom/google/android/gms/internal/ads/ms0;I)V
    .locals 0
    .param p3    # Lcom/google/android/gms/internal/ads/fi;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/sq;-><init>(Lcom/google/android/gms/internal/ads/rq;)V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/po;->f:Landroid/view/View;

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/po;->g:Lcom/google/android/gms/internal/ads/fi;

    .line 4
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/po;->h:Lcom/google/android/gms/internal/ads/ms0;

    .line 5
    iput p5, p0, Lcom/google/android/gms/internal/ads/po;->i:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/nr1;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/po;->g:Lcom/google/android/gms/internal/ads/fi;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/fi;->zza(Lcom/google/android/gms/internal/ads/nr1;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zzqz;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/po;->j:Lcom/google/android/gms/internal/ads/zzqz;

    return-void
.end method

.method public final f()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/po;->i:I

    return v0
.end method

.method public final g()Lcom/google/android/gms/internal/ads/ms0;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sq;->b:Lcom/google/android/gms/internal/ads/ns0;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ns0;->o:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/po;->h:Lcom/google/android/gms/internal/ads/ms0;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/at0;->a(Ljava/util/List;Lcom/google/android/gms/internal/ads/ms0;)Lcom/google/android/gms/internal/ads/ms0;

    move-result-object v0

    return-object v0
.end method

.method public final h()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/po;->f:Landroid/view/View;

    return-object v0
.end method

.method public final i()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/po;->g:Lcom/google/android/gms/internal/ads/fi;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/fi;->zzza()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final j()Lcom/google/android/gms/internal/ads/zzqz;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/po;->j:Lcom/google/android/gms/internal/ads/zzqz;

    return-object v0
.end method

.method public final k()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/po;->g:Lcom/google/android/gms/internal/ads/fi;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/fi;->zzyy()Lcom/google/android/gms/internal/ads/oj;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/oj;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
