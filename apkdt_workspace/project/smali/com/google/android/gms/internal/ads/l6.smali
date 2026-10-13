.class public final Lcom/google/android/gms/internal/ads/l6;
.super Lcom/google/android/gms/internal/ads/k6;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/o0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/k6;",
        "Lcom/google/android/gms/internal/ads/o0<",
        "Lcom/google/android/gms/internal/ads/fi;",
        ">;"
    }
.end annotation


# instance fields
.field private final c:Lcom/google/android/gms/internal/ads/fi;

.field private final d:Landroid/content/Context;

.field private final e:Landroid/view/WindowManager;

.field private final f:Lcom/google/android/gms/internal/ads/lv1;

.field private g:Landroid/util/DisplayMetrics;

.field private h:F

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/fi;Landroid/content/Context;Lcom/google/android/gms/internal/ads/lv1;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/k6;-><init>(Lcom/google/android/gms/internal/ads/fi;)V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/l6;->i:I

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/ads/l6;->j:I

    .line 4
    iput v0, p0, Lcom/google/android/gms/internal/ads/l6;->l:I

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/ads/l6;->m:I

    .line 6
    iput v0, p0, Lcom/google/android/gms/internal/ads/l6;->n:I

    .line 7
    iput v0, p0, Lcom/google/android/gms/internal/ads/l6;->o:I

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/l6;->c:Lcom/google/android/gms/internal/ads/fi;

    .line 9
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/l6;->d:Landroid/content/Context;

    .line 10
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/l6;->f:Lcom/google/android/gms/internal/ads/lv1;

    const-string p1, "window"

    .line 11
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/l6;->e:Landroid/view/WindowManager;

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/l6;->d:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->c()Lcom/google/android/gms/internal/ads/wa;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/l6;->d:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/wa;->b(Landroid/app/Activity;)[I

    move-result-object v0

    aget v1, v0, v1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/l6;->c:Lcom/google/android/gms/internal/ads/fi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/fi;->zzyw()Lcom/google/android/gms/internal/ads/uj;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/l6;->c:Lcom/google/android/gms/internal/ads/fi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/fi;->zzyw()Lcom/google/android/gms/internal/ads/uj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/uj;->b()Z

    move-result v0

    if-nez v0, :cond_4

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/l6;->c:Lcom/google/android/gms/internal/ads/fi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/fi;->getWidth()I

    move-result v0

    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/l6;->c:Lcom/google/android/gms/internal/ads/fi;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/fi;->getHeight()I

    move-result v2

    .line 6
    sget-object v3, Lcom/google/android/gms/internal/ads/aw1;->P:Lcom/google/android/gms/internal/ads/pv1;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->e()Lcom/google/android/gms/internal/ads/wv1;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/wv1;->a(Lcom/google/android/gms/internal/ads/pv1;)Ljava/lang/Object;

    move-result-object v3

    .line 8
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez v0, :cond_2

    .line 9
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/l6;->c:Lcom/google/android/gms/internal/ads/fi;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/fi;->zzyw()Lcom/google/android/gms/internal/ads/uj;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/l6;->c:Lcom/google/android/gms/internal/ads/fi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/fi;->zzyw()Lcom/google/android/gms/internal/ads/uj;

    move-result-object v0

    iget v0, v0, Lcom/google/android/gms/internal/ads/uj;->c:I

    :cond_2
    if-nez v2, :cond_3

    .line 11
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/l6;->c:Lcom/google/android/gms/internal/ads/fi;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/fi;->zzyw()Lcom/google/android/gms/internal/ads/uj;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 12
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/l6;->c:Lcom/google/android/gms/internal/ads/fi;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/fi;->zzyw()Lcom/google/android/gms/internal/ads/uj;

    move-result-object v2

    iget v2, v2, Lcom/google/android/gms/internal/ads/uj;->b:I

    .line 13
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->a()Lcom/google/android/gms/internal/ads/gd;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/l6;->d:Landroid/content/Context;

    invoke-virtual {v3, v4, v0}, Lcom/google/android/gms/internal/ads/gd;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/l6;->n:I

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->a()Lcom/google/android/gms/internal/ads/gd;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/l6;->d:Landroid/content/Context;

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/ads/gd;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/l6;->o:I

    :cond_4
    sub-int v0, p2, v1

    .line 15
    iget v1, p0, Lcom/google/android/gms/internal/ads/l6;->n:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/l6;->o:I

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/k6;->b(IIII)V

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/l6;->c:Lcom/google/android/gms/internal/ads/fi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/fi;->zzyy()Lcom/google/android/gms/internal/ads/oj;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/oj;->a(II)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 8

    .line 17
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/l6;->g:Landroid/util/DisplayMetrics;

    .line 18
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/l6;->e:Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 19
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/l6;->g:Landroid/util/DisplayMetrics;

    invoke-virtual {p1, p2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 20
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/l6;->g:Landroid/util/DisplayMetrics;

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    iput p2, p0, Lcom/google/android/gms/internal/ads/l6;->h:F

    .line 21
    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/l6;->k:I

    .line 22
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->a()Lcom/google/android/gms/internal/ads/gd;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/l6;->g:Landroid/util/DisplayMetrics;

    iget p2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/gd;->b(Landroid/util/DisplayMetrics;I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/l6;->i:I

    .line 23
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->a()Lcom/google/android/gms/internal/ads/gd;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/l6;->g:Landroid/util/DisplayMetrics;

    iget p2, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/gd;->b(Landroid/util/DisplayMetrics;I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/l6;->j:I

    .line 24
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/l6;->c:Lcom/google/android/gms/internal/ads/fi;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/fi;->zzxl()Landroid/app/Activity;

    move-result-object p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 25
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 26
    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->c()Lcom/google/android/gms/internal/ads/wa;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/wa;->c(Landroid/app/Activity;)[I

    move-result-object p1

    .line 27
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->a()Lcom/google/android/gms/internal/ads/gd;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/l6;->g:Landroid/util/DisplayMetrics;

    aget v2, p1, v0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/gd;->b(Landroid/util/DisplayMetrics;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/l6;->l:I

    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->a()Lcom/google/android/gms/internal/ads/gd;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/l6;->g:Landroid/util/DisplayMetrics;

    aget p1, p1, p2

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/gd;->b(Landroid/util/DisplayMetrics;I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/l6;->m:I

    goto :goto_1

    .line 29
    :cond_1
    :goto_0
    iget p1, p0, Lcom/google/android/gms/internal/ads/l6;->i:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/l6;->l:I

    .line 30
    iget p1, p0, Lcom/google/android/gms/internal/ads/l6;->j:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/l6;->m:I

    .line 31
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/l6;->c:Lcom/google/android/gms/internal/ads/fi;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/fi;->zzyw()Lcom/google/android/gms/internal/ads/uj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/uj;->b()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 32
    iget p1, p0, Lcom/google/android/gms/internal/ads/l6;->i:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/l6;->n:I

    .line 33
    iget p1, p0, Lcom/google/android/gms/internal/ads/l6;->j:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/l6;->o:I

    goto :goto_2

    .line 34
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/l6;->c:Lcom/google/android/gms/internal/ads/fi;

    invoke-interface {p1, v0, v0}, Lcom/google/android/gms/internal/ads/fi;->measure(II)V

    .line 35
    :goto_2
    iget v2, p0, Lcom/google/android/gms/internal/ads/l6;->i:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/l6;->j:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/l6;->l:I

    iget v5, p0, Lcom/google/android/gms/internal/ads/l6;->m:I

    iget v6, p0, Lcom/google/android/gms/internal/ads/l6;->h:F

    iget v7, p0, Lcom/google/android/gms/internal/ads/l6;->k:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/k6;->a(IIIIFI)V

    .line 36
    new-instance p1, Lcom/google/android/gms/internal/ads/i6;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/i6;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/l6;->f:Lcom/google/android/gms/internal/ads/lv1;

    .line 37
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/lv1;->a()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/i6;->c(Z)Lcom/google/android/gms/internal/ads/i6;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/l6;->f:Lcom/google/android/gms/internal/ads/lv1;

    .line 38
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/lv1;->b()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/i6;->b(Z)Lcom/google/android/gms/internal/ads/i6;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/l6;->f:Lcom/google/android/gms/internal/ads/lv1;

    .line 39
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/lv1;->d()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/i6;->d(Z)Lcom/google/android/gms/internal/ads/i6;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/l6;->f:Lcom/google/android/gms/internal/ads/lv1;

    .line 40
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/lv1;->c()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/i6;->e(Z)Lcom/google/android/gms/internal/ads/i6;

    .line 41
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/i6;->a(Z)Lcom/google/android/gms/internal/ads/i6;

    .line 42
    new-instance v1, Lcom/google/android/gms/internal/ads/g6;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/internal/ads/g6;-><init>(Lcom/google/android/gms/internal/ads/i6;Lcom/google/android/gms/internal/ads/j6;)V

    .line 43
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/l6;->c:Lcom/google/android/gms/internal/ads/fi;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/g6;->a()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "onDeviceFeaturesReceived"

    invoke-interface {p1, v2, v1}, Lcom/google/android/gms/internal/ads/p1;->zza(Ljava/lang/String;Lorg/json/JSONObject;)V

    const/4 p1, 0x2

    new-array v1, p1, [I

    .line 44
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/l6;->c:Lcom/google/android/gms/internal/ads/fi;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/fi;->getLocationOnScreen([I)V

    .line 45
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->a()Lcom/google/android/gms/internal/ads/gd;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/l6;->d:Landroid/content/Context;

    aget v0, v1, v0

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/ads/gd;->a(Landroid/content/Context;I)I

    move-result v0

    .line 46
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->a()Lcom/google/android/gms/internal/ads/gd;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/l6;->d:Landroid/content/Context;

    aget p2, v1, p2

    invoke-virtual {v2, v3, p2}, Lcom/google/android/gms/internal/ads/gd;->a(Landroid/content/Context;I)I

    move-result p2

    .line 47
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/ads/l6;->a(II)V

    .line 48
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/qd;->a(I)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "Dispatching Ready Event."

    .line 49
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/qd;->c(Ljava/lang/String;)V

    .line 50
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/l6;->c:Lcom/google/android/gms/internal/ads/fi;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/fi;->zzxp()Lcom/google/android/gms/internal/ads/zzawv;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzawv;->e:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/k6;->b(Ljava/lang/String;)V

    return-void
.end method
