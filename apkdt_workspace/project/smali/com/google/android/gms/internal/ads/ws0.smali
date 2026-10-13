.class public final Lcom/google/android/gms/internal/ads/ws0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzvs;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final b:Lcom/google/android/gms/internal/ads/zzyc;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final c:Lcom/google/android/gms/internal/ads/zzafj;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final d:Lcom/google/android/gms/internal/ads/zztp;

.field public final e:Lcom/google/android/gms/internal/ads/zztw;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Lcom/google/android/gms/internal/ads/zzaai;

.field public final j:Lcom/google/android/gms/internal/ads/zztx;

.field public final k:I

.field public final l:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

.field public final m:Lcom/google/android/gms/internal/ads/zzvm;

.field public final n:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/ys0;)V
    .locals 25

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/ys0;->a(Lcom/google/android/gms/internal/ads/ys0;)Lcom/google/android/gms/internal/ads/zztw;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/ws0;->e:Lcom/google/android/gms/internal/ads/zztw;

    .line 3
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/ys0;->b(Lcom/google/android/gms/internal/ads/ys0;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/ws0;->f:Ljava/lang/String;

    .line 4
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/ys0;->c(Lcom/google/android/gms/internal/ads/ys0;)Lcom/google/android/gms/internal/ads/zzvs;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/ws0;->a:Lcom/google/android/gms/internal/ads/zzvs;

    .line 5
    new-instance v1, Lcom/google/android/gms/internal/ads/zztp;

    .line 6
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/ys0;->k(Lcom/google/android/gms/internal/ads/ys0;)Lcom/google/android/gms/internal/ads/zztp;

    move-result-object v2

    iget v3, v2, Lcom/google/android/gms/internal/ads/zztp;->e:I

    .line 7
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/ys0;->k(Lcom/google/android/gms/internal/ads/ys0;)Lcom/google/android/gms/internal/ads/zztp;

    move-result-object v2

    iget-wide v4, v2, Lcom/google/android/gms/internal/ads/zztp;->f:J

    .line 8
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/ys0;->k(Lcom/google/android/gms/internal/ads/ys0;)Lcom/google/android/gms/internal/ads/zztp;

    move-result-object v2

    iget-object v6, v2, Lcom/google/android/gms/internal/ads/zztp;->g:Landroid/os/Bundle;

    .line 9
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/ys0;->k(Lcom/google/android/gms/internal/ads/ys0;)Lcom/google/android/gms/internal/ads/zztp;

    move-result-object v2

    iget v7, v2, Lcom/google/android/gms/internal/ads/zztp;->h:I

    .line 10
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/ys0;->k(Lcom/google/android/gms/internal/ads/ys0;)Lcom/google/android/gms/internal/ads/zztp;

    move-result-object v2

    iget-object v8, v2, Lcom/google/android/gms/internal/ads/zztp;->i:Ljava/util/List;

    .line 11
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/ys0;->k(Lcom/google/android/gms/internal/ads/ys0;)Lcom/google/android/gms/internal/ads/zztp;

    move-result-object v2

    iget-boolean v9, v2, Lcom/google/android/gms/internal/ads/zztp;->j:Z

    .line 12
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/ys0;->k(Lcom/google/android/gms/internal/ads/ys0;)Lcom/google/android/gms/internal/ads/zztp;

    move-result-object v2

    iget v10, v2, Lcom/google/android/gms/internal/ads/zztp;->k:I

    .line 13
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/ys0;->k(Lcom/google/android/gms/internal/ads/ys0;)Lcom/google/android/gms/internal/ads/zztp;

    move-result-object v2

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zztp;->l:Z

    if-nez v2, :cond_1

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/ys0;->l(Lcom/google/android/gms/internal/ads/ys0;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/4 v11, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    const/4 v11, 0x1

    .line 14
    :goto_1
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/ys0;->k(Lcom/google/android/gms/internal/ads/ys0;)Lcom/google/android/gms/internal/ads/zztp;

    move-result-object v2

    iget-object v12, v2, Lcom/google/android/gms/internal/ads/zztp;->m:Ljava/lang/String;

    .line 15
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/ys0;->k(Lcom/google/android/gms/internal/ads/ys0;)Lcom/google/android/gms/internal/ads/zztp;

    move-result-object v2

    iget-object v13, v2, Lcom/google/android/gms/internal/ads/zztp;->n:Lcom/google/android/gms/internal/ads/zzxy;

    .line 16
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/ys0;->k(Lcom/google/android/gms/internal/ads/ys0;)Lcom/google/android/gms/internal/ads/zztp;

    move-result-object v2

    iget-object v14, v2, Lcom/google/android/gms/internal/ads/zztp;->o:Landroid/location/Location;

    .line 17
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/ys0;->k(Lcom/google/android/gms/internal/ads/ys0;)Lcom/google/android/gms/internal/ads/zztp;

    move-result-object v2

    iget-object v15, v2, Lcom/google/android/gms/internal/ads/zztp;->p:Ljava/lang/String;

    .line 18
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/ys0;->k(Lcom/google/android/gms/internal/ads/ys0;)Lcom/google/android/gms/internal/ads/zztp;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zztp;->q:Landroid/os/Bundle;

    move-object/from16 v16, v2

    .line 19
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/ys0;->k(Lcom/google/android/gms/internal/ads/ys0;)Lcom/google/android/gms/internal/ads/zztp;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zztp;->r:Landroid/os/Bundle;

    move-object/from16 v17, v2

    .line 20
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/ys0;->k(Lcom/google/android/gms/internal/ads/ys0;)Lcom/google/android/gms/internal/ads/zztp;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zztp;->s:Ljava/util/List;

    move-object/from16 v18, v2

    .line 21
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/ys0;->k(Lcom/google/android/gms/internal/ads/ys0;)Lcom/google/android/gms/internal/ads/zztp;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zztp;->t:Ljava/lang/String;

    move-object/from16 v19, v2

    .line 22
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/ys0;->k(Lcom/google/android/gms/internal/ads/ys0;)Lcom/google/android/gms/internal/ads/zztp;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zztp;->u:Ljava/lang/String;

    move-object/from16 v20, v2

    .line 23
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/ys0;->k(Lcom/google/android/gms/internal/ads/ys0;)Lcom/google/android/gms/internal/ads/zztp;

    move-result-object v2

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zztp;->v:Z

    move/from16 v21, v2

    .line 24
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/ys0;->k(Lcom/google/android/gms/internal/ads/ys0;)Lcom/google/android/gms/internal/ads/zztp;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zztp;->w:Lcom/google/android/gms/internal/ads/zztj;

    move-object/from16 v22, v2

    .line 25
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/ys0;->k(Lcom/google/android/gms/internal/ads/ys0;)Lcom/google/android/gms/internal/ads/zztp;

    move-result-object v2

    iget v2, v2, Lcom/google/android/gms/internal/ads/zztp;->x:I

    move/from16 v23, v2

    .line 26
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/ys0;->k(Lcom/google/android/gms/internal/ads/ys0;)Lcom/google/android/gms/internal/ads/zztp;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zztp;->y:Ljava/lang/String;

    move-object/from16 v24, v2

    move-object v2, v1

    invoke-direct/range {v2 .. v24}, Lcom/google/android/gms/internal/ads/zztp;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/internal/ads/zzxy;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/ads/zztj;ILjava/lang/String;)V

    .line 27
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/ws0;->d:Lcom/google/android/gms/internal/ads/zztp;

    .line 28
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/ys0;->m(Lcom/google/android/gms/internal/ads/ys0;)Lcom/google/android/gms/internal/ads/zzyc;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 29
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/ys0;->m(Lcom/google/android/gms/internal/ads/ys0;)Lcom/google/android/gms/internal/ads/zzyc;

    move-result-object v1

    goto :goto_2

    .line 30
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/ys0;->n(Lcom/google/android/gms/internal/ads/ys0;)Lcom/google/android/gms/internal/ads/zzaai;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 31
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/ys0;->n(Lcom/google/android/gms/internal/ads/ys0;)Lcom/google/android/gms/internal/ads/zzaai;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaai;->j:Lcom/google/android/gms/internal/ads/zzyc;

    goto :goto_2

    :cond_3
    move-object v1, v2

    .line 32
    :goto_2
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/ws0;->b:Lcom/google/android/gms/internal/ads/zzyc;

    .line 33
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/ys0;->d(Lcom/google/android/gms/internal/ads/ys0;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/ws0;->g:Ljava/util/ArrayList;

    .line 34
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/ys0;->e(Lcom/google/android/gms/internal/ads/ys0;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/ws0;->h:Ljava/util/ArrayList;

    .line 35
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/ys0;->d(Lcom/google/android/gms/internal/ads/ys0;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_3

    .line 36
    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/ys0;->n(Lcom/google/android/gms/internal/ads/ys0;)Lcom/google/android/gms/internal/ads/zzaai;

    move-result-object v1

    if-nez v1, :cond_5

    .line 37
    new-instance v2, Lcom/google/android/gms/internal/ads/zzaai;

    new-instance v1, Lcom/google/android/gms/ads/formats/NativeAdOptions$a;

    invoke-direct {v1}, Lcom/google/android/gms/ads/formats/NativeAdOptions$a;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/formats/NativeAdOptions$a;->a()Lcom/google/android/gms/ads/formats/NativeAdOptions;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzaai;-><init>(Lcom/google/android/gms/ads/formats/NativeAdOptions;)V

    goto :goto_3

    .line 38
    :cond_5
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/ys0;->n(Lcom/google/android/gms/internal/ads/ys0;)Lcom/google/android/gms/internal/ads/zzaai;

    move-result-object v2

    .line 39
    :goto_3
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/ws0;->i:Lcom/google/android/gms/internal/ads/zzaai;

    .line 40
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/ys0;->f(Lcom/google/android/gms/internal/ads/ys0;)Lcom/google/android/gms/internal/ads/zztx;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/ws0;->j:Lcom/google/android/gms/internal/ads/zztx;

    .line 41
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/ys0;->g(Lcom/google/android/gms/internal/ads/ys0;)I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/internal/ads/ws0;->k:I

    .line 42
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/ys0;->h(Lcom/google/android/gms/internal/ads/ys0;)Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/ws0;->l:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    .line 43
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/ys0;->i(Lcom/google/android/gms/internal/ads/ys0;)Lcom/google/android/gms/internal/ads/zzvm;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/ws0;->m:Lcom/google/android/gms/internal/ads/zzvm;

    .line 44
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/ys0;->j(Lcom/google/android/gms/internal/ads/ys0;)Lcom/google/android/gms/internal/ads/zzafj;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/ws0;->c:Lcom/google/android/gms/internal/ads/zzafj;

    move-object/from16 v1, p1

    .line 45
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/ys0;->o:Ljava/util/Set;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/ws0;->n:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/ys0;Lcom/google/android/gms/internal/ads/zs0;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/ws0;-><init>(Lcom/google/android/gms/internal/ads/ys0;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/zzack;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ws0;->l:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->l()Lcom/google/android/gms/internal/ads/zzack;

    move-result-object v0

    return-object v0
.end method
