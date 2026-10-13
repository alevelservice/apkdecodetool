.class public final Lcom/google/android/gms/internal/ads/zzakg;
.super Lcom/google/android/gms/internal/ads/zzajp;
.source "com.google.android.gms:play-services-ads-lite@@18.1.0"


# instance fields
.field private final e:Lcom/google/android/gms/ads/mediation/r;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/mediation/r;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzajp;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzakg;->e:Lcom/google/android/gms/ads/mediation/r;

    return-void
.end method


# virtual methods
.method public final getBody()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakg;->e:Lcom/google/android/gms/ads/mediation/r;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/r;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCallToAction()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakg;->e:Lcom/google/android/gms/ads/mediation/r;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/r;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getExtras()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakg;->e:Lcom/google/android/gms/ads/mediation/r;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/q;->b()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final getHeadline()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakg;->e:Lcom/google/android/gms/ads/mediation/r;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/r;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getImages()Ljava/util/List;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakg;->e:Lcom/google/android/gms/ads/mediation/r;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/r;->m()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/ads/formats/a$b;

    .line 4
    new-instance v10, Lcom/google/android/gms/internal/ads/zzaae;

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/ads/formats/a$b;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 6
    invoke-virtual {v2}, Lcom/google/android/gms/ads/formats/a$b;->d()Landroid/net/Uri;

    move-result-object v5

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/ads/formats/a$b;->c()D

    move-result-wide v6

    .line 8
    invoke-virtual {v2}, Lcom/google/android/gms/ads/formats/a$b;->e()I

    move-result v8

    .line 9
    invoke-virtual {v2}, Lcom/google/android/gms/ads/formats/a$b;->b()I

    move-result v9

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzaae;-><init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;DII)V

    .line 10
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getOverrideClickHandling()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakg;->e:Lcom/google/android/gms/ads/mediation/r;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/q;->c()Z

    move-result v0

    return v0
.end method

.method public final getOverrideImpressionRecording()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakg;->e:Lcom/google/android/gms/ads/mediation/r;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/q;->d()Z

    move-result v0

    return v0
.end method

.method public final getPrice()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakg;->e:Lcom/google/android/gms/ads/mediation/r;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/r;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getStarRating()D
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakg;->e:Lcom/google/android/gms/ads/mediation/r;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/r;->o()D

    move-result-wide v0

    return-wide v0
.end method

.method public final getStore()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakg;->e:Lcom/google/android/gms/ads/mediation/r;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/r;->p()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getVideoController()Lcom/google/android/gms/internal/ads/zzwk;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakg;->e:Lcom/google/android/gms/ads/mediation/r;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/q;->e()Lcom/google/android/gms/ads/j;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakg;->e:Lcom/google/android/gms/ads/mediation/r;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/q;->e()Lcom/google/android/gms/ads/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/j;->a()Lcom/google/android/gms/internal/ads/zzwk;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final recordImpression()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakg;->e:Lcom/google/android/gms/ads/mediation/r;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/q;->g()V

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 1

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    .line 2
    invoke-static {p3}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/HashMap;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakg;->e:Lcom/google/android/gms/ads/mediation/r;

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/ads/mediation/q;->a(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public final zzqj()Lcom/google/android/gms/internal/ads/zzaas;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakg;->e:Lcom/google/android/gms/ads/mediation/r;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/r;->l()Lcom/google/android/gms/ads/formats/a$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v8, Lcom/google/android/gms/internal/ads/zzaae;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/a$b;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/a$b;->d()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/a$b;->c()D

    move-result-wide v4

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/a$b;->e()I

    move-result v6

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/a$b;->b()I

    move-result v7

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzaae;-><init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;DII)V

    return-object v8

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzqk()Lcom/google/android/gms/internal/ads/zzaak;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzql()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzru()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakg;->e:Lcom/google/android/gms/ads/mediation/r;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/q;->a()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method

.method public final zzrv()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakg;->e:Lcom/google/android/gms/ads/mediation/r;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/q;->h()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method

.method public final zzx(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakg;->e:Lcom/google/android/gms/ads/mediation/r;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/mediation/q;->a(Landroid/view/View;)V

    return-void
.end method

.method public final zzy(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakg;->e:Lcom/google/android/gms/ads/mediation/r;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/mediation/q;->b(Landroid/view/View;)V

    return-void
.end method

.method public final zzz(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakg;->e:Lcom/google/android/gms/ads/mediation/r;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/mediation/q;->c(Landroid/view/View;)V

    return-void
.end method
