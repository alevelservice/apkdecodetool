.class public final Lcom/google/android/gms/internal/ads/ru1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@18.1.0"


# instance fields
.field private final a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/os/Bundle;

.field private final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/gms/ads/mediation/u;",
            ">;",
            "Lcom/google/android/gms/ads/mediation/u;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/os/Bundle;

.field private final f:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Date;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Landroid/location/Location;

.field private k:Z

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:I

.field private o:Z

.field private p:I

.field private q:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ru1;->a:Ljava/util/HashSet;

    .line 3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ru1;->b:Landroid/os/Bundle;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ru1;->c:Ljava/util/HashMap;

    .line 5
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ru1;->d:Ljava/util/HashSet;

    .line 6
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ru1;->e:Landroid/os/Bundle;

    .line 7
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ru1;->f:Ljava/util/HashSet;

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lcom/google/android/gms/internal/ads/ru1;->i:I

    const/4 v1, 0x0

    .line 9
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/ru1;->k:Z

    .line 10
    iput v0, p0, Lcom/google/android/gms/internal/ads/ru1;->n:I

    .line 11
    iput v0, p0, Lcom/google/android/gms/internal/ads/ru1;->p:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/ru1;)Ljava/util/Date;
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ru1;->g:Ljava/util/Date;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/ru1;)Ljava/lang/String;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ru1;->h:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ads/ru1;)I
    .locals 0

    .line 2
    iget p0, p0, Lcom/google/android/gms/internal/ads/ru1;->i:I

    return p0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/ads/ru1;)Ljava/util/HashSet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ru1;->a:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic e(Lcom/google/android/gms/internal/ads/ru1;)Landroid/location/Location;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ru1;->j:Landroid/location/Location;

    return-object p0
.end method

.method static synthetic f(Lcom/google/android/gms/internal/ads/ru1;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/ru1;->k:Z

    return p0
.end method

.method static synthetic g(Lcom/google/android/gms/internal/ads/ru1;)Landroid/os/Bundle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ru1;->b:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic h(Lcom/google/android/gms/internal/ads/ru1;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ru1;->c:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic i(Lcom/google/android/gms/internal/ads/ru1;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ru1;->l:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic j(Lcom/google/android/gms/internal/ads/ru1;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ru1;->m:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic k(Lcom/google/android/gms/internal/ads/ru1;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/gms/internal/ads/ru1;->n:I

    return p0
.end method

.method static synthetic l(Lcom/google/android/gms/internal/ads/ru1;)Ljava/util/HashSet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ru1;->d:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic m(Lcom/google/android/gms/internal/ads/ru1;)Landroid/os/Bundle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ru1;->e:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic n(Lcom/google/android/gms/internal/ads/ru1;)Ljava/util/HashSet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ru1;->f:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic o(Lcom/google/android/gms/internal/ads/ru1;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/ru1;->o:Z

    return p0
.end method

.method static synthetic p(Lcom/google/android/gms/internal/ads/ru1;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/gms/internal/ads/ru1;->p:I

    return p0
.end method

.method static synthetic q(Lcom/google/android/gms/internal/ads/ru1;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ru1;->q:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final a(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    iput p1, p0, Lcom/google/android/gms/internal/ads/ru1;->i:I

    return-void
.end method

.method public final a(Landroid/location/Location;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ru1;->j:Landroid/location/Location;

    return-void
.end method

.method public final a(Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/gms/ads/mediation/i;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ru1;->b:Landroid/os/Bundle;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ru1;->a:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Ljava/util/Date;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ru1;->g:Ljava/util/Date;

    return-void
.end method

.method public final a(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6
    iput p1, p0, Lcom/google/android/gms/internal/ads/ru1;->n:I

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ru1;->d:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/ru1;->o:Z

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ru1;->d:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method
