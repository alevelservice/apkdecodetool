.class public final Lcom/google/android/gms/internal/ads/zztw;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-ads-lite@@18.1.0"


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "AdSizeParcelCreator"
.end annotation

.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Reserved;
    value = {
        0x1
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/ads/zztw;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final e:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x2
    .end annotation
.end field

.field public final f:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x3
    .end annotation
.end field

.field public final g:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x4
    .end annotation
.end field

.field public final h:Z
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x5
    .end annotation
.end field

.field public final i:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x6
    .end annotation
.end field

.field public final j:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x7
    .end annotation
.end field

.field public final k:[Lcom/google/android/gms/internal/ads/zztw;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x8
    .end annotation
.end field

.field public final l:Z
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x9
    .end annotation
.end field

.field public final m:Z
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0xa
    .end annotation
.end field

.field public n:Z
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0xb
    .end annotation
.end field

.field public o:Z
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0xc
    .end annotation
.end field

.field private p:Z
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0xd
    .end annotation
.end field

.field public q:Z
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0xe
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/au1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/au1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zztw;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 14

    const-string v1, "interstitial_mb"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/internal/ads/zztw;-><init>(Ljava/lang/String;IIZII[Lcom/google/android/gms/internal/ads/zztw;ZZZZZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/d;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/ads/d;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zztw;-><init>(Landroid/content/Context;[Lcom/google/android/gms/ads/d;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Lcom/google/android/gms/ads/d;)V
    .locals 12

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x0

    .line 4
    aget-object v1, p2, v0

    .line 5
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zztw;->h:Z

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/ads/d;->c()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zztw;->m:Z

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/ads/d;->d()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zztw;->q:Z

    .line 8
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zztw;->m:Z

    if-eqz v2, :cond_0

    .line 9
    sget-object v2, Lcom/google/android/gms/ads/d;->e:Lcom/google/android/gms/ads/d;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/d;->b()I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/internal/ads/zztw;->i:I

    .line 10
    sget-object v2, Lcom/google/android/gms/ads/d;->e:Lcom/google/android/gms/ads/d;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/d;->a()I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/internal/ads/zztw;->f:I

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/ads/d;->b()I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/internal/ads/zztw;->i:I

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/ads/d;->a()I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/internal/ads/zztw;->f:I

    .line 13
    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/ads/zztw;->i:I

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 14
    :goto_1
    iget v3, p0, Lcom/google/android/gms/internal/ads/zztw;->f:I

    const/4 v5, -0x2

    if-ne v3, v5, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    .line 15
    :goto_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    if-eqz v2, :cond_4

    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->a()Lcom/google/android/gms/internal/ads/gd;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/gd;->d(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->a()Lcom/google/android/gms/internal/ads/gd;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/gd;->e(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 18
    iget v6, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->a()Lcom/google/android/gms/internal/ads/gd;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/gd;->f(Landroid/content/Context;)I

    move-result v7

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/google/android/gms/internal/ads/zztw;->j:I

    goto :goto_3

    .line 20
    :cond_3
    iget v6, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 21
    iput v6, p0, Lcom/google/android/gms/internal/ads/zztw;->j:I

    .line 22
    :goto_3
    iget v6, p0, Lcom/google/android/gms/internal/ads/zztw;->j:I

    int-to-float v6, v6

    iget v7, v5, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v6, v7

    float-to-double v6, v6

    double-to-int v8, v6

    int-to-double v9, v8

    .line 23
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v6, v9

    const-wide v9, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v11, v6, v9

    if-ltz v11, :cond_5

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 24
    :cond_4
    iget v8, p0, Lcom/google/android/gms/internal/ads/zztw;->i:I

    .line 25
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->a()Lcom/google/android/gms/internal/ads/gd;

    iget v6, p0, Lcom/google/android/gms/internal/ads/zztw;->i:I

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/gd;->a(Landroid/util/DisplayMetrics;I)I

    move-result v6

    iput v6, p0, Lcom/google/android/gms/internal/ads/zztw;->j:I

    :cond_5
    :goto_4
    if-eqz v3, :cond_6

    .line 26
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zztw;->c(Landroid/util/DisplayMetrics;)I

    move-result v6

    goto :goto_5

    .line 27
    :cond_6
    iget v6, p0, Lcom/google/android/gms/internal/ads/zztw;->f:I

    .line 28
    :goto_5
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->a()Lcom/google/android/gms/internal/ads/gd;

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/gd;->a(Landroid/util/DisplayMetrics;I)I

    move-result v5

    iput v5, p0, Lcom/google/android/gms/internal/ads/zztw;->g:I

    if-nez v2, :cond_9

    if-eqz v3, :cond_7

    goto :goto_6

    .line 29
    :cond_7
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zztw;->m:Z

    if-eqz v2, :cond_8

    const-string v1, "320x50_mb"

    .line 30
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zztw;->e:Ljava/lang/String;

    goto :goto_7

    .line 31
    :cond_8
    invoke-virtual {v1}, Lcom/google/android/gms/ads/d;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zztw;->e:Ljava/lang/String;

    goto :goto_7

    :cond_9
    :goto_6
    const/16 v1, 0x1a

    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_as"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zztw;->e:Ljava/lang/String;

    .line 33
    :goto_7
    array-length v1, p2

    if-le v1, v4, :cond_a

    .line 34
    array-length v1, p2

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zztw;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zztw;->k:[Lcom/google/android/gms/internal/ads/zztw;

    const/4 v1, 0x0

    .line 35
    :goto_8
    array-length v2, p2

    if-ge v1, v2, :cond_b

    .line 36
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zztw;->k:[Lcom/google/android/gms/internal/ads/zztw;

    new-instance v3, Lcom/google/android/gms/internal/ads/zztw;

    aget-object v4, p2, v1

    invoke-direct {v3, p1, v4}, Lcom/google/android/gms/internal/ads/zztw;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/d;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_a
    const/4 p1, 0x0

    .line 37
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztw;->k:[Lcom/google/android/gms/internal/ads/zztw;

    .line 38
    :cond_b
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zztw;->l:Z

    .line 39
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zztw;->n:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;IIZII[Lcom/google/android/gms/internal/ads/zztw;ZZZZZZ)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x2
        .end annotation
    .end param
    .param p2    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x3
        .end annotation
    .end param
    .param p3    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x4
        .end annotation
    .end param
    .param p4    # Z
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x5
        .end annotation
    .end param
    .param p5    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x6
        .end annotation
    .end param
    .param p6    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x7
        .end annotation
    .end param
    .param p7    # [Lcom/google/android/gms/internal/ads/zztw;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x8
        .end annotation
    .end param
    .param p8    # Z
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x9
        .end annotation
    .end param
    .param p9    # Z
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0xa
        .end annotation
    .end param
    .param p10    # Z
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0xb
        .end annotation
    .end param
    .param p11    # Z
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0xc
        .end annotation
    .end param
    .param p12    # Z
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0xd
        .end annotation
    .end param
    .param p13    # Z
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0xe
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    .line 40
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztw;->e:Ljava/lang/String;

    .line 42
    iput p2, p0, Lcom/google/android/gms/internal/ads/zztw;->f:I

    .line 43
    iput p3, p0, Lcom/google/android/gms/internal/ads/zztw;->g:I

    .line 44
    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zztw;->h:Z

    .line 45
    iput p5, p0, Lcom/google/android/gms/internal/ads/zztw;->i:I

    .line 46
    iput p6, p0, Lcom/google/android/gms/internal/ads/zztw;->j:I

    .line 47
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zztw;->k:[Lcom/google/android/gms/internal/ads/zztw;

    .line 48
    iput-boolean p8, p0, Lcom/google/android/gms/internal/ads/zztw;->l:Z

    .line 49
    iput-boolean p9, p0, Lcom/google/android/gms/internal/ads/zztw;->m:Z

    .line 50
    iput-boolean p10, p0, Lcom/google/android/gms/internal/ads/zztw;->n:Z

    .line 51
    iput-boolean p11, p0, Lcom/google/android/gms/internal/ads/zztw;->o:Z

    .line 52
    iput-boolean p12, p0, Lcom/google/android/gms/internal/ads/zztw;->p:Z

    .line 53
    iput-boolean p13, p0, Lcom/google/android/gms/internal/ads/zztw;->q:Z

    return-void
.end method

.method public static a(Landroid/util/DisplayMetrics;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    return p0
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zztw;
    .locals 14

    .line 2
    new-instance p0, Lcom/google/android/gms/internal/ads/zztw;

    const-string v1, "320x50_mb"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/internal/ads/zztw;-><init>(Ljava/lang/String;IIZII[Lcom/google/android/gms/internal/ads/zztw;ZZZZZZ)V

    return-object p0
.end method

.method public static b(Landroid/util/DisplayMetrics;)I
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zztw;->c(Landroid/util/DisplayMetrics;)I

    move-result v0

    int-to-float v0, v0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, p0

    float-to-int p0, v0

    return p0
.end method

.method private static c(Landroid/util/DisplayMetrics;)I
    .locals 1

    .line 1
    iget v0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, p0

    float-to-int p0, v0

    const/16 v0, 0x190

    if-gt p0, v0, :cond_0

    const/16 p0, 0x20

    return p0

    :cond_0
    const/16 v0, 0x2d0

    if-gt p0, v0, :cond_1

    const/16 p0, 0x32

    return p0

    :cond_1
    const/16 p0, 0x5a

    return p0
.end method

.method public static j()Lcom/google/android/gms/internal/ads/zztw;
    .locals 15

    .line 1
    new-instance v14, Lcom/google/android/gms/internal/ads/zztw;

    const-string v1, "reward_mb"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, v14

    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/internal/ads/zztw;-><init>(Ljava/lang/String;IIZII[Lcom/google/android/gms/internal/ads/zztw;ZZZZZZ)V

    return-object v14
.end method

.method public static k()Lcom/google/android/gms/internal/ads/zztw;
    .locals 15

    .line 1
    new-instance v14, Lcom/google/android/gms/internal/ads/zztw;

    const-string v1, "invalid"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, v14

    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/internal/ads/zztw;-><init>(Ljava/lang/String;IIZII[Lcom/google/android/gms/internal/ads/zztw;ZZZZZZ)V

    return-object v14
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zztw;->e:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 3
    iget v1, p0, Lcom/google/android/gms/internal/ads/zztw;->f:I

    const/4 v3, 0x3

    invoke-static {p1, v3, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V

    .line 4
    iget v1, p0, Lcom/google/android/gms/internal/ads/zztw;->g:I

    const/4 v3, 0x4

    invoke-static {p1, v3, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V

    .line 5
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zztw;->h:Z

    const/4 v3, 0x5

    invoke-static {p1, v3, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    .line 6
    iget v1, p0, Lcom/google/android/gms/internal/ads/zztw;->i:I

    const/4 v3, 0x6

    invoke-static {p1, v3, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V

    .line 7
    iget v1, p0, Lcom/google/android/gms/internal/ads/zztw;->j:I

    const/4 v3, 0x7

    invoke-static {p1, v3, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V

    .line 8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zztw;->k:[Lcom/google/android/gms/internal/ads/zztw;

    const/16 v3, 0x8

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    .line 9
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zztw;->l:Z

    const/16 v1, 0x9

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    .line 10
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zztw;->m:Z

    const/16 v1, 0xa

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    .line 11
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zztw;->n:Z

    const/16 v1, 0xb

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    .line 12
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zztw;->o:Z

    const/16 v1, 0xc

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    .line 13
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zztw;->p:Z

    const/16 v1, 0xd

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    .line 14
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zztw;->q:Z

    const/16 v1, 0xe

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    .line 15
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I)V

    return-void
.end method
