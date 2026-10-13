.class public final Lcom/google/android/gms/internal/ads/uj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# instance fields
.field private final a:I

.field public final b:I

.field public final c:I


# direct methods
.method private constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/ads/uj;->a:I

    .line 3
    iput p2, p0, Lcom/google/android/gms/internal/ads/uj;->c:I

    .line 4
    iput p3, p0, Lcom/google/android/gms/internal/ads/uj;->b:I

    return-void
.end method

.method public static a(II)Lcom/google/android/gms/internal/ads/uj;
    .locals 2

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/ads/uj;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/internal/ads/uj;-><init>(III)V

    return-object v0
.end method

.method public static a(Lcom/google/android/gms/internal/ads/zztw;)Lcom/google/android/gms/internal/ads/uj;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zztw;->h:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    new-instance p0, Lcom/google/android/gms/internal/ads/uj;

    const/4 v0, 0x3

    invoke-direct {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/uj;-><init>(III)V

    return-object p0

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zztw;->m:Z

    if-eqz v0, :cond_1

    .line 4
    new-instance p0, Lcom/google/android/gms/internal/ads/uj;

    const/4 v0, 0x2

    invoke-direct {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/uj;-><init>(III)V

    return-object p0

    .line 5
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zztw;->l:Z

    if-eqz v0, :cond_2

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/uj;->f()Lcom/google/android/gms/internal/ads/uj;

    move-result-object p0

    return-object p0

    .line 7
    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/ads/zztw;->j:I

    iget p0, p0, Lcom/google/android/gms/internal/ads/zztw;->g:I

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/uj;->a(II)Lcom/google/android/gms/internal/ads/uj;

    move-result-object p0

    return-object p0
.end method

.method public static f()Lcom/google/android/gms/internal/ads/uj;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/uj;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/google/android/gms/internal/ads/uj;-><init>(III)V

    return-object v0
.end method

.method public static g()Lcom/google/android/gms/internal/ads/uj;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/uj;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1, v1}, Lcom/google/android/gms/internal/ads/uj;-><init>(III)V

    return-object v0
.end method

.method public static h()Lcom/google/android/gms/internal/ads/uj;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/uj;

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-direct {v0, v2, v1, v1}, Lcom/google/android/gms/internal/ads/uj;-><init>(III)V

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .line 9
    iget v0, p0, Lcom/google/android/gms/internal/ads/uj;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/uj;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/uj;->a:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/uj;->a:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/uj;->a:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
