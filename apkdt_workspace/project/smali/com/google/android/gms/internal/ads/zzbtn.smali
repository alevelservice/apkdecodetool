.class public final Lcom/google/android/gms/internal/ads/zzbtn;
.super Lcom/google/android/gms/internal/ads/zzaaq;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# instance fields
.field private final e:Lcom/google/android/gms/internal/ads/l10;

.field private f:Lcom/google/android/gms/dynamic/IObjectWrapper;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/l10;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaaq;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbtn;->e:Lcom/google/android/gms/internal/ads/l10;

    return-void
.end method

.method private final a()F
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtn;->e:Lcom/google/android/gms/internal/ads/l10;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/l10;->n()Lcom/google/android/gms/internal/ads/zzwk;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzwk;->getAspectRatio()F

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "Remote exception getting video controller aspect ratio."

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/qd;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method private static a(Lcom/google/android/gms/dynamic/IObjectWrapper;)F
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 6
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    :cond_1
    return v0
.end method


# virtual methods
.method public final getAspectRatio()F
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/aw1;->H3:Lcom/google/android/gms/internal/ads/pv1;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->e()Lcom/google/android/gms/internal/ads/wv1;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/wv1;->a(Lcom/google/android/gms/internal/ads/pv1;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtn;->e:Lcom/google/android/gms/internal/ads/l10;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/l10;->i()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtn;->e:Lcom/google/android/gms/internal/ads/l10;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/l10;->i()F

    move-result v0

    return v0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtn;->e:Lcom/google/android/gms/internal/ads/l10;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/l10;->n()Lcom/google/android/gms/internal/ads/zzwk;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbtn;->a()F

    move-result v0

    return v0

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtn;->f:Lcom/google/android/gms/dynamic/IObjectWrapper;

    if-eqz v0, :cond_3

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbtn;->a(Lcom/google/android/gms/dynamic/IObjectWrapper;)F

    move-result v0

    return v0

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtn;->e:Lcom/google/android/gms/internal/ads/l10;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/l10;->q()Lcom/google/android/gms/internal/ads/zzaas;

    move-result-object v0

    if-nez v0, :cond_4

    return v1

    :cond_4
    if-eqz v0, :cond_5

    .line 11
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaas;->getWidth()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaas;->getHeight()I

    move-result v2

    if-eq v2, v3, :cond_5

    .line 12
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaas;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    :goto_0
    cmpl-float v1, v2, v1

    if-eqz v1, :cond_6

    return v2

    .line 13
    :cond_6
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaas;->zzqf()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbtn;->a(Lcom/google/android/gms/dynamic/IObjectWrapper;)F

    move-result v0

    return v0
.end method

.method public final zzqh()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtn;->f:Lcom/google/android/gms/dynamic/IObjectWrapper;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtn;->e:Lcom/google/android/gms/internal/ads/l10;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/l10;->q()Lcom/google/android/gms/internal/ads/zzaas;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaas;->zzqf()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method

.method public final zzs(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/aw1;->S1:Lcom/google/android/gms/internal/ads/pv1;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->e()Lcom/google/android/gms/internal/ads/wv1;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/wv1;->a(Lcom/google/android/gms/internal/ads/pv1;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbtn;->f:Lcom/google/android/gms/dynamic/IObjectWrapper;

    :cond_0
    return-void
.end method
