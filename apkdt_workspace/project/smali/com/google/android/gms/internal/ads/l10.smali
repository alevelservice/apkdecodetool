.class public final Lcom/google/android/gms/internal/ads/l10;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# instance fields
.field private a:I

.field private b:Lcom/google/android/gms/internal/ads/zzwk;

.field private c:Lcom/google/android/gms/internal/ads/zzaak;

.field private d:Landroid/view/View;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzxd;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/google/android/gms/internal/ads/zzxd;

.field private h:Landroid/os/Bundle;

.field private i:Lcom/google/android/gms/internal/ads/fi;

.field private j:Lcom/google/android/gms/internal/ads/fi;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private k:Lcom/google/android/gms/dynamic/IObjectWrapper;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private l:Landroid/view/View;

.field private m:Lcom/google/android/gms/dynamic/IObjectWrapper;

.field private n:D

.field private o:Lcom/google/android/gms/internal/ads/zzaas;

.field private p:Lcom/google/android/gms/internal/ads/zzaas;

.field private q:Ljava/lang/String;

.field private r:La/e/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/e/g<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzaae;",
            ">;"
        }
    .end annotation
.end field

.field private s:La/e/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/e/g<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private t:F

.field private u:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, La/e/g;

    invoke-direct {v0}, La/e/g;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/l10;->r:La/e/g;

    .line 3
    new-instance v0, La/e/g;

    invoke-direct {v0}, La/e/g;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/l10;->s:La/e/g;

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/l10;->f:Ljava/util/List;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/zzajq;)Lcom/google/android/gms/internal/ads/l10;
    .locals 16

    .line 78
    :try_start_0
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzajq;->getVideoController()Lcom/google/android/gms/internal/ads/zzwk;

    move-result-object v0

    .line 79
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzajq;->zzqk()Lcom/google/android/gms/internal/ads/zzaak;

    move-result-object v1

    .line 80
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzajq;->zzru()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/l10;->b(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 81
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzajq;->getHeadline()Ljava/lang/String;

    move-result-object v3

    .line 82
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzajq;->getImages()Ljava/util/List;

    move-result-object v4

    .line 83
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzajq;->getBody()Ljava/lang/String;

    move-result-object v5

    .line 84
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzajq;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 85
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzajq;->getCallToAction()Ljava/lang/String;

    move-result-object v7

    .line 86
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzajq;->zzrv()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/l10;->b(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 87
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzajq;->zzql()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v9

    .line 88
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzajq;->getStore()Ljava/lang/String;

    move-result-object v10

    .line 89
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzajq;->getPrice()Ljava/lang/String;

    move-result-object v11

    .line 90
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzajq;->getStarRating()D

    move-result-wide v12

    .line 91
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzajq;->zzqj()Lcom/google/android/gms/internal/ads/zzaas;

    move-result-object v14

    .line 92
    new-instance v15, Lcom/google/android/gms/internal/ads/l10;

    invoke-direct {v15}, Lcom/google/android/gms/internal/ads/l10;-><init>()V

    move-object/from16 p0, v14

    const/4 v14, 0x2

    .line 93
    iput v14, v15, Lcom/google/android/gms/internal/ads/l10;->a:I

    .line 94
    iput-object v0, v15, Lcom/google/android/gms/internal/ads/l10;->b:Lcom/google/android/gms/internal/ads/zzwk;

    .line 95
    iput-object v1, v15, Lcom/google/android/gms/internal/ads/l10;->c:Lcom/google/android/gms/internal/ads/zzaak;

    .line 96
    iput-object v2, v15, Lcom/google/android/gms/internal/ads/l10;->d:Landroid/view/View;

    const-string v0, "headline"

    .line 97
    invoke-virtual {v15, v0, v3}, Lcom/google/android/gms/internal/ads/l10;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iput-object v4, v15, Lcom/google/android/gms/internal/ads/l10;->e:Ljava/util/List;

    const-string v0, "body"

    .line 99
    invoke-virtual {v15, v0, v5}, Lcom/google/android/gms/internal/ads/l10;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iput-object v6, v15, Lcom/google/android/gms/internal/ads/l10;->h:Landroid/os/Bundle;

    const-string v0, "call_to_action"

    .line 101
    invoke-virtual {v15, v0, v7}, Lcom/google/android/gms/internal/ads/l10;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iput-object v8, v15, Lcom/google/android/gms/internal/ads/l10;->l:Landroid/view/View;

    .line 103
    iput-object v9, v15, Lcom/google/android/gms/internal/ads/l10;->m:Lcom/google/android/gms/dynamic/IObjectWrapper;

    const-string v0, "store"

    .line 104
    invoke-virtual {v15, v0, v10}, Lcom/google/android/gms/internal/ads/l10;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "price"

    .line 105
    invoke-virtual {v15, v0, v11}, Lcom/google/android/gms/internal/ads/l10;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iput-wide v12, v15, Lcom/google/android/gms/internal/ads/l10;->n:D

    move-object/from16 v0, p0

    .line 107
    iput-object v0, v15, Lcom/google/android/gms/internal/ads/l10;->o:Lcom/google/android/gms/internal/ads/zzaas;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v15

    :catch_0
    move-exception v0

    const-string v1, "Failed to get native ad from app install ad mapper"

    .line 108
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/qd;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static a(Lcom/google/android/gms/internal/ads/zzajr;)Lcom/google/android/gms/internal/ads/l10;
    .locals 13

    .line 51
    :try_start_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzajr;->getVideoController()Lcom/google/android/gms/internal/ads/zzwk;

    move-result-object v0

    .line 52
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzajr;->zzqk()Lcom/google/android/gms/internal/ads/zzaak;

    move-result-object v1

    .line 53
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzajr;->zzru()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/l10;->b(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 54
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzajr;->getHeadline()Ljava/lang/String;

    move-result-object v3

    .line 55
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzajr;->getImages()Ljava/util/List;

    move-result-object v4

    .line 56
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzajr;->getBody()Ljava/lang/String;

    move-result-object v5

    .line 57
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzajr;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 58
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzajr;->getCallToAction()Ljava/lang/String;

    move-result-object v7

    .line 59
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzajr;->zzrv()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/l10;->b(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 60
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzajr;->zzql()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v9

    .line 61
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzajr;->getAdvertiser()Ljava/lang/String;

    move-result-object v10

    .line 62
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzajr;->zzqm()Lcom/google/android/gms/internal/ads/zzaas;

    move-result-object p0

    .line 63
    new-instance v11, Lcom/google/android/gms/internal/ads/l10;

    invoke-direct {v11}, Lcom/google/android/gms/internal/ads/l10;-><init>()V

    const/4 v12, 0x1

    .line 64
    iput v12, v11, Lcom/google/android/gms/internal/ads/l10;->a:I

    .line 65
    iput-object v0, v11, Lcom/google/android/gms/internal/ads/l10;->b:Lcom/google/android/gms/internal/ads/zzwk;

    .line 66
    iput-object v1, v11, Lcom/google/android/gms/internal/ads/l10;->c:Lcom/google/android/gms/internal/ads/zzaak;

    .line 67
    iput-object v2, v11, Lcom/google/android/gms/internal/ads/l10;->d:Landroid/view/View;

    const-string v0, "headline"

    .line 68
    invoke-virtual {v11, v0, v3}, Lcom/google/android/gms/internal/ads/l10;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iput-object v4, v11, Lcom/google/android/gms/internal/ads/l10;->e:Ljava/util/List;

    const-string v0, "body"

    .line 70
    invoke-virtual {v11, v0, v5}, Lcom/google/android/gms/internal/ads/l10;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iput-object v6, v11, Lcom/google/android/gms/internal/ads/l10;->h:Landroid/os/Bundle;

    const-string v0, "call_to_action"

    .line 72
    invoke-virtual {v11, v0, v7}, Lcom/google/android/gms/internal/ads/l10;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iput-object v8, v11, Lcom/google/android/gms/internal/ads/l10;->l:Landroid/view/View;

    .line 74
    iput-object v9, v11, Lcom/google/android/gms/internal/ads/l10;->m:Lcom/google/android/gms/dynamic/IObjectWrapper;

    const-string v0, "advertiser"

    .line 75
    invoke-virtual {v11, v0, v10}, Lcom/google/android/gms/internal/ads/l10;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iput-object p0, v11, Lcom/google/android/gms/internal/ads/l10;->p:Lcom/google/android/gms/internal/ads/zzaas;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v11

    :catch_0
    move-exception p0

    const-string v0, "Failed to get native ad from content ad mapper"

    .line 77
    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/qd;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Lcom/google/android/gms/internal/ads/zzajw;)Lcom/google/android/gms/internal/ads/l10;
    .locals 18

    .line 109
    :try_start_0
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzajw;->getVideoController()Lcom/google/android/gms/internal/ads/zzwk;

    move-result-object v1

    .line 110
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzajw;->zzqk()Lcom/google/android/gms/internal/ads/zzaak;

    move-result-object v2

    .line 111
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzajw;->zzru()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/l10;->b(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/view/View;

    .line 112
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzajw;->getHeadline()Ljava/lang/String;

    move-result-object v4

    .line 113
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzajw;->getImages()Ljava/util/List;

    move-result-object v5

    .line 114
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzajw;->getBody()Ljava/lang/String;

    move-result-object v6

    .line 115
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzajw;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 116
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzajw;->getCallToAction()Ljava/lang/String;

    move-result-object v8

    .line 117
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzajw;->zzrv()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/l10;->b(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/view/View;

    .line 118
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzajw;->zzql()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v10

    .line 119
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzajw;->getStore()Ljava/lang/String;

    move-result-object v11

    .line 120
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzajw;->getPrice()Ljava/lang/String;

    move-result-object v12

    .line 121
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzajw;->getStarRating()D

    move-result-wide v13

    .line 122
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzajw;->zzqj()Lcom/google/android/gms/internal/ads/zzaas;

    move-result-object v15

    .line 123
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzajw;->getAdvertiser()Ljava/lang/String;

    move-result-object v16

    .line 124
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzajw;->getMediaContentAspectRatio()F

    move-result v17

    .line 125
    invoke-static/range {v1 .. v17}, Lcom/google/android/gms/internal/ads/l10;->a(Lcom/google/android/gms/internal/ads/zzwk;Lcom/google/android/gms/internal/ads/zzaak;Landroid/view/View;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/view/View;Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Ljava/lang/String;DLcom/google/android/gms/internal/ads/zzaas;Ljava/lang/String;F)Lcom/google/android/gms/internal/ads/l10;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Failed to get native ad assets from unified ad mapper"

    .line 126
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/qd;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private static a(Lcom/google/android/gms/internal/ads/zzwk;Lcom/google/android/gms/internal/ads/zzaak;Landroid/view/View;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/view/View;Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Ljava/lang/String;DLcom/google/android/gms/internal/ads/zzaas;Ljava/lang/String;F)Lcom/google/android/gms/internal/ads/l10;
    .locals 3

    .line 127
    new-instance v0, Lcom/google/android/gms/internal/ads/l10;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/l10;-><init>()V

    const/4 v1, 0x6

    .line 128
    iput v1, v0, Lcom/google/android/gms/internal/ads/l10;->a:I

    move-object v1, p0

    .line 129
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/l10;->b:Lcom/google/android/gms/internal/ads/zzwk;

    move-object v1, p1

    .line 130
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/l10;->c:Lcom/google/android/gms/internal/ads/zzaak;

    move-object v1, p2

    .line 131
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/l10;->d:Landroid/view/View;

    const-string v1, "headline"

    move-object v2, p3

    .line 132
    invoke-virtual {v0, v1, p3}, Lcom/google/android/gms/internal/ads/l10;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, p4

    .line 133
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/l10;->e:Ljava/util/List;

    const-string v1, "body"

    move-object v2, p5

    .line 134
    invoke-virtual {v0, v1, p5}, Lcom/google/android/gms/internal/ads/l10;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, p6

    .line 135
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/l10;->h:Landroid/os/Bundle;

    const-string v1, "call_to_action"

    move-object v2, p7

    .line 136
    invoke-virtual {v0, v1, p7}, Lcom/google/android/gms/internal/ads/l10;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, p8

    .line 137
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/l10;->l:Landroid/view/View;

    move-object v1, p9

    .line 138
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/l10;->m:Lcom/google/android/gms/dynamic/IObjectWrapper;

    const-string v1, "store"

    move-object v2, p10

    .line 139
    invoke-virtual {v0, v1, p10}, Lcom/google/android/gms/internal/ads/l10;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "price"

    move-object v2, p11

    .line 140
    invoke-virtual {v0, v1, p11}, Lcom/google/android/gms/internal/ads/l10;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v1, p12

    .line 141
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/l10;->n:D

    move-object/from16 v1, p14

    .line 142
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/l10;->o:Lcom/google/android/gms/internal/ads/zzaas;

    const-string v1, "advertiser"

    move-object/from16 v2, p15

    .line 143
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/l10;->a(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v1, p16

    .line 144
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/l10;->a(F)V

    return-object v0
.end method

.method private final declared-synchronized a(F)V
    .locals 0

    monitor-enter p0

    .line 29
    :try_start_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/l10;->t:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static b(Lcom/google/android/gms/internal/ads/zzajq;)Lcom/google/android/gms/internal/ads/l10;
    .locals 18

    .line 10
    :try_start_0
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzajq;->getVideoController()Lcom/google/android/gms/internal/ads/zzwk;

    move-result-object v1

    .line 11
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzajq;->zzqk()Lcom/google/android/gms/internal/ads/zzaak;

    move-result-object v2

    .line 12
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzajq;->zzru()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/l10;->b(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/view/View;

    .line 13
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzajq;->getHeadline()Ljava/lang/String;

    move-result-object v4

    .line 14
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzajq;->getImages()Ljava/util/List;

    move-result-object v5

    .line 15
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzajq;->getBody()Ljava/lang/String;

    move-result-object v6

    .line 16
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzajq;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 17
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzajq;->getCallToAction()Ljava/lang/String;

    move-result-object v8

    .line 18
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzajq;->zzrv()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/l10;->b(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/view/View;

    .line 19
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzajq;->zzql()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v10

    .line 20
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzajq;->getStore()Ljava/lang/String;

    move-result-object v11

    .line 21
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzajq;->getPrice()Ljava/lang/String;

    move-result-object v12

    .line 22
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzajq;->getStarRating()D

    move-result-wide v13

    .line 23
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzajq;->zzqj()Lcom/google/android/gms/internal/ads/zzaas;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 24
    invoke-static/range {v1 .. v17}, Lcom/google/android/gms/internal/ads/l10;->a(Lcom/google/android/gms/internal/ads/zzwk;Lcom/google/android/gms/internal/ads/zzaak;Landroid/view/View;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/view/View;Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Ljava/lang/String;DLcom/google/android/gms/internal/ads/zzaas;Ljava/lang/String;F)Lcom/google/android/gms/internal/ads/l10;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Failed to get native ad assets from app install ad mapper"

    .line 25
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/qd;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static b(Lcom/google/android/gms/internal/ads/zzajr;)Lcom/google/android/gms/internal/ads/l10;
    .locals 18

    .line 26
    :try_start_0
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzajr;->getVideoController()Lcom/google/android/gms/internal/ads/zzwk;

    move-result-object v1

    .line 27
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzajr;->zzqk()Lcom/google/android/gms/internal/ads/zzaak;

    move-result-object v2

    .line 28
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzajr;->zzru()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/l10;->b(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/view/View;

    .line 29
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzajr;->getHeadline()Ljava/lang/String;

    move-result-object v4

    .line 30
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzajr;->getImages()Ljava/util/List;

    move-result-object v5

    .line 31
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzajr;->getBody()Ljava/lang/String;

    move-result-object v6

    .line 32
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzajr;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 33
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzajr;->getCallToAction()Ljava/lang/String;

    move-result-object v8

    .line 34
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzajr;->zzrv()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/l10;->b(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/view/View;

    .line 35
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzajr;->zzql()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/high16 v13, -0x4010000000000000L    # -1.0

    .line 36
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzajr;->zzqm()Lcom/google/android/gms/internal/ads/zzaas;

    move-result-object v15

    .line 37
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzajr;->getAdvertiser()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    .line 38
    invoke-static/range {v1 .. v17}, Lcom/google/android/gms/internal/ads/l10;->a(Lcom/google/android/gms/internal/ads/zzwk;Lcom/google/android/gms/internal/ads/zzaak;Landroid/view/View;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/view/View;Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Ljava/lang/String;DLcom/google/android/gms/internal/ads/zzaas;Ljava/lang/String;F)Lcom/google/android/gms/internal/ads/l10;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Failed to get native ad assets from content ad mapper"

    .line 39
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/qd;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private static b(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;
    .locals 0
    .param p0    # Lcom/google/android/gms/dynamic/IObjectWrapper;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/dynamic/IObjectWrapper;",
            ")TT;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 40
    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final declared-synchronized c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/l10;->s:La/e/g;

    invoke-virtual {v0, p1}, La/e/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final declared-synchronized A()Lcom/google/android/gms/internal/ads/zzaak;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/l10;->c:Lcom/google/android/gms/internal/ads/zzaak;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized B()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/l10;->m:Lcom/google/android/gms/dynamic/IObjectWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized C()Lcom/google/android/gms/internal/ads/zzaas;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/l10;->p:Lcom/google/android/gms/internal/ads/zzaas;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a()V
    .locals 2

    monitor-enter p0

    .line 31
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/l10;->i:Lcom/google/android/gms/internal/ads/fi;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/l10;->i:Lcom/google/android/gms/internal/ads/fi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/fi;->destroy()V

    .line 33
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/l10;->i:Lcom/google/android/gms/internal/ads/fi;

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/l10;->j:Lcom/google/android/gms/internal/ads/fi;

    if-eqz v0, :cond_1

    .line 35
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/l10;->j:Lcom/google/android/gms/internal/ads/fi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/fi;->destroy()V

    .line 36
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/l10;->j:Lcom/google/android/gms/internal/ads/fi;

    .line 37
    :cond_1
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/l10;->k:Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/l10;->r:La/e/g;

    invoke-virtual {v0}, La/e/g;->clear()V

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/l10;->s:La/e/g;

    invoke-virtual {v0}, La/e/g;->clear()V

    .line 40
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/l10;->b:Lcom/google/android/gms/internal/ads/zzwk;

    .line 41
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/l10;->c:Lcom/google/android/gms/internal/ads/zzaak;

    .line 42
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/l10;->d:Landroid/view/View;

    .line 43
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/l10;->e:Ljava/util/List;

    .line 44
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/l10;->h:Landroid/os/Bundle;

    .line 45
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/l10;->l:Landroid/view/View;

    .line 46
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/l10;->m:Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 47
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/l10;->o:Lcom/google/android/gms/internal/ads/zzaas;

    .line 48
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/l10;->p:Lcom/google/android/gms/internal/ads/zzaas;

    .line 49
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/l10;->q:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(D)V
    .locals 0

    monitor-enter p0

    .line 13
    :try_start_0
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/l10;->n:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(I)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/l10;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Landroid/view/View;)V
    .locals 0

    monitor-enter p0

    .line 11
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/l10;->l:Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 0

    monitor-enter p0

    .line 21
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/l10;->k:Lcom/google/android/gms/dynamic/IObjectWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Lcom/google/android/gms/internal/ads/fi;)V
    .locals 0

    monitor-enter p0

    .line 19
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/l10;->i:Lcom/google/android/gms/internal/ads/fi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Lcom/google/android/gms/internal/ads/zzaak;)V
    .locals 0

    monitor-enter p0

    .line 5
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/l10;->c:Lcom/google/android/gms/internal/ads/zzaak;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Lcom/google/android/gms/internal/ads/zzaas;)V
    .locals 0

    monitor-enter p0

    .line 15
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/l10;->o:Lcom/google/android/gms/internal/ads/zzaas;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Lcom/google/android/gms/internal/ads/zzwk;)V
    .locals 0

    monitor-enter p0

    .line 3
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/l10;->b:Lcom/google/android/gms/internal/ads/zzwk;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Lcom/google/android/gms/internal/ads/zzxd;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/internal/ads/zzxd;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    .line 9
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/l10;->g:Lcom/google/android/gms/internal/ads/zzxd;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 17
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/l10;->q:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaae;)V
    .locals 1

    monitor-enter p0

    if-nez p2, :cond_0

    .line 26
    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/l10;->r:La/e/g;

    invoke-virtual {p2, p1}, La/e/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 27
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/l10;->r:La/e/g;

    invoke-virtual {v0, p1, p2}, La/e/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    if-nez p2, :cond_0

    .line 23
    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/l10;->s:La/e/g;

    invoke-virtual {p2, p1}, La/e/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 24
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/l10;->s:La/e/g;

    invoke-virtual {v0, p1, p2}, La/e/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzaae;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 7
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/l10;->e:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "advertiser"

    .line 9
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/l10;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Lcom/google/android/gms/internal/ads/fi;)V
    .locals 0

    monitor-enter p0

    .line 5
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/l10;->j:Lcom/google/android/gms/internal/ads/fi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(Lcom/google/android/gms/internal/ads/zzaas;)V
    .locals 0

    monitor-enter p0

    .line 3
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/l10;->p:Lcom/google/android/gms/internal/ads/zzaas;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    .line 7
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/l10;->u:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzxd;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/l10;->f:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized c()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "body"

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/l10;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "call_to_action"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/l10;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/l10;->q:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f()Landroid/os/Bundle;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/l10;->h:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/l10;->h:Landroid/os/Bundle;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/l10;->h:Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized g()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "headline"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/l10;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/l10;->e:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized i()F
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/l10;->t:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized j()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzxd;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/l10;->f:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized k()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "price"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/l10;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized l()D
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/l10;->n:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized m()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "store"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/l10;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized n()Lcom/google/android/gms/internal/ads/zzwk;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/l10;->b:Lcom/google/android/gms/internal/ads/zzwk;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized o()I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/l10;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized p()Landroid/view/View;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/l10;->d:Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final q()Lcom/google/android/gms/internal/ads/zzaas;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/l10;->e:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/l10;->e:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 3
    instance-of v2, v0, Landroid/os/IBinder;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaar;->zzl(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzaas;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    return-object v1
.end method

.method public final declared-synchronized r()Lcom/google/android/gms/internal/ads/zzxd;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/l10;->g:Lcom/google/android/gms/internal/ads/zzxd;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized s()Landroid/view/View;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/l10;->l:Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized t()Lcom/google/android/gms/internal/ads/fi;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/l10;->i:Lcom/google/android/gms/internal/ads/fi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized u()Lcom/google/android/gms/internal/ads/fi;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/l10;->j:Lcom/google/android/gms/internal/ads/fi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized v()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/l10;->k:Lcom/google/android/gms/dynamic/IObjectWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized w()La/e/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/e/g<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzaae;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/l10;->r:La/e/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized x()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/l10;->u:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized y()La/e/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/e/g<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/l10;->s:La/e/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized z()Lcom/google/android/gms/internal/ads/zzaas;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/l10;->o:Lcom/google/android/gms/internal/ads/zzaas;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
