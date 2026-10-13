.class public final Lcom/google/android/gms/internal/ads/ys0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/zztp;

.field private b:Lcom/google/android/gms/internal/ads/zztw;

.field private c:Lcom/google/android/gms/internal/ads/zzvs;

.field private d:Ljava/lang/String;

.field private e:Lcom/google/android/gms/internal/ads/zzyc;

.field private f:Z

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/google/android/gms/internal/ads/zzaai;

.field private j:Lcom/google/android/gms/internal/ads/zztx;

.field private k:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

.field private l:Lcom/google/android/gms/internal/ads/zzvm;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private m:I

.field private n:Lcom/google/android/gms/internal/ads/zzafj;

.field public final o:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/ys0;->m:I

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ys0;->o:Ljava/util/Set;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/ys0;)Lcom/google/android/gms/internal/ads/zztw;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ys0;->b:Lcom/google/android/gms/internal/ads/zztw;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/ys0;)Ljava/lang/String;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ys0;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ads/ys0;)Lcom/google/android/gms/internal/ads/zzvs;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ys0;->c:Lcom/google/android/gms/internal/ads/zzvs;

    return-object p0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/ads/ys0;)Ljava/util/ArrayList;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ys0;->g:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic e(Lcom/google/android/gms/internal/ads/ys0;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ys0;->h:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic f(Lcom/google/android/gms/internal/ads/ys0;)Lcom/google/android/gms/internal/ads/zztx;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ys0;->j:Lcom/google/android/gms/internal/ads/zztx;

    return-object p0
.end method

.method static synthetic g(Lcom/google/android/gms/internal/ads/ys0;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/gms/internal/ads/ys0;->m:I

    return p0
.end method

.method static synthetic h(Lcom/google/android/gms/internal/ads/ys0;)Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ys0;->k:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    return-object p0
.end method

.method static synthetic i(Lcom/google/android/gms/internal/ads/ys0;)Lcom/google/android/gms/internal/ads/zzvm;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ys0;->l:Lcom/google/android/gms/internal/ads/zzvm;

    return-object p0
.end method

.method static synthetic j(Lcom/google/android/gms/internal/ads/ys0;)Lcom/google/android/gms/internal/ads/zzafj;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ys0;->n:Lcom/google/android/gms/internal/ads/zzafj;

    return-object p0
.end method

.method static synthetic k(Lcom/google/android/gms/internal/ads/ys0;)Lcom/google/android/gms/internal/ads/zztp;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ys0;->a:Lcom/google/android/gms/internal/ads/zztp;

    return-object p0
.end method

.method static synthetic l(Lcom/google/android/gms/internal/ads/ys0;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/ys0;->f:Z

    return p0
.end method

.method static synthetic m(Lcom/google/android/gms/internal/ads/ys0;)Lcom/google/android/gms/internal/ads/zzyc;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ys0;->e:Lcom/google/android/gms/internal/ads/zzyc;

    return-object p0
.end method

.method static synthetic n(Lcom/google/android/gms/internal/ads/ys0;)Lcom/google/android/gms/internal/ads/zzaai;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ys0;->i:Lcom/google/android/gms/internal/ads/zzaai;

    return-object p0
.end method


# virtual methods
.method public final a(I)Lcom/google/android/gms/internal/ads/ys0;
    .locals 0

    .line 8
    iput p1, p0, Lcom/google/android/gms/internal/ads/ys0;->m:I

    return-object p0
.end method

.method public final a(Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;)Lcom/google/android/gms/internal/ads/ys0;
    .locals 1

    .line 14
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ys0;->k:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    if-eqz p1, :cond_0

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/ys0;->f:Z

    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->k()Lcom/google/android/gms/internal/ads/zzvm;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ys0;->l:Lcom/google/android/gms/internal/ads/zzvm;

    :cond_0
    return-object p0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zzaai;)Lcom/google/android/gms/internal/ads/ys0;
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ys0;->i:Lcom/google/android/gms/internal/ads/zzaai;

    return-object p0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zzafj;)Lcom/google/android/gms/internal/ads/ys0;
    .locals 2

    .line 12
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ys0;->n:Lcom/google/android/gms/internal/ads/zzafj;

    .line 13
    new-instance p1, Lcom/google/android/gms/internal/ads/zzyc;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1, v0}, Lcom/google/android/gms/internal/ads/zzyc;-><init>(ZZZ)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ys0;->e:Lcom/google/android/gms/internal/ads/zzyc;

    return-object p0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zztp;)Lcom/google/android/gms/internal/ads/ys0;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ys0;->a:Lcom/google/android/gms/internal/ads/zztp;

    return-object p0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zztw;)Lcom/google/android/gms/internal/ads/ys0;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ys0;->b:Lcom/google/android/gms/internal/ads/zztw;

    return-object p0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zztx;)Lcom/google/android/gms/internal/ads/ys0;
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ys0;->j:Lcom/google/android/gms/internal/ads/zztx;

    return-object p0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zzvs;)Lcom/google/android/gms/internal/ads/ys0;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ys0;->c:Lcom/google/android/gms/internal/ads/zzvs;

    return-object p0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zzyc;)Lcom/google/android/gms/internal/ads/ys0;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ys0;->e:Lcom/google/android/gms/internal/ads/zzyc;

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ys0;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ys0;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final a(Ljava/util/ArrayList;)Lcom/google/android/gms/internal/ads/ys0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/ys0;"
        }
    .end annotation

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ys0;->g:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final a(Z)Lcom/google/android/gms/internal/ads/ys0;
    .locals 0

    .line 7
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/ys0;->f:Z

    return-object p0
.end method

.method public final a()Lcom/google/android/gms/internal/ads/zztp;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ys0;->a:Lcom/google/android/gms/internal/ads/zztp;

    return-object v0
.end method

.method public final b(Ljava/util/ArrayList;)Lcom/google/android/gms/internal/ads/ys0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/ys0;"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ys0;->h:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ys0;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/internal/ads/ws0;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ys0;->d:Ljava/lang/String;

    const-string v1, "ad unit must not be null"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ys0;->b:Lcom/google/android/gms/internal/ads/zztw;

    const-string v1, "ad size must not be null"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ys0;->a:Lcom/google/android/gms/internal/ads/zztp;

    const-string v1, "ad request must not be null"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/ws0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/ws0;-><init>(Lcom/google/android/gms/internal/ads/ys0;Lcom/google/android/gms/internal/ads/zs0;)V

    return-object v0
.end method

.method public final d()Lcom/google/android/gms/internal/ads/zztw;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ys0;->b:Lcom/google/android/gms/internal/ads/zztw;

    return-object v0
.end method
